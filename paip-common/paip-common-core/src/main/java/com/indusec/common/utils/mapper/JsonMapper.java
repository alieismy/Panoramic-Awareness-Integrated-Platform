package com.indusec.common.utils.mapper;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.indusec.common.constant.CommonConstant;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.lang.Nullable;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/**
 * 简单封装Jackson，实现JSON String<->Java Object转换的Mapper.
 * 可以直接使用公共示例JsonMapper.INSTANCE, 也可以使用不同的builder函数创建实例，封装不同的输出风格.
 * 不要使用GSON, 在对象稍大时非常缓慢.
 * 注意: 需要参考本模块的POM文件，显式引用jackson.
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 1.0
 * @since: 2017-04
 */
@Slf4j
public class JsonMapper {
    public static final JsonMapper INSTANCE = new JsonMapper();
    private ObjectMapper mapper;

    // Include.ALWAYS 默认
    // Include.NON_NULL 属性为NULL 不序列化, 排除空值字段
    // new: NON_ABSENT/CUSTOM/USE_DEFAULTS
    // Include.NON_EMPTY 属性为 空（""） 或者为 NULL 都不序列化
    // Include.NON_DEFAULT 属性为默认值不序列化
    // Include.CUSTOM 属性为默认值不序列化
    // Include.USE_DEFAULTS 属性为默认值不序列化
    private JsonMapper() {
        this(null);
    }

    private JsonMapper(Include include) {
        mapper = new ObjectMapper();
        // 设置输出时包含属性的风格
        if (include != null) {
            mapper.setSerializationInclusion(include);
        }
        // 允许不带引号的字段名称
        mapper.configure(JsonReadFeature.ALLOW_UNQUOTED_FIELD_NAMES.mappedFeature(), true);
        // 允许单引号
        mapper.configure(JsonReadFeature.ALLOW_SINGLE_QUOTES.mappedFeature(), true);
        // allow int startWith 0
        mapper.configure(JsonReadFeature.ALLOW_LEADING_ZEROS_FOR_NUMBERS.mappedFeature(), true);
        // 允许字符串存在转义字符：\r \n \t
        mapper.configure(JsonReadFeature.ALLOW_UNESCAPED_CONTROL_CHARS.mappedFeature(), true);
        // 排除空值字段
        mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        // 使用驼峰式
        // mapper.setPropertyNamingStrategy(PropertyNamingStrategy.LOWER_CAMEL_CASE);
        // 使用Bean名称
        mapper.isEnabled(MapperFeature.USE_STD_BEAN_NAMING);
        //  ---序列化 ---
        // 忽略空Bean转json的错误
        mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
        //  ---反序列化 ---
        // 忽略在JSON字符串中存在，但是在java对象中不存在对应属性的情况
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        // 接受单个字符的值反序列化为数组
        mapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
        // 反序列化时，允许有未知字段
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        // 所有日期格式都统一为固定格式
        mapper.setDateFormat(new SimpleDateFormat(CommonConstant.DATETIME_FORMAT));
        mapper.setTimeZone(TimeZone.getTimeZone(CommonConstant.TIME_ZONE_GMT8));

    }

    /**
     * 创建只输出非Null的属性到Json字符串的Mapper.
     */
    public static JsonMapper nonNullMapper() {
        return new JsonMapper(Include.NON_NULL);
    }

    /**
     * 创建只输出非Null且非Empty(如List.isEmpty)的属性到Json字符串的Mapper.
     * <p>
     * 注意，要小心使用, 特别留意empty的情况.
     */
    public static JsonMapper nonEmptyMapper() {
        return new JsonMapper(Include.NON_EMPTY);
    }

    /**
     * 默认的全部输出的Mapper, 区别于INSTANCE，可以做进一步的配置
     */
    public static JsonMapper defaultMapper() {
        return new JsonMapper();
    }

    /**
     * 取出Mapper做进一步的设置或使用其他序列化API.
     */
    public ObjectMapper getMapper() {
        return mapper;
    }

