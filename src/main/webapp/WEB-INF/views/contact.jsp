<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
  <title>个人网页</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href="/BAM/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/BAM/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="/BAM/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="/BAM/css/font-awesome.css" />
<!-- //font-awesome icons -->
<link href="http://fonts.googleapis.com/css?family=Cormorant+Unicase:300,400,500,600,700&subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
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
          <li class="layui-nav-item"><a href="/BAM/qt/news">更多</a></li>
          <li class="layui-nav-item layui-this"><a href="/BAM/qt/Contact">联系</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- breadcrumb -->
	<div class="w3_breadcrumb">
		<div class="container">	
			<ul>
				<li><a href="/BAM/qt/index">首页</a><i>/</i></li>
				<li>Contact</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->

<!-- mail -->
	<div class="mail">
		<div class="container">
			<div class="col-md-7 w3l_mail_left">
				<iframe src="/BAM/img/bjtp.jpg" style="border:0;width: 830px;height: 100%;"></iframe>
			</div>
			<div class="col-md-5 w3l_mail_right">
				<h3>联系资料</h3>
				<ul>
					<li><span><i class="fa fa-home" aria-hidden="true"></i>地址<label>:</label></span> 陕西省, 宝鸡市</li>
					<li><span><i class="fa fa-phone" aria-hidden="true"></i>电话<label>:</label></span> 15719326018</li>
					<li><span><i class="fa fa-fax" aria-hidden="true"></i>QQ<label>:</label></span> 1093031590</li>
					<li><span><i class="fa fa-envelope" aria-hidden="true"></i>邮箱<label>:</label></span> <a href="mailto:1093031590@qq.com">1093031590@qq.com</a></li>
					<li><span><i class="fa fa-globe" aria-hidden="true"></i>网址<label>:</label></span> <a href="http://localhost:8080/BAM">http://localhost:8080/BAM</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>

			<div class="agileits_w3layouts_contact">
				<h4 class="agileits_w3layouts_sub">提点建议</h4>
				<h2 class="w3_agileits_head w3_agileits_head1">联系我们</h2>

				<div class="w3_mail_grids">
					<form  id="send" onsubmit="return false">
						<span class="input input--jiro">
							<input class="input__field input__field--jiro" type="text" id="input-10" name="Name" placeholder="Your Name" required=""/>
							<label class="input__label input__label--jiro" for="input-10">
								<span class="input__label-content input__label-content--jiro">名字</span>
							</label>
						</span>
						<span class="input input--jiro">
							<input class="input__field input__field--jiro" type="email" id="input-11" name="Email" placeholder="Your Email Address" required=""/>
							<label class="input__label input__label--jiro" for="input-11">
								<span class="input__label-content input__label-content--jiro">邮箱</span>
							</label>
						</span>
						<span class="input input--jiro">
							<input class="input__field input__field--jiro" type="text" id="input-12" name="PhoneNumber" placeholder="Phone Number" required=""/>
							<label class="input__label input__label--jiro" for="input-12">
								<span class="input__label-content input__label-content--jiro">电话</span>
							</label>
						</span>
						<textarea name="Message" placeholder="内容" required=""></textarea>
						<input type="submit" value="发送" id="submit" onclick="sub()">
					</form>
					
				</div>
				<a href="/BAM/ListFileServlet"><button>点击下载</button> </a>
			</div>
		</div>
	</div>
<!-- //mail -->

  
  
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
</body>
<script type="text/javascript" src="/BAM/js/jquery.min.js"></script>
<script type="text/javascript">
function sub() {
	 $.ajax({
        url:'/BAM/qt/Contact',
        type:"POST",
        data:$('#send').serialize(),
        dataType:'json',
        success: function(data) {
        	console.log(data);
        	if (data.message=="ok") {
				alert("发送成功");
			}
        }
	 });
        
	 return false;
}


</script>

</html>