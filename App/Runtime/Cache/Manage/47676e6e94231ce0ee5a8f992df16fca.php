<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>后台</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="baidu-site-verification" content="unXl91MyB6" />
	<link rel="stylesheet" type="text/css" href="/Data/static/bootstrap/3.3.5/css/bootstrap.min.css" media="screen">	
	<link rel='stylesheet' type="text/css" href="/App/Manage/View/Public/css/main.css" />
	<!-- 头部css文件|自定义  -->
	

	<script type="text/javascript" src="/Data/static/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/Data/static/bootstrap/3.3.5/js/bootstrap.min.js"></script>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
		<script src="/Data/static/js/html5shiv.min.js"></script>
		<script src="/Data/static/js/respond.min.js"></script>
    <![endif]-->
	
	<script type="text/javascript" src="/App/Manage/View/Public/js/jquery.form.min.js"></script>
	<script type="text/javascript" src="/Data/static/jq_plugins/layer/layer.js"></script>
	<script language="JavaScript">
	    <!--
	    var URL = '/newteng.php?s=/Public';
	    var APP	 = '/newteng.php?s=';
	    var SELF='/newteng.php?s=/Public/main';
	    var PUBLIC='/App/Manage/View/Public';
	    var data_path = "/Data";
		var tpl_public = "/App/Manage/View/Public";
	    //-->
	</script>
	<script type="text/javascript" src="/App/Manage/View/Public/js/common.js"></script> 
	<!-- 头部js文件|自定义 -->
	
</head>
<body>
	<div class="xyh-content">
		
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-info">
				<!-- Default panel contents -->		
				<div class="panel-heading"><em class="glyphicon glyphicon-star"></em> 我的个人信息</div>
				<div class="panel-body">
					<p>
						您好，<?php echo (session('yang_adm_username')); ?>
						<br/>		
						上次登录时间：<?php echo (session('yang_adm_logintime')); ?>
						<br/>		
						上次登录IP：<?php echo (session('yang_adm_loginip')); ?>
						<br/>		
					</p>
				</div>
			</div>
			<div class="panel panel-default">
				<!-- Default panel contents -->		
				<div class="panel-heading">授权信息</div>
				<div class="panel-body">
					<p>
						如果您已购买纽腾产品商业使用授权，您可以在我们的授权中心查询到相关商业授权信息，如果授权类型同查询不符，则说明您可能购买了非法商业授权，请及时同我们取得联系。
我们的联系方式: QQ:483983455
						<br/><br/>		
						<!--<a href="<?php echo go_link('http://www.0871k.com/index.php?m=Authorization&a=cms&lang='.C('DEFAULT_LANG').'');?>" target="_blank" class="btn btn-success "><em class="glyphicon glyphicon-zoom-in"></em>
						商业授权查询</a>-->
					</p>
				</div>
			</div>

			<div class="panel panel-info">
				<!-- Default panel contents -->		
				<div class="panel-heading">系统信息</div>
				<div class="panel-body">
					纽腾程序版本：newteng V<?php echo ($cms_info["XYHCMS_VER"]); ?> [<?php echo ($cms_info["XYHCMS_TIME"]); ?>]<!-- [<a href="<?php echo go_link();?>" target="_blank">查看最新版本</a>]--><br />
					操作系统：<?php echo ($os); ?> <br />
					服务器软件：<?php echo ($software); ?><br />
					MySQL 版本：<?php echo ($mysql_ver); ?><br />
					上传文件：<?php echo ($environment_upload); ?><br />	
				</div>
			</div>
			
			<div class="panel panel-default">
				<!-- Default panel contents -->		
				<div class="panel-heading">纽腾系统开发团队</div>
				<div class="panel-body">
					版权所有：<a href="<?php echo go_link('http://www.newteng.net/');?>" target="_blank">纽腾科技</a><br />
			官方网站：<a href="http://www.newteng.net" target="_blank">http://www.newteng.net</a><br />
			官方论坛：<a href="http://www.newteng.net" target="_blank">http://www.newteng.net</a> <br />
				</div>
			</div>

		</div>

		<div class="col-md-6">
			<div class="panel panel-warning">
				<!-- Default panel contents -->		
				<div class="panel-heading">Newteng安全提示</div>
				<div class="panel-body">
					<p>
						1.取消uploads目录的执行权限！
						<br/>		
						2.更改后台入口文件 newteng.php文件名；
						<br/>		
					</p>
				</div>
			</div>

			<div class="panel panel-success">
				<!-- Default panel contents -->		
				<div class="panel-heading">Newteng更新消息</div>
				<div class="panel-body">
					<p>
						<strong>当前版本：</strong>V<?php echo ($cms_info["XYHCMS_VER"]); ?> [<?php echo ($cms_info["XYHCMS_TIME"]); ?>]<br/>
						<strong>最新版本：</strong>
					</p>
				</div>
			</div>

			<!--<div class="panel panel-info">
				<!-- Default panel contents 	
				<div class="panel-heading">纽腾赞助商</div>
				<div class="panel-body"  id="XYHCMS_News">
					<p>
						<strong>当前版本：</strong>V<?php echo ($cms_info["XYHCMS_VER"]); ?> [<?php echo ($cms_info["XYHCMS_TIME"]); ?>]<br/>
						<strong>最新版本：</strong><span id="XYHCMS_LastInfo"></span>	
					</p>
				</div>
			</div>-->


		</div>


	</div>




			
	</div>	
</body>
</html>

	<script type="text/javascript" src="http://www.Newteng.com/api.php?c=Cms&a=updatecheck&version=<?php echo ($cms_info["XYHCMS_VER"]); ?>&release=<?php echo ($cms_info["XYHCMS_TIME"]); ?>&os=<?php echo ($os); ?>&php=<?php echo ($phpversion); ?>&mysql=<?php echo ($mysql_ver); ?>&software=<?php echo ($software); ?>&lang=<?php echo C('DEFAULT_LANG');?>&sae=<?php echo ($saeflag); ?>"></script>