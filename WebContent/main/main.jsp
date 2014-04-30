<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<style>
/* img �±�*/
img {
	width: 100%;
	height: 100%;
	border: 1px solid #ff0000;
}
/* ������ ���α��̰� 1025px �̻��� ��� */
@media all and (min-width:1025px) {
	/* main */
	.main {
		/* ��� ����
     html5������ center �� �������� margin�� ��� ��
  */
		margin: auto;
		width: 1024px;
		/* ���� div �±׵��� ��ǥ �������� ���� */
		position: relative;
	}
	/* banner*/
	.banner {
		width: 100%;
		height: 150px;
		/* �����Ӱ� ��ġ�ϵ��� ����*/
		position: absolute;
		/* ��ǥ ���� */
		/* ������ 10px ��ŭ ������ ��ġ�� ��ġ*/
		top: 10px;
	}
	.title {
		width: 100%;
		height: 150px;
		position: absolute;
		top: 170px;
	}
	.menu {
		position: absolute;
		top: 330px;
		width: 30%;
		height: 916px;
	}
	.article1 {
		position: absolute;
		top: 330px;
		left: 310px;
		width: 70%;
		height: 297px;
	}
	.article2 {
		position: absolute;
		top: 640px;
		left: 310px;
		width: 70%;
		height: 297px;
	}
	.article3 {
		position: absolute;
		top: 950px;
		left: 310px;
		width: 70%;
		height: 297px;
	}
	.footer {
		position: absolute;
		top: 1260px;
		width: 100%;
		height: 150px;
	}
}
/* ������ ���α��̰� 1024px ������ ��� */
@media all and (max-width:1024px) {
	/* main */
	.main {
		/* ��� ����
     html5������ center �� �������� margin�� ��� ��
  */
		margin: auto;
		width: 640px;
		/* ���� div �±׵��� ��ǥ �������� ���� */
		position: relative;
	}
	/* banner*/
	.banner {
		width: 100%;
		height: 150px;
		/* �����Ӱ� ��ġ�ϵ��� ����*/
		position: absolute;
		/* ��ǥ ���� */
		/* ������ 10px ��ŭ ������ ��ġ�� ��ġ*/
		top: 10px;
	}
	.title {
		width: 100%;
		height: 150px;
		position: absolute;
		top: 170px;
	}
	.menu {
		position: absolute;
		top: 330px;
		width: 100%;
		height: 150px;
	}
	.article1 {
		position: absolute;
		top: 490px;
		width: 100%;
		height: 297px;
	}
	.article2 {
		position: absolute;
		top: 800px;
		width: 100%;
		height: 297px;
	}
	.article3 {
		position: absolute;
		top: 1110px;
		width: 100%;
		height: 297px;
	}
	.footer {
		position: absolute;
		top: 1420px;
		width: 100%;
		height: 150px;
	}
}
</style>



	<div class="title">
		<img src="http://placehold.it/1024x150&text=title" />
	</div>
	
	<div class="menu">
		<img src="http://placehold.it/300x916&text=menu" />
	</div>
	
	<div class="article1">
		<img src="http://placehold.it/720x300&text=article1" />
	</div>
	
	<div class="article2">
		<img src="http://placehold.it/720x300&text=article2" />
	</div>
	
	<div class="article3">
		<img src="http://placehold.it/720x300&text=article3" />
	</div>
	
	<div class="footer">
		<img src="http://placehold.it/1024x150&text=footer" />
	</div>
