package com.indusec.common.utils.id;

import org.junit.jupiter.api.Test;

public class IdUtilTest {

    @Test
    public void normal() {
        long id1 = IdGenerator.getId();
        String id2 = IdGenerator.getIdStr();
        System.out.println("UUID1:" + id1);
        System.out.println("UUID2:" + id2);
    }

}
