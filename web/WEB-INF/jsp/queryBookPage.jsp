<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询书籍</title>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>查询书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>
<form action="${pageContext.request.contextPath}/book/queryBook" method="get">
    <div class="form-group" align="center">
        <label>选择需要查询的书籍编号:</label>
        <input type="text" name="id" required>
        <input type="submit">
    </div>
</form>


</body>
</html>
