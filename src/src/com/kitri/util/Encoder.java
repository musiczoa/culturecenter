package com.kitri.util;

import java.io.UnsupportedEncodingException;

// �Ѿ�� �ѱ�. get ���!  post����� �̰� ȣ���� �ʿ� ����
public class Encoder { // �ѱ� ������ �ʰ� ���ִ� ���ڴ�
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
