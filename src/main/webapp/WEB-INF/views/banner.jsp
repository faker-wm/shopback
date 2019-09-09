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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/font/iconfont.css">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
</head>
<style>
#page{
	text-align: center;
	display: inline-block;
    padding: .3em .5em;
    background-image: linear-gradient(#ddd, #bbb);
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3em;
    box-shadow: 0 1px white inset;
    text-shadow: 0 1px 1px black;
    color:green;
    font-weight: bold;
	}
#page input {
	box-shadow: .05em .1em .2em rgba(0,0,0,.6) inset;
    border-color: rgba(0,0,0,.3);
    background: #bbb;
    background-image: linear-gradient(#f5c153, #ea920d);
}

</style>
<body>

<div class="doc-content">
    <ul class="breadcrumb breadcrumb2"></ul>
    <ul class="breadcrumb">
        <li>
            <span class="iconfont icon-shouye"></span>
            <a href="#">首页</a> <span class="divider"><span class="iconfont icon-down-trangle1"></span></span>
        </li>
        <li class="active">首页banner列表</li>
    </ul>
    <div class="tit">
        <span class="iconfont icon-guanlianniu"></span>
        <span>首页banner列表</span>
        <span class="iconfont icon-down-trangle2"></span>
    </div>

    <div class="span95">
    <table cellspacing="0" class="table table-head-bordered table-bordered">
        <a href="<%=request.getContextPath() %>/banner/add">
            <div class="s-btn">
                <span style="color: black">新增</span>
            </div>
        </a>
        <thead>
        <tr style="">
            <th>图片</th>
            <th>排序</th>
            <th>URL</th>
            <th>是否启用</th>
            <th>标题</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="obj" >
        <tr>
            <td>
                <img src="<%=request.getContextPath()%>/file/${obj.imgpath}" alt="">
            </td>
            <td>${obj.order}</td>
            <td>${obj.url}</td>
            <c:if test="${obj.startUse == '1' }"> <td><span class="iconfont icon-duiconverted"></span></td>  </c:if>
            <c:if test="${obj.startUse == '' }">  <td><span class="iconfont icon-cuoconverted"></span></td>  </c:if>
            
            <td>${obj.title}</td>
            <td><a href="<%=request.getContextPath() %>/banner/selectById?id=${obj.id}">编辑</a> 
            <a href="bannerDelete?id=${obj.id}">删除</a></td>
        </tr>        
        
        </c:forEach>

        </tbody>
    </table>
</div>


</div>
<script type="text/javascript">
$(function(){
	$("#pageSize").val("${number}");
})
//点击分页按钮时触发的事件
function page(i){
	var pageSize = $("#pageSize").find("option:selected").text()
	//跳转路径再次查询分页数据
	window.location.href="BannerSelect?path=banner&currentPage="+i+"&pageSize="+pageSize+" "
}
</script>
<!-- 获取分页的html代码进行显示-->
${page}

</body>
</html>