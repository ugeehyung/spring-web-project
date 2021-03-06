<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/WEB-INF/views/hodu/main/header.jsp"%>
<link
	href="${pageContext.request.contextPath }/resources/assets/css/style2.css"
	rel="stylesheet">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<section>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-9 write-wrap">
				<!-- 대기 -->
				<div class="titlebox">
					<h1>공지사항</h1>
				</div>


				<form>
					<div>
						<label>DATE</label>
						<p>
							<fmt:formatDate value="${dto.notice_regist_date }" pattern="yyyy년MM월dd일"  />
						</p>
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer'
							disabled="disabled" value="${dto.member_id }" style='background-color: white'>
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title'
							disabled="disabled" value="${dto.notice_title }" style='background-color: white'>
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="10" name='content' disabled="disabled" style='background-color: white'>${dto.notice_content }</textarea>
					</div>
					
					<div class="btn_group">
						<button type="button" class="btn"
							onclick="modify();" style='background-color: #f1f1f1'>수정</button>
						<button type="button" class="btn"
							onclick="del();" style='background-color: #f1f1f1'>삭제</button>
						<button type="button" class="btn"
							onclick="location.href='notice-category'" style='background-color: #f1f1f1'>목록</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</section>

<script>

	var myname = "${member.member_id}";
	var noticename = "${dto.member_id}";
	console.log(myname);
	console.log(noticename);
	function modify() {
		if (myname == ""){
			alert('권한이 없습니다.')
		} else if (myname == noticename){
			window.location.href = 'notice-modify?notice_postnum='+${dto.notice_postnum};
		} else {
			alert('권한이 없습니다.')
		}
	}
	
	function del() {
		if (myname == ""){
			alert('권한이 없습니다.')
		} else if (myname == noticename){
			alert('삭제 성공')
			window.location.href = 'notice-delete?notice_postnum='+${dto.notice_postnum};
		} else {
			alert('권한이 없습니다.')
		}
	}
	
	

</script>

<%@ include file="/WEB-INF/views/hodu/main/footer.jsp"%>
