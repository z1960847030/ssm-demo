<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>更换书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>

</body>
<form action="${pageContext.request.contextPath}/book/updateBook" method="get"  align="center">
    <div class="form-group">
        <label>书籍编号:</label>
        <%--    required是必须填写字段，否则无法提交--%>
        <input type="text" name="bookID" required>
    </div>
    <div class="form-group">
        <label>书籍名称:</label>
        <%--    required是必须填写字段，否则无法提交--%>
        <input type="text" name="bookName" required>
    </div>
    <div class="form-group">
        <label>书籍数量:</label>
        <input type="text" name="bookCounts" required>
    </div>
    <div class="form-group">
        <label>书籍描述:</label>
        <input type="text" name="detail" required><hr/>
        <input type="submit">
    </div>
</form>

<h3 align="center">
    <a href="${pageContext.request.contextPath}/book/allBook">返回书籍界面</a>
</h3>

</body>
</html>
