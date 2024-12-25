package com.indusec.common.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * <p> RESTful API返回结果 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2014/10/29 16:17
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RestResult<T> implements Serializable {
    private static final long serialVersionUID = 2802806092392967635L;

    /**
     * 状态码
     */
    private Integer code;
    /**
     * 状态信息,错误描述.
     */
    private String message;
    /**
     * 数据.
     */
    private T data;

    /**
     * 返回成功
     *
     * @param <T>
     * @return
     */
    public static <T> RestResult<T> success() {
        RestResult<T> result = new RestResult<>();
        result.setCode(ResultCodeEnum.SUCCESS.getCode());
        result.setMessage(ResultCodeEnum.SUCCESS.getMessage());

        return result;
    }

    /**
     * 返回成功对象
     *
     * @param data
     * @param <T>
     * @return
     */
    public static <T> RestResult<T> success(T data) {
        RestResult<T> result = new RestResult<>();
        result.setCode(ResultCodeEnum.SUCCESS.getCode());
        result.setMessage(ResultCodeEnum.SUCCESS.getMessage());
        result.setData(data);

        return result;
    }

    /**
     * 返回失败
     *
     * @param resultCodeEnum
     * @param <T>
     * @return
     */
    public static <T> RestResult<T> failure(ResultCodeEnum resultCodeEnum) {
        RestResult<T> result = new RestResult<>();
        result.setCode(resultCodeEnum.getCode());
        result.setMessage(resultCodeEnum.getMessage());

        return result;
    }

    /**
     * 返回失败对象
     *
     * @param resultCodeEnum
     * @param data
     * @param <T>
     * @return
     */
    public static <T> RestResult<T> failure(ResultCodeEnum resultCodeEnum, T data) {
        RestResult<T> result = new RestResult<>();
        result.setCode(resultCodeEnum.getCode());
        result.setMessage(resultCodeEnum.getMessage());
        result.setData(data);

        return result;
    }

    public static <T> RestResult<T> of(T data, Integer code, String message) {
        return new RestResult<>(code, message, data);
    }

    public static <T> RestResult<T> succeed(String message) {
        return of(null, CodeEnum.SUCCESS.getCode(), message);
    }

    public static <T> RestResult<T> succeed(T data, String message) {
        return of(data, CodeEnum.SUCCESS.getCode(), message);
    }

    public static <T> RestResult<T> succeed(T data) {
        return of(data, CodeEnum.SUCCESS.getCode(), "");
    }

    public static <T> RestResult<T> failed(String message) {
        return of(null, CodeEnum.ERROR.getCode(), message);
    }

    public static <T> RestResult<T> failed(T data, String message) {
        return of(data, CodeEnum.ERROR.getCode(), message);
    }
}
