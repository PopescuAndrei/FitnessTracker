package com.pluralsight.util;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import junit.framework.TestCase;

public class PasswordHash extends TestCase {

	public void testMD5Hash() {
		String password = "admin";
		Md5PasswordEncoder passwordEncoder = new Md5PasswordEncoder();
		String hashPassword = passwordEncoder.encodePassword(password, null);
		System.out.println(hashPassword);
	}

	public void testBCryptHash() {
		String admin = "admin";
		String secret = "secret";

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashAdmin = passwordEncoder.encode(admin);
		String hashSecret = passwordEncoder.encode(secret);
		System.out.println(hashAdmin);
		System.out.println(hashSecret);
	}
}
