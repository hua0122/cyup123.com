<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title><?php echo ($title); ?>-重庆才扬科技有限公司</title>
    <meta name="keywords" content="重庆才扬科技有限公司" />
    <meta name="description" content="重庆才扬科技有限公司" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/Public/Home/caiyang/css/bootstrap.min.css" rel="stylesheet">
    <link href="/Public/Home/caiyang/css/grayscale.css" rel="stylesheet">
    
    <link href="/Public/Home/caiyang/images/favicon.ico" rel="shortcut icon" />

</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <div class="nav_mask"></div>
    <div class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i></i><i></i><i></i>                </button>
                <h1><a class="navbar-brand" href="http://www.cyup123.com/">
				<?php
 $block = get_block("logo"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?>
				</a></h1>
            </div>
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="http://www.cyup123.com/" <?php if($cid==0){ ?> class="active" <?php } ?> >首页</a></li>
					<?php
 $_typeid = 0; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $_navlist = get_category(1); if($_typeid == 0) { $_navlist = Common\Lib\Category::toLayer($_navlist); }else { $_navlist = Common\Lib\Category::toLayer($_navlist, 'child', $_typeid); } foreach($_navlist as $autoindex => $navlist): $navlist['url'] = get_url($navlist); ?><li><a href="<?php echo ($navlist["url"]); ?>" <?php if($cid==$navlist['id']){ ?> class="active" <?php } ?> ><?php echo ($navlist["name"]); ?> </a></li><?php endforeach;?>
                   
                </ul>
                <span class="follow"></span>
            </div>
        </div>
    </div>
<link href="/Public/Home/caiyang/css/main.css" rel="stylesheet">

<!--主体内容开始-->
    <div class="wrapper">
        <div class="about_hd">
            <div class="container">
                <div class="row">
                  <div class="col-xs-12 col-sm-4 col-md-6"><h2>关于我们</h2><h4>Since 2005</h4></div>
                  <div class="col-xs-12 col-sm-8 col-md-6">
                      <div class="infos">
                            <?php echo ($cate["content"]); ?>
                            <a href="http://www.cyup123.com//index.php?s=/List/index/cid/14.html" class="about_btn"><span>立即与我们联系</span></a>
                        </div>
                  </div>
                </div>
            </div>
        </div>
		
        <div class="container">
	
			 <div class="case_logo content hidden-xs" style="margin-bottom:20px">
                <div class="case_num">
                    <span class="case_arrow_l iconfont icon-left"></span><span class="case_arrow_r iconfont icon-right"></span>
                </div>
                <p class="tit"><i class="iconfont icon-about"></i>客户案例</p>
                <div id="case_slide" class="case_slide">
                    <div>
					<?php
 $_typeid = 25; $_keyword = ""; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid>0 || substr($_typeid,0,1) == '$') { $_selfcate = Common\Lib\Category::getSelf(get_category(), $_typeid); $_tablename = strtolower($_selfcate['tablename']); $ids = Common\Lib\Category::getChildsId(get_category(), $_typeid, true); $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($_keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (0 > 0) { $count = D2('ArcView',"$_tablename")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "5"; } $_list = D2('ArcView',"$_tablename")->nofield('content,pictureurls')->where($where)->order("publishtime asc")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['pictureurls'])) $list['pictureurls'] = get_picture_array($list['pictureurls']); ?><span><span><a  target="_blank"><img src="<?php echo ($list["litpic"]); ?>" class="logo1" alt="<?php echo ($list["title"]); ?>"></a><img src="<?php echo ($list["litpic"]); ?>" class="logo2" alt="<?php echo ($list["title"]); ?>"></span></span><?php endforeach;?>
					</div>
					
                    <div>
                    <?php
 $_typeid = 25; $_keyword = ""; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid>0 || substr($_typeid,0,1) == '$') { $_selfcate = Common\Lib\Category::getSelf(get_category(), $_typeid); $_tablename = strtolower($_selfcate['tablename']); $ids = Common\Lib\Category::getChildsId(get_category(), $_typeid, true); $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($_keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (0 > 0) { $count = D2('ArcView',"$_tablename")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "5,5"; } $_list = D2('ArcView',"$_tablename")->nofield('content,pictureurls')->where($where)->order("publishtime asc")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['pictureurls'])) $list['pictureurls'] = get_picture_array($list['pictureurls']); ?><span><span><a  target="_blank"><img src="<?php echo ($list["litpic"]); ?>" class="logo1" alt="<?php echo ($list["title"]); ?>"></a><img src="<?php echo ($list["litpic"]); ?>" class="logo2" alt="<?php echo ($list["title"]); ?>"></span></span><?php endforeach;?>   
					</div>
                    <div>
                      <?php
 $_typeid = 25; $_keyword = ""; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid>0 || substr($_typeid,0,1) == '$') { $_selfcate = Common\Lib\Category::getSelf(get_category(), $_typeid); $_tablename = strtolower($_selfcate['tablename']); $ids = Common\Lib\Category::getChildsId(get_category(), $_typeid, true); $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($_keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (0 > 0) { $count = D2('ArcView',"$_tablename")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10,5"; } $_list = D2('ArcView',"$_tablename")->nofield('content,pictureurls')->where($where)->order("publishtime asc")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['pictureurls'])) $list['pictureurls'] = get_picture_array($list['pictureurls']); ?><span><span><a  target="_blank"><img src="<?php echo ($list["litpic"]); ?>" class="logo1" alt="<?php echo ($list["title"]); ?>"></a><img src="<?php echo ($list["litpic"]); ?>" class="logo2" alt="<?php echo ($list["title"]); ?>"></span></span><?php endforeach;?> 
					</div>
                   
                </div>
            </div>
			
			 <div class="content">
                <h4>榜单大促销，联系一下会改变你应用的命运！</h4>
                <div class="line"></div>
                <div class="row mb" style="padding:20px;">
				<p>
                  亲，才扬科技奋发图强，再次席卷市场而来！改变应用命运的时刻就在此时，我们专做企业化营销，为一切应用发现铺平道路！<br><br>

亲，为什么要选择我们？因为我们用最低的价格做最专业的事。例：有人优化排名会出现收到警告，降权重，跳出市场，剔排名，都是因为没有经过严格的测试，请给我们的一次机会，你会了解到我们的专业，我们都会有15款以上自家新游进行亲测，保障用户的一切利益，非黑卡ID。
<br><br>
亲，注意了，我们只为筹集老客户，你获得的价格和质量都将是最完美的，期待你的联系。
<br><br>
<span style="font-weight:800">业务主体：</span>iTunes付费、免费、畅销、aso、热搜、安装、激活、升级等业务主体。Android各大市场榜单、应用宝、安智、安卓、91、百度、九游等或下载量、激活量、应用包留存都可@才扬
<br><br>
<span style="font-weight:800">业务实力：</span>上前部手机随时更换，给你带来全新的自然量，让你不在担心效果的不达标，领导的批评等外界因素。
</p>
                </div>
             

            </div>
			
			
			
			
			
        </div>

    </div>
    
	<div class="footer">
        <div class="container-fluid">
            <div class="col-xs-12 col-sm-6 col-md-6">
                <p>Copyright ©  2014-2017 重庆才扬科技有限公司 ALL rights reserved. 渝ICP备08132850号</p>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6">
                <p class="link"><a href="http://www.newteng.net" target="_blank">纽腾网站建设</a> <a href="http://www.newteng.net" target="_blank">纽腾网站设计</a> <a href="http://www.newteng.net" target="_blank">纽腾网站制作</a> <a href="http://www.newteng.net" target="_blank">纽腾网络公司</a></p>
            </div>
</div>
    </div>
	 <div id="chat" class="chat">
        <div>
        <div>
            <a href="tel:023-63001336" class="tel" target="_blank"><span><i class="iconfont icon-tel"></i>023-63001336</span></a>
            <a href="http://wpa.qq.com/msgrd?v=3&uin=<?php
 $block = get_block("qq"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?>&site=qq&menu=yes" class="qq" target="_blank"><span><i class="iconfont icon-qq"></i><?php
 $block = get_block("qq"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?></span></a>
            <a href="mailto:<?php
 $block = get_block("email"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?>" class="mail" target="_blank"><span><i class="iconfont icon-mail"></i><?php
 $block = get_block("email"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?></span></a>        </div>
        </div>
    </div>
    <script src="/Public/Home/caiyang/js/jquery.js"></script>
    <script src="/Public/Home/caiyang/js/bootstrap.min.js"></script>
    <script src="/Public/Home/caiyang/js/verder.min.js"></script>
    <script src="/Public/Home/caiyang/js/grayscale.js"></script>
   
</body>
</html>

	
	
  
<script src="/Public/Home/caiyang/js/main.js"></script>