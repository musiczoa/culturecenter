<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<style>
/* img 태그*/
img {
	width: 100%;
	height: 100%;
	border: 1px solid #ff0000;
}
/* 브라우저 가로길이가 1025px 이상일 경우 */
@media all and (min-width:1025px) {
	/* main */
	.main {
		/* 가운데 정렬
     html5에서는 center 가 없어지고 margin을 줘야 함
  */
		margin: auto;
		width: 1024px;
		/* 내부 div 태그들의 좌표 기준으로 설정 */
		position: relative;
	}
	/* banner*/
	.banner {
		width: 100%;
		height: 150px;
		/* 자유롭게 배치하도록 설정*/
		position: absolute;
		/* 좌표 설정 */
		/* 위에서 10px 만큼 떨어진 위치에 위치*/
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
/* 브라우저 가로길이가 1024px 이하인 경우 */
@media all and (max-width:1024px) {
	/* main */
	.main {
		/* 가운데 정렬
     html5에서는 center 가 없어지고 margin을 줘야 함
  */
		margin: auto;
		width: 640px;
		/* 내부 div 태그들의 좌표 기준으로 설정 */
		position: relative;
	}
	/* banner*/
	.banner {
		width: 100%;
		height: 150px;
		/* 자유롭게 배치하도록 설정*/
		position: absolute;
		/* 좌표 설정 */
		/* 위에서 10px 만큼 떨어진 위치에 위치*/
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
