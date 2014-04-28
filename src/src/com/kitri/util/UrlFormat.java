package com.kitri.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// 넘기는 포맷 처리
public class UrlFormat {
	public static String eucFormat(String tmp) {
		String euc = "";
		try {
			if (tmp != null)
				euc = URLEncoder.encode(tmp, "EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return euc;
	}

	public static String utfFormat(String tmp) {
		String utf = "";
		try {
			if (tmp != null)
				utf = URLEncoder.encode(tmp, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return utf;
	}
}