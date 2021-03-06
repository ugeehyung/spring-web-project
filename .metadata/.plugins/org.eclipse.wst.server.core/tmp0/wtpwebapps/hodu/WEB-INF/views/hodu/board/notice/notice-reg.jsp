<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<%@ include file="/WEB-INF/views/hodu/main/header.jsp"%>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<link
	href="${pageContext.request.contextPath }/resources/assets/css/style2.css"
	rel="stylesheet">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <section>
       <div class="container">
            <div class="row">
                <div class="col-xs-12 content-wrap">
                    <div class="titlebox">
                    <div>
                        <h2><strong>공지사항</strong></h2>
                    </div>    
                  </div>				             
                    <form action="registForm" method="post" name="registForm" enctype="multipart/form-data">
	                    <table class="table">
	                        <tbody class="t-control">
	                        	<tr>
	                        		<td class="t-title"><Strong>작성자</Strong> </td>
									<td><input class="form-control input-sm" name="member_id" readonly value="${member.member_id }"></td>		
									
	                        	</tr>                            
	                            <tr>
	                                <td class="t-title" ><strong>제목</strong></td>
	                                <td><input class="form-control input-sm" name="notice_title" style="width:100%;" placeholder="제목을 작성해주세요"><span id="msgTitle" class="msg"></span></td>
	                            </tr>                           	  	                                   	                            
                                <tr>
	                                <td class="t-title"><strong>내용</strong></td>
	                                <td>
	                                <textarea class="form-control" rows="13" placeholder="내용을 작성해주세요" name="notice_content"></textarea>
	                                </td>                 
	                            </tr>
	                           <tr>
							</tr>	                                                                                   
	                        </tbody>
	                    </table>
							<div class="container" >
							  <div class="row row-cols-6" >
							  
							    <div class="col"></div>
							    <div class="col"></div>
							    <div class="col"><button class = "btn btn-dark" type="button" onclick="regist()"> 등록</button></div>							    
							    <div class="col"><button class = "btn btn-dark" type="button" onclick="location.href='notice-category'">목록</button></div>
							    <div class="col"></div>
							    <div class="col"></div>
							  
							  </div>
							</div>	                    
                    </form>                    
                </div>
            </div>    
       </div>
       
       <script type="text/javascript">
       		function regist(){
       			 if(document.registForm.notice_title.value === ''){
       				document.getElementById("msgTitle").innerHTML = " 제목은 필수입니다";
       				document.registForm.title.focus();
       				return;
       			} else{
       				document.registForm.submit();//입력 완료시 서브밋
       			}
       			
       		}
       		


       
       </script>
       
       
       
    </section>
    
    <%@ include file="/WEB-INF/views/hodu/main/footer.jsp"%>