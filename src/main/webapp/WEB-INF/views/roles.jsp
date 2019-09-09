<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/dpl.css" rel="stylesheet">
    <link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/bui.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="css/common.css">-->
    <link rel="stylesheet" href="/website/font/iconfont.css">
    <!--<link rel="stylesheet" href="css/supplier-mes.css">-->
    <link rel="stylesheet" href="/website/css/index.css">
</head>
<style>
</style>
<body>

<div class="doc-content">
    <ul class="breadcrumb breadcrumb2"></ul>
    <ul class="breadcrumb">
        <li>
            <span class="iconfont icon-shouye"></span>
            <a href="#">首页</a> <span class="divider"><span class="iconfont icon-down-trangle1"></span></span>
        </li>
        <li class="active">
            <a href="#">角色管理</a> <span class="divider"><span class="iconfont"></span></span>
        </li>
    </ul>


   
    <div class="tit">
        <span class="iconfont icon-guanlianniu"></span>
        <span>角色列表</span>
        <span class="iconfont icon-down-trangle2"></span>
    </div>
    <div class="span95">
        <table cellspacing="0" class="table table-head-bordered table-bordered qx table-sm">
            <thead>
            <tr style="">
                <th>username</th>
                <th>password</th>
                <th>role</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${role}" var="obj">
            <tr>
                <td>${obj.username}</td>
                <td>${obj.password}</td>
                <td>
                <select id="${obj.id}" class="aa" >
                <c:if test="${obj.role_id==1}">
                <option></option>
                <option value="1" selected="selected">管理员</option>
                <option value="0">运维</option>
                </c:if>
                <c:if test="${obj.role_id==0}">
                <option></option>
                <option value="1">管理员</option>
                <option value="0" selected="selected">运维</option>
                </c:if>
                </select>
                </td>
            </tr>
           </c:forEach>
            </tbody>
        </table>
    </div>

</div>

</body>
<script type="text/javascript" src="/website/js/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".aa").change(function() {
		var id = $(this).attr("id");
		var role_id = $(this).val();
		$.ajax({
            url:'/website/Controller/rolesupDate',
            type:"POST",
            data:{"id":id,"role_id":role_id},
            dateType:"text",
            success: function(data) {
				window.location.href="/website/Controller/roles";
            }
        });
	})
})


</script>
</html>