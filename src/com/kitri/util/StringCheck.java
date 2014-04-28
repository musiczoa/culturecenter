package com.kitri.util;

// 숫자로 바꿔주는것
public class StringCheck {
	public static int nullToZero(String tmp) {
		int number = 0;
		if (tmp != null && isNumber(tmp))
			number = Integer.parseInt(tmp);
		return number;
	}

	public static int nullToOne(String tmp) {
		int number = 1;
		if (tmp != null && isNumber(tmp))
			number = Integer.parseInt(tmp);
		return number;
	}

	private static boolean isNumber(String tmp) {
		int len = tmp.length();
		for (int i = 0; i < len; i++) {
			int x = tmp.charAt(i);
			if (x < 48 || x > 57)
				return false;
		}
		return true;
	}
}
