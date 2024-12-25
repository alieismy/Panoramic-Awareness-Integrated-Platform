package com.indusec.common.utils.security;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.DelegatingPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.Pbkdf2PasswordEncoder;
import org.springframework.security.crypto.scrypt.SCryptPasswordEncoder;
import org.springframework.util.Assert;

import java.util.HashMap;
import java.util.Map;

/**
 * PasswordEncoder实现工具类
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2021-05-07 11:27
 */
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class PwdEncoderUtil {

    private static final org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder BCRYPT_ENCODER = new BCryptPasswordEncoder();

    public static PasswordEncoder getDelegatingPasswordEncoder(String encodingId) {
        Map<String, PasswordEncoder> encoders = new HashMap<>();
        encoders.put("bcrypt", new BCryptPasswordEncoder());
        encoders.put("ldap", new org.springframework.security.crypto.password.LdapShaPasswordEncoder());
        encoders.put("MD4", new org.springframework.security.crypto.password.Md4PasswordEncoder());
        encoders.put("MD5", new org.springframework.security.crypto.password.MessageDigestPasswordEncoder("MD5"));
        encoders.put("noop", org.springframework.security.crypto.password.NoOpPasswordEncoder.getInstance());
        encoders.put("pbkdf2", new Pbkdf2PasswordEncoder());
        encoders.put("scrypt", new SCryptPasswordEncoder());
        encoders.put("SHA-1", new org.springframework.security.crypto.password.MessageDigestPasswordEncoder("SHA-1"));
        encoders.put("SHA-256", new org.springframework.security.crypto.password.MessageDigestPasswordEncoder("SHA-256"));
        encoders.put("sha256", new org.springframework.security.crypto.password.StandardPasswordEncoder());
        encoders.put("argon2", new Argon2PasswordEncoder());

        Assert.isTrue(encoders.containsKey(encodingId), encodingId + " is not found in idToPasswordEncoder");

        DelegatingPasswordEncoder delegatingPasswordEncoder = new DelegatingPasswordEncoder(encodingId, encoders);
        delegatingPasswordEncoder.setDefaultPasswordEncoderForMatches(encoders.get(encodingId));

        return delegatingPasswordEncoder;
    }

    public static String bcryptEncode(String password) {
        return BCRYPT_ENCODER.encode(password);
    }

    public static String genOauthEncodePwd(String password) {
        return "{bcrypt}" + bcryptEncode(password);
    }

    public static void main(String[] args) {
        String oriPwd1 = "webApp";
        System.out.println(genOauthEncodePwd(oriPwd1));

        String oriPwd2 = "app";
        System.out.println(genOauthEncodePwd(oriPwd2));

        String oriPwd3 = "third";
        System.out.println(genOauthEncodePwd(oriPwd3));

    }

}