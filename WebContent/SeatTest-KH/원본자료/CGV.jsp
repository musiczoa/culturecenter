<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>No.1 영화포털, CGV</title>
    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
	<script type="text/javascript" src="http://img.cgv.co.kr/common/js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript">
		$(function(){
			getPopupData();
		});
		function getCookie(name) {
	        var nameOfCookie = name + "=";
	        var x = 0;
	        while (x <= document.cookie.length) {
	            var y = (x + nameOfCookie.length);
	            if (document.cookie.substring(x, y) == nameOfCookie) {
	                if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
	                    endOfCookie = document.cookie.length;
	                return unescape(document.cookie.substring(y, endOfCookie));
	            }
	            x = document.cookie.indexOf(" ", x) + 1;
	            if (x == 0)
	                break;
	        }
	        return "";
	    }
		function getPopupData() {
			$.ajax({
				type: "get",
				dataType: "xml",
				url: "/xml/PopUpData.xml",
				success: function (xml) {
					var random_num = Math.random();
					var random_num1 = Math.random();
					var random_num2 = Math.random();

					random_num = parseInt(random_num * $(xml).find("NewDataSet").find("Table").length);
					if ($(xml).find("NewDataSet").find("Table").length == 1) {
						try {
							if (getCookie($(xml).find("NewDataSet").find("Table").find("cookieNm").text()) != 'done')
								window.open('./NewFile2.jsp?idx=' + $(xml).find("NewDataSet").find("Table").find("IDX").text(), 'rndPopup1', 'width=' + $(xml).find("NewDataSet").find("Table").find("width").text() + ',height=' + $(xml).find("NewDataSet").find("Table").find("height").text() + ',toolbar=no,scrollbars=no,status=0,top=' + $(xml).find("NewDataSet").find("Table").find("Y").text() + ',left=' + $(xml).find("NewDataSet").find("Table").find("X").text());
						} catch (ex) {
							return;
						}
					}
					else {
						$(xml).find("NewDataSet").find("Table").each(function (i) {
							if (i == random_num) {
								try {
									if (getCookie($(this).find("cookieNm").text()) != 'done')
										window.open('./NewFile2.jsp?idx=' + $(this).find("IDX").text(), 'rndPopup1', 'width=' + $(this).find("width").text() + ',height=' + $(this).find("height").text() + ',toolbar=no,scrollbars=no,status=0,top=' + $(this).find("Y").text() + ',left=' + $(this).find("X").text());
								} catch (ex) {
									return;
								}
							}
						});
					}

					random_num1 = parseInt(random_num1 * $(xml).find("NewDataSet").find("Table1").length);
					if ($(xml).find("NewDataSet").find("Table1").length == 1) {
						try {
							if (getCookie($(xml).find("NewDataSet").find("Table1").find("cookieNm").text()) != 'done')
								window.open('./NewFile2.jsp?idx=' + $(xml).find("NewDataSet").find("Table1").find("IDX").text(), 'rndPopup2', 'width=' + $(xml).find("NewDataSet").find("Table1").find("width").text() + ',height=' + $(xml).find("NewDataSet").find("Table1").find("height").text() + ',toolbar=no,scrollbars=no,status=0,top=' + $(xml).find("NewDataSet").find("Table1").find("Y").text() + ',left=' + $(xml).find("NewDataSet").find("Table1").find("X").text());
						} catch (ex) {
							return;
						}
					}
					else {
						$(xml).find("NewDataSet").find("Table1").each(function (i) {
							if (i == random_num1) {
								try {
									if (getCookie($(this).find("cookieNm").text()) != 'done')
										window.open('./NewFile2.jsp.aspx?idx=' + $(this).find("IDX").text(), 'rndPopup2', 'width=' + $(this).find("width").text() + ',height=' + $(this).find("height").text() + ',toolbar=no,scrollbars=no,status=0,top=' + $(this).find("Y").text() + ',left=' + $(this).find("X").text());
								} catch (ex) {
									return;
								}
							}
						});
					}

					random_num2 = parseInt(random_num2 * $(xml).find("NewDataSet").find("Table2").length);
					if ($(xml).find("NewDataSet").find("Table2").length == 1) {
						try {
							if (getCookie($(xml).find("NewDataSet").find("Table2").find("cookieNm").text()) != 'done')
								window.open('./NewFile2.jsp?idx=' + $(xml).find("NewDataSet").find("Table2").find("IDX").text(), 'rndPopup3', 'width=' + $(xml).find("NewDataSet").find("Table2").find("width").text() + ',height=' + $(xml).find("NewDataSet").find("Table2").find("height").text() + ',toolbar=no,scrollbars=no,status=0,top=' + $(xml).find("NewDataSet").find("Table2").find("Y").text() + ',left=' + $(xml).find("NewDataSet").find("Table2").find("X").text());
						} catch (ex) {
							return;
						}
					}
					else {
						$(xml).find("NewDataSet").find("Table2").each(function (i) {
							if (i == random_num2) {
								try {
									if (getCookie($(this).find("cookieNm").text()) != 'done')
										window.open('./NewFile2.jsp?idx=' + $(this).find("IDX").text(), 'rndPopup3', 'width=' + $(this).find("width").text() + ',height=' + $(this).find("height").text() + ',toolbar=no,scrollbars=no,status=0,top=' + $(this).find("Y").text() + ',left=' + $(this).find("X").text());
								} catch (ex) {
									return;
								}
							}
						});
					}
				},
				error: function (xhr, status, error) {

				}
			});
		}
	</script>
  </head>
	<frameset rows='*,0' border="0" framespacing="0" frameborder="no">
	<frame
		src="NewFile2.jsp"
		frameborder="no"
		scrolling="yes"  
		border=3
		marginwidth="0" 
		marginheight="0"
		name="frame_top"
		id="frame_top">
	<frame
		src="about:blank"
		frameborder="no"
		scrolling="yes"  
		border=3
		marginwidth="0" 
		marginheight="0"
		name="frame_shadow"
		id="frame_shadow">
	<noframes>
	이 문서는 프레임을 사용하고 있습니다.
	</noframes>
	</frameset>
</html>
