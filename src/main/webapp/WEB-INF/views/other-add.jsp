<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div class="control-group control-group1">
        <label class="control-label"><s>*</s>图片：</label>
        <img src="/website/img/ig.png" id="yushow" class="sh2"/>
    </div>
    <input type="text" id="file"  value="上传一个文件">
    <input type="file" class="jtt"  name="file" style="background: #880000;">
    <div class="row">
        <div class="control-group">
            <label class="control-label">标题：</label>
            <input type="text"  name="title" class="control-text">
        </div>
    </div>
     <div class="row">
        <div class="control-group">
            <label class="control-label">内容：</label>
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
                    url:'/website/Controller/otherInsert',
                    type:"POST",
                    data:new FormData($("#form_2")[0]),
                    dataType:'json',
                    processData : false, //必须false才会避开jQuery对 formdata 的默认处理
                    contentType : false, //必须false才会自动加上正确的Content-Type
                    cache : false, //true的话会读缓存
                    success: function(data) {
                        if(data.message="成功"){
                            $('#pos1').css({'display':'block'});
                            $('#pos2').addClass('dis-none');
                            window.location.href="/website/Controller/other";                            
                        }else{
                            $('#pos2').css({'display':'block'});
                            $('#pos1').addClass('dis-none');
                        }
                    }
                });

        })
        let imgarr=['jpeg','png','gif'];
        let size=10*1024*1024;
        console.log($('.jtt'));
        $('.jtt').get(0).onchange=function (e){
            var that=this;
            console.dir(this)
            var read=new FileReader();
            read.readAsDataURL(this.files[0]);
            console.log($('.sh2').get(0).src)
            read.onload=function () {
                $('.sh2').get(0).src=this.result;
            }
        }
    })
</script>
</html>