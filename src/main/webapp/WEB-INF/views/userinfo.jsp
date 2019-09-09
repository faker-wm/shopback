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
            <a href="#">个人信息</a> <span class="divider"><span class="iconfont"></span></span>
        </li>
    </ul>
   
        
    </form>
    <div class="tit">
        <span class="iconfont icon-guanlianniu"></span>
        <span>个人信息</span>
        <span class="iconfont icon-down-trangle2"></span>
    </div>
    <div class="span95">
        <table cellspacing="0" class="table table-head-bordered table-bordered table-sm">
            <thead>
            <tr style="">
                <th>username</th>
                <th>password</th>
                <th>修改密码</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${users.username}</td>
                <td>${cookie.password.value}</td>
                <td><a onclick="change()">修改密码</a></td>
            </tr>
            </tbody>
        </table>
        11${users.role_id}
    </div>
</div>

</body>
<script type="text/javascript" src="/website/js/jquery.min.js"></script>
<script type="text/javascript">
function change() {
	$("body").append("&nbsp&nbsp&nbsp&nbsp输入新密码 <input type='text' id='password'>"+"&nbsp&nbsp&nbsp&nbsp"+
			"<button id='tijiao' onclick = 'tijiao()'>确定</button>");
}
function tijiao() {
		var password = $("#password").val();
		$.ajax({
			url:"/website/Controller/Changepass",
			type:"post",
			data:{"password":password,"username":"${users.username}","id":"${users.id}","role_id":"${users.role_id}"},
			dateType:"text",
			success:function(data){
				alert("修改成功，需要重新登录");
				$.ajax({
					url:"/website/Controller/exit",
					type:"post",
					data:{},
					dateType:"text",
					success:function(data){
						parent.location.reload();
						}
					})
				}
			})

}
</script>
</html>