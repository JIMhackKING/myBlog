<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login &ndash; Love Life</title>

<link rel="stylesheet" href="/{{ page_name }}/css/font-awesome.min.css">
<link rel="stylesheet" href="/{{ page_name }}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/{{ page_name }}/css/demo.css">

<!-- jQuery Tooltip -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
<!-- <script src="//code.jquery.com/jquery-1.10.2.js"></script> -->
<!-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> -->
<link rel="stylesheet" type="text/css" href="/{{ page_name }}/css/jquery-ui.css">
<script src="/{{ page_name }}/js/jquery-1.10.2.js"></script>
<script src="/{{ page_name }}/js/jquery-ui.js"></script>
  <script>
  $(function() {
    $( document ).tooltip();
  });
  </script>

<link rel="stylesheet" type="text/css" href="/{{ page_name }}/css/blog-login.css">
</head>
<body>
<div class="demo">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
				<form class="form-horizontal" action="/" method="post">
					<span class="heading">用户登录</span>
					<div class="form-group">
						<input type="email" class="form-control" id="inputEmail3" placeholder="用户名或电子邮件">
						<i class="fa fa-user"></i>
					</div>
					<div class="form-group help">
						<input type="password" class="form-control" id="inputPassword3" placeholder="密　码">
						<i class="fa fa-lock"></i>
						<a href="#" class="fa fa-question-circle" title="该功能尚未开发，请等待后续更新"></a>  <!-- ToolTip -->
					</div>
					<div class="form-group">
						<div class="main-checkbox">
							<input type="checkbox" id="checkbox1" value="None" name="check">
							<label for="checkbox1" title="该功能尚未开发，请等待后续更新"></label>
						</div>
						<span class="text" title="该功能尚未开发，请等待后续更新">记住密码</span>  <!-- ToolTip -->
						<button type="submit" class="btn btn-default">登录</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
