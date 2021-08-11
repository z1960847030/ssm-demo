<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
<%--    美化界面--%>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>书籍列表----------显示所有书籍</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/book/toAddPaper" method="get">
            <button>新增书籍</button>
        </form>
        <form action="${pageContext.request.contextPath}/book/toDeletePaper" method="get">
            <button>删除书籍</button>
        </form>
        <form action="${pageContext.request.contextPath}/book/toUpdateBook" method="get">
            <button>更换书籍</button>
        </form>
        <form action="${pageContext.request.contextPath}/book/toQueryBook" method="get">
            <button>查询书籍</button>
        </form>
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
                    <c:forEach var="book" items="${list}">
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
    </body>


</html>
