<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除书籍界面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>删除书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>
<form action="${pageContext.request.contextPath}/book/deleteBook" method="get">
    <div class="form-group" align="center">
        <label>选择需要删除的书籍编号:</label>
        <input type="text" name="id" required>
        <input type="submit">
    </div>
</form>

<h3 align="center">
    <a href="${pageContext.request.contextPath}/book/allBook">返回书籍界面</a>
</h3>


</body>
</html>
