package com.indusec.generator.utils;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * GenUtils测试用例
 *
 * @author: L.J
 * @date 2019/5/10
 */
@SpringBootTest
public class GenUtilsTest {
    @Test
    public void testTableToJava() {
        String javaName = GenUtils.tableToJava("t_event_message", "t_");
        assertThat(javaName).isEqualTo("EventMessage");
    }
}
