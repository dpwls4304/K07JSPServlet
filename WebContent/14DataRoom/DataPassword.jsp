<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%--글작성 페이지 진입전 로그인 체크하기 --%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../common/boardHead.jsp" />
<body>
<div class="container">
	<jsp:include page="../common/boardTop.jsp" />
	<div class="row">		
		<jsp:include page="../common/boardLeft.jsp" />
		<div class="col-9 pt-3">
			<h3>자료실 - <small>Password(패스워드 검증))</small></h3>
<script>
//---------------선생님 풀이---------
//일반적으로 폼값을 체크할 때는 get계열의 함수는 쓰지 않는다. 복잡하기 때문이다.
//유기명 함수
/* function checkValidate2(frm) {
	if(frm.title.value=="") {
		alert("제목을 입력하세요"); //경고창을 띄움
		frm.title.focus(); //입력란으로 포커스 이동
		return false; //전송되지 않도록 이벤트리스너로 false반환
	}
	if(frm.content.value=="") {
		alert("내용을 입력하세요"); //경고창을 띄움
		frm.title.focus(); //입력란으로 포커스 이동
		return false; //전송되지 않도록 이벤트리스너로 false반환
	}
} */

//무기명 함수
/* function checkValidate3 = function(frm) {
	//실행부는 유기명 함수와 동일함.
} */
//--------------------------------
function checkValidate(frm) {
	
	if(frm.pass.value=="") {
		alert("비밀번호를 입력하세요");
		frm.pass.focus();
		return false;
	}
}
</script>
						
			<div class="row mt-3 mr-1">
				<table class="table table-bordered table-striped">
				
				<!-- 
					패스워드 검증폼은 첨부파일을 전송하지 않으므로 enctype선언부분을
					삭제해야한다.
				 -->
				<form name="writeFrm" method="post" action="../DataRoom/DataPassword"
					onsubmit="return checkValidate(this);">
				
				<!-- 패스워드 검증을 위해 idx, mode는 서버로 전송해야 하므로
					hidden폼에 값을 저장한다. -->
				<input type="hid den" name="idx" value="${param.idx }" />	
				<input type="hid den" name="mode" value="${mode }" />	
				<input type="hid den" name="nowPage" value="" />	
				
				<colgroup>
					<col width="20%"/>
					<col width="*"/>
				</colgroup>
				<tbody>
					<tr>
						<th class="text-center" 
							style="vertical-align:middle;">패스워드</th>
						<td>
							<input type="password" class="form-control" style="width:200px;" 
								name="pass"/>
						</td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="row mb-3">
				<div class="col text-right">
					<!-- 각종 버튼 부분 -->
					<!-- <button type="button" class="btn">Basic</button> -->
					<!-- <button type="button" class="btn btn-primary" 
						onclick="location.href='BoardWrite.jsp';">글쓰기</button> -->
					<!-- <button type="button" class="btn btn-secondary">수정하기</button>
					<button type="button" class="btn btn-success">삭제하기</button>
					<button type="button" class="btn btn-info">답글쓰기</button>
					<button type="button" class="btn btn-light">Light</button>
					<button type="button" class="btn btn-link">Link</button> -->
					<button type="submit" class="btn btn-danger">전송하기</button>
					<button type="reset" class="btn btn-dark">Reset</button>
					<button type="button" class="btn btn-warning" onclick="location.href='BoardList.jsp';">리스트보기</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../common/boardBottom.jsp" />
</div>
</body>
</html>

<!-- 
	<i class='fas fa-edit' style='font-size:20px'></i>
	<i class='fa fa-cogs' style='font-size:20px'></i>
	<i class='fas fa-sign-in-alt' style='font-size:20px'></i>
	<i class='fas fa-sign-out-alt' style='font-size:20px'></i>
	<i class='far fa-edit' style='font-size:20px'></i>
	<i class='fas fa-id-card-alt' style='font-size:20px'></i>
	<i class='fas fa-id-card' style='font-size:20px'></i>
	<i class='fas fa-id-card' style='font-size:20px'></i>
	<i class='fas fa-pen' style='font-size:20px'></i>
	<i class='fas fa-pen-alt' style='font-size:20px'></i>
	<i class='fas fa-pen-fancy' style='font-size:20px'></i>
	<i class='fas fa-pen-nib' style='font-size:20px'></i>
	<i class='fas fa-pen-square' style='font-size:20px'></i>
	<i class='fas fa-pencil-alt' style='font-size:20px'></i>
	<i class='fas fa-pencil-ruler' style='font-size:20px'></i>
	<i class='fa fa-cog' style='font-size:20px'></i>
	아~~~~힘들다...ㅋ
 -->