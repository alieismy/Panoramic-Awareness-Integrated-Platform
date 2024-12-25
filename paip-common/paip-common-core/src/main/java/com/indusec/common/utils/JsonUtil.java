package com.indusec.common.utils;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.indusec.common.constant.CommonConstant;
import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/**
 * 基于 Jackson 的 JSON 工具类
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2022-04-12 18:29
 */
public class JsonUtil {
    private final static ObjectMapper MAPPER = new ObjectMapper();

    static {
        // 忽略在json字符串中存在，但是在java对象中不存在对应属性的情况
        MAPPER.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        // 忽略空Bean转json的错误
        MAPPER.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
        // 允许不带引号的字段名称
        MAPPER.configure(JsonReadFeature.ALLOW_UNQUOTED_FIELD_NAMES.mappedFeature(), true);
        // 允许单引号
        MAPPER.configure(JsonReadFeature.ALLOW_SINGLE_QUOTES.mappedFeature(), true);
        // allow int startWith 0
        MAPPER.configure(JsonReadFeature.ALLOW_LEADING_ZEROS_FOR_NUMBERS.mappedFeature(), true);
        // 允许字符串存在转义字符：\r \n \t
        MAPPER.configure(JsonReadFeature.ALLOW_UNESCAPED_CONTROL_CHARS.mappedFeature(), true);
        // 排除空值字段
        MAPPER.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        // 使用驼峰式
        MAPPER.setPropertyNamingStrategy(PropertyNamingStrategies.LOWER_CAMEL_CASE);
        // 使用Bean名称
        MAPPER.isEnabled(MapperFeature.USE_STD_BEAN_NAMING);
        //  ---序列化 ---
        // 忽略空Bean转json的错误
        MAPPER.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
        //  ---反序列化 ---
        // 忽略在JSON字符串中存在，但是在java对象中不存在对应属性的情况
        MAPPER.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        // 接受单个字符的值反序列化为数组
        MAPPER.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
        // 反序列化时，允许有未知字段
        MAPPER.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        // 所有日期格式都统一为固定格式
        MAPPER.setDateFormat(new SimpleDateFormat(CommonConstant.DATETIME_FORMAT));
        MAPPER.setTimeZone(TimeZone.getTimeZone(CommonConstant.TIME_ZONE_GMT8));
    }

    /**
     * 設定是否使用Enum的toString函數來讀寫Enum, 為False時時使用Enum的name()函數來讀寫Enum, 默認為False. 注意本函數一定要在Mapper創建後, 所有的讀寫動作之前調用.
     */
    public void enableEnumUseToString() {
        MAPPER.enable(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
        MAPPER.enable(DeserializationFeature.READ_ENUMS_USING_TO_STRING);
    }

    /**
     * 对象转换为JSON字符串
     *
     * @param object 要转换的对象
     */
    public static String toJSON(Object object) {
        return toJSON(object, false);
    }

    /**
     * 对象转换为JSON字符串
     *
     * @param object 要转换的对象
     * @param format 是否格式化json
     */
    public static String toJSON(Object object, boolean format) {
        try {
            if (object == null) {
                return "";
            }
            if (object instanceof Number) {
                return object.toString();
            }
            if (object instanceof String) {
                return (String) object;
            }
            if (format) {
                return MAPPER.writerWithDefaultPrettyPrinter().writeValueAsString(object);
            }
            return MAPPER.writeValueAsString(object);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将JSON字符串反序列化为指定对象
     *
     * @param json json字符串
     * @param clazz 目标对象
     */
    public static <T> T toObject(String json, Class<T> clazz) {
        if (StringUtils.isBlank(json) || clazz == null) {
            return null;
        }
        try {
            return MAPPER.readValue(json, clazz);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将JsonNode反序列化为对象：字符串转换为指定对象
     *
     * @param json json字符串
     * @param clazz 目标对象
     */
    public static <T> T toObject(JsonNode json, Class<T> clazz) {
        if (json == null || clazz == null) {
            return null;
        }
        return MAPPER.convertValue(json, clazz);
    }

    /**
     * 将JSON字符串反序列化转换为指定对象，并增加泛型转义
     * 例如：List<Integer> test = toObject(jsonStr, List.class, Integer.class);
     *
     * @param json json字符串
     * @param parametrized 目标对象
     * @param parameterClasses 泛型对象
     */
    public static <T> T toObject(String json, Class<?> parametrized, Class<?>... parameterClasses) {
        if (StringUtils.isBlank(json) || parametrized == null) {
            return null;
        }
        try {
            JavaType javaType = MAPPER.getTypeFactory().constructParametricType(parametrized, parameterClasses);
            return MAPPER.readValue(json, javaType);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将JSON字符串反序列化为对象
     *
     * @param json json字符串
     * @param typeReference 目标对象类型
     */
    public static <T> T toObject(String json, TypeReference<T> typeReference) {
        if (StringUtils.isBlank(json) || typeReference == null) {
            return null;
        }
        try {
            return MAPPER.readValue(json, typeReference);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将JSON字符串反序列化转换为JsonNode对象
     *
     * @param json json字符串
     */
    public static JsonNode parse(String json) {
        if (StringUtils.isBlank(json)) {
            return null;
        }
        try {
            return MAPPER.readTree(json);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将Json对象反序列化为Map对象
     *
     * @param object 要转换的对象
     */
    public static <K, V> Map<K, V> toMap(Object object) {
        if (object == null) {
            return null;
        }
        if (object instanceof String) {
            return toObject((String) object, Map.class);
        }

        return MAPPER.convertValue(object, Map.class);
    }

    /**
     * 将JSON字符串反序列化为List对象
     *
     * @param json json字符串
     */
    public static <T> List<T> toList(String json) {
        if (StringUtils.isBlank(json)) {
            return null;
        }
        try {
            return MAPPER.readValue(json, List.class);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将JSON字符串反序列化为List对象，并指定元素类型
     *
     * @param json json字符串
     * @param cls list的元素类型
     */
    public static <T> List<T> toList(String json, Class<T> cls) {
        if (StringUtils.isBlank(json)) {
            return null;
        }
        try {
            JavaType javaType = MAPPER.getTypeFactory().constructParametricType(List.class, cls);
            return MAPPER.readValue(json, javaType);
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
    public static <T> T toBytes(byte[] bytes, Class<T> valueType) {
        try {
            return MAPPER.readValue(bytes, valueType);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将对象序列化为JSONP
     */
    public static String toJsonP(String functionName, Object object) {
        return toJSON(new JSONPObject(functionName, object));
    }

    /**
     * 当JSON里只含有Bean的部分属性時，更新一個已存在Bean，只覆盖該部分的属性.
     */
    public void update(String jsonString, Object object) {
        try {
            MAPPER.readerForUpdating(object).readValue(jsonString);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        } catch (IOException e) { // catch 子句无法访问
            throw new RuntimeException(e);
        }
    }

}