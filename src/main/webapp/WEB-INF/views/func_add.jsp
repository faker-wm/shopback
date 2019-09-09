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
    <link rel="stylesheet" href="/website/css/index.css">
    <link rel="stylesheet" href="/website/font/iconfont.css">
</head>
<body>
<script src="/website/js/jquery.min.js"></script>
<div class="box">
	<form action="" id="form_2">
    <div class="row">
        <div class="control-group">
            <label class="control-label">name：</label>
            <input type="text"  name="name" class="control-text">
        </div>
    </div>
     <div class="row">
        <div class="control-group">
            <label class="control-label">rank：</label>
            <select name="rank">
            <option>1</option>
            <option>2</option>
            </select>
        </div>
    </div>
     <div class="row">
        <div class="control-group">
            <label class="control-label">sup_rank：</label>
           			<select  name="supRank">
                    <option value="">--无--</option>
                    <c:forEach items="${func}" var="obj">
                        <option value="${obj.id}">${obj.name}</option>
                    </c:forEach>
                    </select>
        </div>
    </div>
    <div class="row">
        <div class="control-group">
            <label class="control-label">url：</label>
            <input type="text"  name="url" class="control-text">
        </div>
    </div>
   
    <div class="span8">
    </div>
    <div class="btn" id="submit">
        <span>添加</span>
    </div>
</form>
</div>
</body>
<script>
    $(document).ready(function(){
        $('#submit').eq(0).click(function(){
                $.ajax({
                    url:'/website/Controller/funcInsert',
                    type:"POST",
                    data: $('#form_2').serialize(),
                    dataType:'json',
                    success: function(Data) {
                            window.location.href="/website/Controller/Userfunc";                            
                    }
                });

        })
      
    })
</script>
</html>