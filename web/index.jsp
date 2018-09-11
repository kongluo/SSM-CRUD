<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>员工列表</title>

    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <!-- 引入jQuery-->
    <script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
    <!-- 引入样式-->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <%-- 标题行 --%>
    <div class="row">
        <div class="col-md-12">
            <h1>SSM-CRUD</h1>
        </div>
    </div>
    <%-- 按钮 --%>
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-success">新增</button>
            <button class="btn btn-danger">删除</button>
        </div>
    </div>
    <br><br>
    <%-- 显示表格数据 --%>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>id</th>
                    <th>empName</th>
                    <th>gender</th>
                    <th>email</th>
                    <th>deptName</th>
                    <th>操作</th>
                </tr>

            </table>
        </div>
    </div>
    <%-- 显示分页信息 --%>
    <div class="row">
        <%-- 分页文字信息 --%>
        <div class="col-md-6">
            当前页，总页,总条记录
        </div>
        <%-- 分页条信息 --%>
        <div class="col-md-6">

        </div>
        <script type="text/javascript">
           //1、页面加载完成之后，直接去发送一个ajax请求，要到分页数据
            $(function () {
               $.ajax({
                   url:"${APP_PATH}"/emps,
                   data:"pn=1",
                   type:"get",
                   success:function (result) {
                       console.log(result);
                   }
               });
            });
        </script>
    </div>
</div>

</body>
</html>
