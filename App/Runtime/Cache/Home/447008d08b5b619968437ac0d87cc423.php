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
        <div class="header_hd" style="background-image:url(/Public/Home/caiyang/images/head-gaoduan.jpg); background-repeat:no-repeat">
            <div class="container">
                <h3>客户案例</h3>
                <h2>精通各类APP推广，全面覆盖苹果&安卓</h2>
                <div id="case_tab" class="tab">
                    <div>
                        <?php
 $_typeid = intval(5); $_type = "son"; $_temp = explode(',', "10"); $_temp[0] = $_temp[0] > 0? $_temp[0] : 10; if (isset($_temp[1]) && intval($_temp[1]) > 0) { $_limit[0] = $_temp[0]; $_limit[1] = intval($_temp[1]); }else { $_limit[0] = 0; $_limit[1] = $_temp[0]; } if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $__catlist = get_category(1); if (0) { $__catlist = Common\Lib\Category::getLevelOfModelId($__catlist, 0); } if (1 == 0) { $__catlist = Common\Lib\Category::clearPageAndLink($__catlist); } if($_typeid == 0 || $_type == 'top') { $_catlist = Common\Lib\Category::toLayer($__catlist); }else { if ($_type == 'self') { $_typeinfo = Common\Lib\Category::getSelf($__catlist, $_typeid ); $_catlist = Common\Lib\Category::toLayer($__catlist, 'child', $_typeinfo['pid']); }else { $_catlist = Common\Lib\Category::toLayer($__catlist, 'child', $_typeid); } } foreach($_catlist as $autoindex => $catlist): if($autoindex < $_limit[0]) continue; if($autoindex >= ($_limit[1]+$_limit[0])) break; $catlist['url'] = get_url($catlist); ?><a href="<?php echo ($catlist["url"]); ?>" <?php if($cid==$catlist['id']){ echo 'class="active"'; } ?> ><?php echo ($catlist["name"]); ?></a><?php endforeach;?>
                       
                         
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
           
            <div class="content">
            
               


                <div class="row">
				<?php
 $_typeid = $cid; $_keyword = ""; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid>0 || substr($_typeid,0,1) == '$') { $_selfcate = Common\Lib\Category::getSelf(get_category(), $_typeid); $_tablename = strtolower($_selfcate['tablename']); $ids = Common\Lib\Category::getChildsId(get_category(), $_typeid, true); $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($_keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (15 > 0) { $count = D2('ArcView',"$_tablename")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 15, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_list = D2('ArcView',"$_tablename")->nofield('content,pictureurls')->where($where)->order("publishtime asc")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['pictureurls'])) $list['pictureurls'] = get_picture_array($list['pictureurls']); ?><div class="case_item col-md-4 col-sm-6 col-xs-6">
                        <a href="<?php echo ($list["url"]); ?>" target="_blank"><span><img src="<?php echo ($list["litpic"]); ?>" alt="<?php echo ($list["title"]); ?>">
                                <span><span><span><p class="type"><?php echo ($list["catename"]); ?></p><h3><?php echo ($list["title"]); ?></h3><i class="more iconfont icon-right"></i></span></span></span></span>
                        <p><?php echo ($list["title"]); ?></p></a>
                    </div><?php endforeach;?>
					
                    
                </div>
                <div class="page"><?php echo ($page); ?></div>
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