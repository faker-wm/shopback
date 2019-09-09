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
            <a href="#">页面管理</a> <span class="divider"><span class="iconfont"></span></span>
        </li>
    </ul>
    <div class="tit">
        <span class="iconfont icon-guanlianniu"></span>
        <span>页面添加</span>
        <span class="iconfont icon-down-trangle2"></span>
    </div>


    <form class="form-horizontal gd" style="padding-top: 20px;" id="gd2">
        <div class="row">
            <div class="control-group span8">
                <label class="control-label">角色：</label>
                <div class="controls">
                    <select class="sel1"  id="role">
                    <option value="2">--请选择--</option>
                    <c:forEach items="${role}" var="obj">
                        <option value="${obj.id}" <c:if test="${id==obj.id}"> selected="selected"</c:if>>${obj.role}</option>
                    </c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <hr>
    </form>
         
    <div class="tit">
        <span class="iconfont icon-guanlianniu"></span>
        <span>页面列表</span>
        <span class="iconfont icon-down-trangle2"></span>
    </div>
    <div class="span95">
        <table cellspacing="0" class="table table-head-bordered table-bordered table-sm">
            <thead>
            <tr style="">
                <th>id</th>
                <th>name</th>
                <th>rank</th>
                <th>sup_rank</th>
                <th>url</th>
                <th>show</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${func}" var="obj">
            <tr>
                <td>${obj.id }</td>
                <td>${obj.name}</td>
                <td>${obj.rank }</td>
                <td>${obj.name1}</td>
                <td>${obj.url}</td>
                <c:if test="${obj.show==1}">
                <td>yes<input type="radio" value="1" name="${obj.id}" checked="checked" >
                no<input type="radio" value="0" name="${obj.id}" ></td>
                </c:if>
                <c:if test="${obj.show!=1}">
                <td>yes<input type="radio" value="1" name="${obj.id}">
                no<input type="radio" value="0" name="${obj.id}" checked="checked"></td>
                </c:if>
                <td><a href="/BAM/Users_func_edit?path=delete&id=${obj.id}">删除</a></td>
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
	$("#role").change(function() {
		var role_id = $(this).val();
		window.location.href="Userfunc?role="+role_id;
	})
	
	$("input").change(function() {
		if (role_id != 2) {
			var role_id = $("#role").val();
			var func_id = $(this).attr("name");
			var show = $(this).val();
// 			alert(func_id+"---"+show);
			 $.ajax({
                 url:'/website/Controller/Show',
                 type:"POST",
                 data:{"role_id":role_id,"func_id":func_id,"show":show},
                 dateType:"text",
                 success: function(data) {
                	 window.location.href="/website/Controller/Userfunc?role="+data.role_id;
                 }
             });
		} else {
			alert("请选择");
		}
	});
})


</script>
</html>