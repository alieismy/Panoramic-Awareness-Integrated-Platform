package com.indusec.common.utils.security;

import javax.crypto.Cipher;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;

/**
 * <p> RSA加解密工具类 </p>
 *
 * <p> Description: Support JDK11 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/7/16
 */
public class RsaUtils {
    /**
     * 默认"RSA"="RSA/ECB/PKCS1Padding"
     */
    private static final String CIPHER_INSTANCE = "RSA/ECB/PKCS1Padding";

    /**
     * 公钥加密
     *
     * @param content   要加密的内容
     * @param publicKey 公钥
     */
    public static String encrypt(String content, PublicKey publicKey) {
        try {
            Cipher cipher = Cipher.getInstance(CIPHER_INSTANCE);
            cipher.init(Cipher.ENCRYPT_MODE, publicKey);
            // JDK1.8
            // byte[] output = cipher.doFinal(content.getBytes());
            // BASE64Encoder encoder = new BASE64Encoder();
            // return encoder.encode(output);
            // 从JKD9开始rt.jar包已废除，从JDK 1.8开始使用java.util.Base64.Encoder
            byte[] output = cipher.doFinal(content.getBytes(Charset.forName("UTF-8")));
            Base64.Encoder encoder = Base64.getEncoder();
            String encode = new String(encoder.encode(output));

            return encode;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 公钥加密
     *
     * @param content   要加密的内容
     * @param publicKey 公钥
     */
    public static byte[] encrypt(byte[] content, PublicKey publicKey) {
        try {
            Cipher cipher = Cipher.getInstance(CIPHER_INSTANCE);
            cipher.init(Cipher.ENCRYPT_MODE, publicKey);
            return cipher.doFinal(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 私钥解密
     *
     * @param content    要解密的内容
     * @param privateKey 私钥
     */
    public static byte[] decrypt(byte[] content, PrivateKey privateKey) {
        try {
            Cipher cipher = Cipher.getInstance(CIPHER_INSTANCE);
            cipher.init(Cipher.DECRYPT_MODE, privateKey);
            return cipher.doFinal(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 私钥解密
     *
     * @param content    要解密的内容
     * @param privateKey 私钥
     */
    public static String decrypt(String content, PrivateKey privateKey) {
        try {
            Cipher cipher = Cipher.getInstance(CIPHER_INSTANCE);
            cipher.init(Cipher.DECRYPT_MODE, privateKey);
            // JDK1.8
            // byte[] b = cipher.doFinal(content.getBytes());
            // BASE64Encoder encoder = new BASE64Encoder();
            // return encoder.encode(b);
            // 从JKD 9开始rt.jar包已废除，从JDK 1.8开始使用java.util.Base64.Encoder
            byte[] bytes = cipher.doFinal(content.getBytes(Charset.forName("UTF-8")));
            Base64.Encoder encoder = Base64.getEncoder();
            String encode = new String(encoder.encode(bytes));

            return encode;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * String转公钥PublicKey
     *
     * @param key 公钥字符
     */
    public static RSAPublicKey getPublicKey(String key) throws Exception {
        byte[] keyBytes;
        // JDK1.8
        // keyBytes = (new BASE64Decoder()).decodeBuffer(key);
        // 从JKD 9开始rt.jar包已废除，从JDK 1.8开始使用java.util.Base64.Decoder
        Base64.Decoder decoder = Base64.getDecoder();
        keyBytes = decoder.decode(key);
        X509EncodedKeySpec keySpec = new X509EncodedKeySpec(keyBytes);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");

        return (RSAPublicKey) keyFactory.generatePublic(keySpec);
    }

    /**
     * String转私钥PrivateKey
     *
     * @param key 私钥字符
     */
    public static PrivateKey getPrivateKey(String key) throws Exception {
        byte[] keyBytes;
        // JDK1.8
        // keyBytes = (new BASE64Decoder()).decodeBuffer(key);
        // 从JKD 9开始rt.jar包已废除，从JDK 1.8开始使用java.util.Base64.Decoder
        Base64.Decoder decoder = Base64.getDecoder();
        keyBytes = decoder.decode(key);
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(keyBytes);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");

        return keyFactory.generatePrivate(keySpec);
    }
}
