<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form name="idfindscreen" method = "POST">
			<div class = "search-title">
				<h3>휴대폰 본인확인</h3>
			</div>
	<section class = "form-search">
			<div class = "find-name">
					<label>이름</label>
  				<input type="text" name="member_name" class=  "btn-name" placeholder="등록한 이름" required>
			</div>
			<div class = "find-phone">
				<label>번호</label>
				<input type="text" onKeyup = "addHypen(this);" name="member_phone" class = "btn-phone" placeholder = "휴대폰번호를 '-'없이 입력">
			</div><br>
	</section>
			<div class ="btnSearch">
				<input type="submit" name="enter" value="찾기"  onClick="id_search()"></button>
				<input type="submit" name="cancle" value="취소" onClick="history.back()"></button>
 			</div>
 </form>
 