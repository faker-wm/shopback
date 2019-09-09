<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
  <title>个人网页</title>
  <link rel="stylesheet" href="/BAM/res/layui/css/layui.css">
  <link rel="stylesheet" href="/BAM/res/static/css/index.css">
</head>
<body>
  <!-- nav部分 -->
  <div class="nav">
    <div class="layui-container">
      <!-- 公司logo -->
      <div class="nav-logo">
      </div>
      <div class="nav-list">
        <button>
          <span></span><span></span><span></span>
        </button>
        <ul class="layui-nav" lay-filter="">
          <li class="layui-nav-item"><a href="/BAM/qt/index">首页</a></li>
          <li class="layui-nav-item"><a href="/BAM/qt/product">动漫</a></li>
          <li class="layui-nav-item layui-this"><a href="/BAM/qt/news">更多</a></li>
          <li class="layui-nav-item"><a href="/BAM/qt/Contact">联系</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- main部分 -->
  
  
  <div class="main-newsdate">
    <div class="layui-container">
      <p class="news"></p><br><br>
      <h1>${more[0].title}</h1><br><br><br>
      <p class="introTop">${more[0].url}</p>
      <div><img src="/BAM/file/${more[0].imgpath}" alt="动漫大图"></div>
      <p class="introBott">${more[0].more }</p>
    </div> 
  </div>
  
  
  <!-- footer部分 -->
  <div class="footer">
    <div class="layui-container">
      <p class="footer-web">
      </p>
      <div class="layui-row footer-contact">
        <div class="layui-col-sm2 layui-col-lg1"><img src="/BAM/res/static/img/erweima.jpg"></div>
        <div class="layui-col-sm10 layui-col-lg11">
          <div class="layui-row">
            <div class="layui-col-sm6 layui-col-md8 layui-col-lg9">
              <p class="contact-top"><i class="layui-icon layui-icon-cellphone"></i>&nbsp;15719326018&nbsp;&nbsp;&nbsp;(9:00-18:00)</p>
              <p class="contact-bottom"><i class="layui-icon layui-icon-home"></i>&nbsp;1093031590@qq.com</span></p>
            </div>
            <div class="layui-col-sm6 layui-col-md4 layui-col-lg3">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<script src="/BAM/res/layui/layui.js"></script>
<!--[if lt IE 9]>
  <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
  <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
  layui.config({
    base: '/BAM/res/static/js/' 
  }).use('firm'); 
</script>

</body>
</html>