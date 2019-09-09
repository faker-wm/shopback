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
            <a href="#">用户管理</a> <span class="divider"><span class="iconfont"></span></span>
        </li>
    </ul>
   
        
    </form>
    <div class="tit">
        <span class="iconfont icon-guanlianniu"></span>
        <span>用户列表</span>
        <span class="iconfont icon-down-trangle2"></span>
    </div>
    <div class="span95">
        <table cellspacing="0" class="table table-head-bordered table-bordered table-sm">
            <thead>
            <tr style="">
                <th>id</th>
                <th>username</th>
                <th>password</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="obj">
            <tr>
                <td>${obj.id}</td>
                <td>${obj.username}</td>
                <td>${obj.password}</td>
                <td><a href="/BAM/Users_edit?path=delete&id=${obj.id}">删除</a></td>
            </tr>
			</c:forEach>
            </tbody>
        </table>
    </div>

</div>

<!-- script end -->

</body>
</html>