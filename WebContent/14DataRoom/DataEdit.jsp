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
			<h3>자료실 - <small>Edit(수정)</small></h3>
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
	
	if(frm.name.value=="") {
		alert("이름을 입력하세요");
		frm.name.focus();
		return false;
	}
	if(frm.pass.value=="") {
		alert("비밀번호를 입력하세요");
		frm.pass.focus();
		return false;
	}
	if(frm.title.value=="") {
		alert("제목을 입력해주세요.");
		frm.title.focus();
		return false;
	}
	if(frm.content.value.length < 5) {
		alert("내용은 5글자 이상이어야 합니다.");
		frm.content.focus();
		return false;
	}
}
</script>
						
			<div class="row mt-3 mr-1">
				<table class="table table-bordered table-striped">
				<!-- 
					파일 업로드를 위해서는 반드시 enctype을 선언해야 한다. 그렇지
					않으면 파일은서버로 전송되지 않는다.
				 -->
				<form name="writeFrm" method="post" action="../DataRoom/DataEdit"
					enctype="multipart/form-data"
					onsubmit="return checkValidate(this);">
				
				<input type="hidden" name="idx" value="${dto.idx }" />
				<input type="hidden" name="nowPage" value="${param.nowPage }" />
				<!-- 
					기존에 등록한 파일이 있는경우 수정시 파일을 첨부하지 않으면 기존파일을
					유지해야 하므로 별도의 hidden폼이 필요하다.
					즉 새로운 파일을 등록하면 새로운값으로 업데이트하고,
					파일을 등록하지 않으면 기존파일명으로 데이터를 유지하게 된다.
				 -->
				<input type="hidden" name="originalfile" value="${dto.attachedfile }" />
					
				<colgroup>
					<col width="20%"/>
					<col width="*"/>
				</colgroup>
				<tbody>
					<tr>
						<th class="text-center align-middle">작성자</th>
						<td>
							<input type="text" class="form-control"	style="width:100px;"
								name="name" value="${dto.name }" />
						</td>
					</tr>
					<tr>
						<th class="text-center" 
							style="vertical-align:middle;">패스워드</th>
						<td>
							<input type="password" class="form-control" style="width:200px;" 
								name="pass" value="${dto.pass }" />
						</td>
					</tr>
					<tr>
						<th class="text-center"
							style="vertical-align:middle;">제목</th>
						<td>
							<input type="text" class="form-control" name="title"
								value="${dto.title }" />
						</td>
					</tr>
					<tr>
						<th class="text-center"
							style="vertical-align:middle;">내용</th>
						<td>
							<textarea rows="10" 
								class="form-control" name="content" >${dto.content }</textarea>
						</td>
					</tr>
					<tr>
						<th class="text-center"
							style="vertical-align:middle;">첨부파일</th>
						<td>
							파일명 : ${dto.attachedfile }<br />
							<input type="file" class="form-control" name="attachedfile" />
						</td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="row mb-3">
				<div class="col text-right">
					<button type="submit" class="btn btn-danger">작성완료</button>
					<button type="reset" class="btn btn-dark">Reset</button>
					<button type="button" class="btn btn-warning"
						onclick="location.href='../DataRoom/DataList?nowPage=${param.nowPage}';">리스트바로가기</button>
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