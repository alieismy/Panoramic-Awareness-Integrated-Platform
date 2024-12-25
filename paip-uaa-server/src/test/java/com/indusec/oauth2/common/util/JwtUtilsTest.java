package com.indusec.oauth2.common.util;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.junit.jupiter.SpringExtension;

/**
 * <p> 测试工具类 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/7/16
 */
@ExtendWith(SpringExtension.class)
public class JwtUtilsTest {
    @Test
    public void test() {
        // {"exp":1563256084->1752644884,"user_name":"admin","authorities":["ADMIN"],"jti":"4ce02f54-3d1c-4461-8af1-73f0841a35df","client_id":"webApp","scope":["app"]}
        String jwtToken = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXN0IjoiYWJjIiwidXNlcl9uYW1lIjoiYWRtaW4iLCJzY29wZSI6WyJhcHAiXSwiZXhwIjoxNTYzNjgyMTI4LCJhdXRob3JpdGllcyI6WyJBRE1JTiJdLCJqdGkiOiJlMDFlNGU0Yi1hZDVkLTRlMTQtODhiMC00OGQ4YzBjN2U5YjkiLCJjbGllbnRfaWQiOiJ3ZWJBcHAifQ.Qrh2aEoN4TL_WIQ9UpxDrW12aqqoVqxeY826sjbea2LB24RBNDYQl1J5vwXzMaQlG9AgjHRL4bTQihwBYYfdL-VuJXx0_l0xONbz9sHPq60a3gAhxOnekNS5-Qet5feTw7j4o2OwNlxo-xty5s8u2lsQY21zCe0tes_T4XeM76JTBpRbQUFGUU3EKxtUFi3Nk9AII4zerW1AbQNvLo4YW2Wvj___0lq5a-xNdCcHlJid8vKgzEF3v3wECOv6OjgL-fUN8VpUsYVt1-_QZp8opPAf-t3OVTtrVIWrJZ_vWV9d6DN5mynKtZ7_mDyMwo_5w3roAZ0ahoBKPKrtYQyEwQ";
        // TODO: replace use: io.jsonwebtoken.*
        //JsonNode claims = JwtUtils.decodeAndVerify(jwtToken);
        //token内容
        //System.out.println(claims);
        //boolean isValid = JwtUtils.checkExp(claims);
        //是否有效
        //System.out.println(isValid);
    }
}
