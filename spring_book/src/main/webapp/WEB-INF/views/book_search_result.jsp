<%@page import="com.spring.domain.BookVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- 모바일/데스크탑 등으로 들어오는 장치 구분해서 반응형웹으로 만들어줌 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	
	<div class="jumbotron">
		<h3>스프링MVC - 도서관리시스템</h3>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-3">
				<div class="list-group" id="myList" role="tablist">
					<a href="#insert" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서정보입력</a>
					<a href="#all" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서정보보기</a>
					<a href="#delete" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서정보삭제</a>
					<a href="#search" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서정보검색</a>
					<a href="#modify" role="tab" data-toggle="list" class="list-group-item list-group-item-action">도서정보수정</a>
				</div>
			</div>			
			<div class="col-xl-9">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade" role="tabpanel" id="all">

					</div>
					<div class="tab-pane fade" role="tabpanel" id="delete">
						<jsp:include page="book_delete.jsp"/>
					</div>
					<div class="tab-pane fade" role="tabpanel" id="search">
						<table class="table table-bordered">
							<thead class="thead-dark">
								<th scope="col">코 드</th>
								<th scope="col">제 목</th>
								<th scope="col">작 가</th>
								<th scope="col">가 격</th>
							</thead>
							<tbody>
							<c:forEach var="vo" items="${list }">
								<tr>
									<td>${vo.code }</td>
									<td>${vo.title }</td>
									<td>${vo.writer}</td>
									<td>${vo.price }</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div> 
					<div class="tab-pane fade" role="tabpanel" id="modify">
						<jsp:include page="book_modify.jsp"/>
					</div> 
					<div class="tab-pane fade" role="tabpanel" id="insert">
						<jsp:include page="book_insert.jsp"/>
					</div>  
				</div>
			</div>
		</div>
	</div>
<!-- <form action="/mvc_dbcp_books/index.jsp" method="post" id="myform2">
	<input type="hidden" name="tab_select" id="tab_select" value="search" />
</form>	 -->	
<script>
	$(function(){
		$("#myList a[href='#search']").tab("show");	
		
		$("#myList a[href='#search']").click(function(){
			location.href="search";
			/* $("#myform2").submit(); */
		});
		$("#myList a[href='#all']").click(function(){
			location.href="select";
		});
	});
</script>
	
</body>
</html>