    /**
     * 設定是否使用Enum的toString函數來讀寫Enum, 為False時時使用Enum的name()函數來讀寫Enum, 默認為False. 注意本函數一定要在Mapper創建後, 所有的讀寫動作之前調用.
     */
    public void enableEnumUseToString() {
        mapper.enable(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
        mapper.enable(DeserializationFeature.READ_ENUMS_USING_TO_STRING);
    }

    /**
     * 将对象序列化为json字符串
     * Object可以是POJO，也可以是Collection或数组。 如果对象为Null, 返回"null". 如果集合为空集合, 返回"[]".
     *
     * @param object 要转换的对象
     */
    public String toJSON(Object object) {
        return toJSON(object, false);
    }

    /**
     * 将对象序列化为带格式json字符串
     *
     * @param object 要转换的对象
     * @param isFormat 是否格式化json
     */
    public String toJSON(Object object, boolean isFormat) {
        try {
            // if (object == null) {
            //    return "";
            //}
            if (object instanceof Number) {
                return object.toString();
            }
            if (object instanceof String) {
                return (String) object;
            }
            if (isFormat) {
                return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(object);
            }
            return mapper.writeValueAsString(object);
        } catch (JsonProcessingException e) {
            log.warn("write to JSON string error:" + object, e);
            return null;
        }
    }

    /**
     * 通过json序列化，改变对象的type，并将属性的值复制到新对象。
     *
     * @param t 源对象
     * @param clazz 新对象的type名称。
     * @param <T>
     * @param <R>
     * @return
     */
    public <T, R> R parseObject(T t, Class<R> clazz) {
        return parseObject(toJSON(t), clazz);
    }

    /**
     * 将json字符串反序列化为对象：POJO或简单Collection<String>.
     * <p>
     * 如果JSON字符串为Null或"null"字符串, 返回Null. 如果JSON字符串为"[]", 返回空集合.
     * <p>
     * 如需反序列化复杂Collection如List<MyBean>, 请使用parseObject(String, JavaType)
     *
     * @see #parseObject(String, JavaType)
     */
    public <T> T parseObject(@Nullable String json, Class<T> clazz) {
        if (StringUtils.isBlank(json) || clazz == null) {
            return null;
        }

        try {
            return mapper.readValue(json, clazz);
        } catch (IOException e) {
            log.warn("parse json string error:" + json, e);
            throw new RuntimeException(e);
        }
    }

    /**
     * 将json字符串反序列化为复杂Collection
     * 如List<Bean>, contructCollectionType()或contructMapType()构造类型, 然后调用本函数.
     *
     * @see #buildCollectionType(Class, Class...)
     */
    public <T> T parseObject(@Nullable String json, JavaType javaType) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }

        try {
            return (T) mapper.readValue(json, javaType);
        } catch (IOException e) {
            log.warn("【JSON 转换：字符串 --> 对象】，{}异常堆栈：{}", json, e);
            return null;
        }
    }

    /**
     * 构造Collection类型.
     */
    public JavaType buildCollectionType(Class<? extends Collection> collectionClass, Class<?> elementClass) {
        return mapper.getTypeFactory().constructCollectionType(collectionClass, elementClass);
    }

    /**
     * 构造Map类型.
     */
    public JavaType buildMapType(Class<? extends Map> mapClass, Class<?> keyClass, Class<?> valueClass) {
        return mapper.getTypeFactory().constructMapType(mapClass, keyClass, valueClass);
    }

    /**
     * 将JSON字符串反序列化为对象
     *
     * @param json 源 json 字符串
     * @param typeReference 转化后的类型
     * @param <T> 类型
     * @return 返回转化后的对象
     */
    public <T> T parseObject(@Nullable String json, TypeReference<T> typeReference) {
        if (StringUtils.isBlank(json) || typeReference == null) {
            return null;
        }
        try {
            return (T) (typeReference.getType().equals(String.class) ? json : mapper.readValue(json, typeReference));
        } catch (Exception e) {
            log.error("【JSON 转换：字符串 --> 对象】，异常堆栈：{}", e);
            throw new RuntimeException(e);
        }
    }

    /**
     * 将json字符串反序列化为JsonNode对象
     *
     * @param json json字符串
     */
    public JsonNode parse(String json) {
        if (StringUtils.isBlank(json)) {
            return null;
        }
        try {
            return mapper.readTree(json);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将Json对象反序列化为Map对象
     *
     * @param object 要转换的对象
     */
    public <K, V> Map<K, V> parseMap(Object object) {
        if (object == null) {
            return null;
        }
        if (object instanceof String) {
            return parseObject((String) object, Map.class);
        }
        return mapper.convertValue(object, Map.class);
    }

    /**
     * Json字符串反序列化为List对象
     *
     * @param json json字符串
     */
    public <T> List<T> parseList(String json) {
        if (StringUtils.isBlank(json)) {
            return null;
        }
        try {
            return mapper.readValue(json, List.class);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Json字符串反序列化为List对象，并指定元素类型
     *
     * @param json json字符串
     * @param clazz list的元素类型
     */
    public <T> List<T> parseList(String json, Class<T> clazz) {
        if (StringUtils.isBlank(json)) {
            return null;
        }
        try {
            JavaType javaType = mapper.getTypeFactory().constructParametricType(List.class, clazz);
            return mapper.readValue(json, javaType);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将json byte 数组反序列化成对象
     *
     * @param bytes
     * @param valueType
     * @param <T> T 泛型标记
     * @return
     */
    public <T> T parseBytes(byte[] bytes, Class<T> valueType) {
        try {
            return mapper.readValue(bytes, valueType);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将对象序列化为JSONP
     */
    public String toJsonP(String functionName, Object object) {
        return toJSON(new JSONPObject(functionName, object));
    }

    /**
     * 当JSON里只含有Bean的部分属性時，更新一個已存在Bean，只覆盖該部分的属性.
     */
    public void update(String jsonString, Object object) {
        try {
            mapper.readerForUpdating(object).readValue(jsonString);
        } catch (JsonProcessingException e) {
            log.warn("update json string:" + jsonString + " to object:" + object + " error.", e);
        } catch (IOException e) {
            log.warn("update json string:" + jsonString + " to object:" + object + " error.", e);
        }
    }

}
