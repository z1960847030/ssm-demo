<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询书籍展示</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>查询书籍展示</small>
                </h1>
            </div>
        </div>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12  column">
        <table class="table table-hover table-striped ">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${boos}">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<h3 align="center">
    <a href="${pageContext.request.contextPath}/book/allBook">返回书籍界面</a>
</h3>



</body>
</html>
