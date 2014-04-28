package com.kitri.util;

import java.io.UnsupportedEncodingException;

// 넘어온 한글. get 방식!  post방식은 이거 호출할 필요 없어
public class Encoder { // 한글 깨지지 않게 해주는 인코더
	public static String isoToEuc(String tmp) {
		String euc = "";
		try {
			if (tmp != null)
				euc = new String(tmp.getBytes("ISO-8859-1"), "EUC-KR");

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return euc;
	}

	public static String isoToUtf(String tmp) {
		String utf = "";
		try {
			if (tmp != null)
				utf = new String(tmp.getBytes("ISO-8859-1"), "UTF-8");

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return utf;
	}
}
