package com.indusec.db.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p> 父类，注意这个类不要让 mp 扫描到！！ </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/9/15 11:31
 */
public interface SuperMapper<T> extends BaseMapper<T> {
    // 这里可以放一些公共的方法
}
