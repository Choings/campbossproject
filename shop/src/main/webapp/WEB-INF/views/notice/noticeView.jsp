<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>CAMPBOSS</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous">
   <link href="${path}/resources/css/productEdit.css" rel="stylesheet">
   <c:import url="/WEB-INF/views/member/mainMenu.jsp"></c:import>
   <br><br><br>
</head>
<body>
   <c:if test="${sessionScope.user_type==1 }">
      <form action="${pageContext.request.contextPath }/notice/view" method="post" class="row g-3">

         <h3>공지사항 상세</h3>
         <input type="hidden" name="notice_num" value="${n.notice_num}">

         <div>
            <p class="name-title">제목</p>
            <input type="text" value="${n.notice_name}" class="name" readonly>
         </div>

         <div>
            <p class="seller-title">작성자</p>
            <input type="text" value="${n.notice_id}" class="seller" readonly>
         </div>

         <div>
            <p class="info-title">내용</p>
         </div>
         <textarea name="info" class="info" readonly>${n.notice_info}</textarea>
         <div>
      </form>
   </c:if>

   <c:if test="${sessionScope.user_type==2 }">
      <form action="${pageContext.request.contextPath}/notice/noticeEdit" method="post" class="row g-3">


         <h3>공지사항 수정</h3>
         <input type="hidden" name="notice_num" value="${n.notice_num}">

         <div>
            <p class="name-title">제목</p>
            <input type="text" name="noticeName" value="${n.notice_name}" class="name">
         </div>

         <div>
            <p class="seller-title">작성자</p>
            <input type="text" value="${n.notice_id}" class="seller" readonly>
         </div>

         <div>
            <p class="info-title">내용</p></br>
            <textarea name="noticeInfo" class="info">${n.notice_info}</textarea>
         </div>
         <div>
            <input type="submit" value="수정" class="submit">
            <input type="reset" value="초기화" class="submit">
         </div>
      </form>
   </c:if>
</body>
</html>