<?php if (!defined('THINK_PATH')) exit();?> <title>重庆才扬科技有限公司</title>
<!DOCTYPE html>
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

<link href="/Public/Home/caiyang/css/index.css" rel="stylesheet">
  
	<!--主体内容开始-->
    <div id="wrap" class="wrapper">
        <div class="pages" id="pages">
            <div class="page page1">
                <div id="slide" class="slide">
				<?php
 $_typeid = 24; $_keyword = ""; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid>0 || substr($_typeid,0,1) == '$') { $_selfcate = Common\Lib\Category::getSelf(get_category(), $_typeid); $_tablename = strtolower($_selfcate['tablename']); $ids = Common\Lib\Category::getChildsId(get_category(), $_typeid, true); $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($_keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (0 > 0) { $count = D2('ArcView',"$_tablename")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "3"; } $_list = D2('ArcView',"$_tablename")->nofield('content,pictureurls')->where($where)->order("id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['pictureurls'])) $list['pictureurls'] = get_picture_array($list['pictureurls']); ?><div>
                        <div class="bgs" style="background-image: url(<?php echo ($list["litpic"]); ?>);"></div>
                        <div class="index_inner">
                            <div class="index_box solgan">
                                <div class="container">
                                    <h3><?php echo ($list["shorttitle"]); ?></h3>
                                    <h2><?php echo ($list["title"]); ?></h2>
                                </div>
                            </div>
                        </div>
                    </div><?php endforeach;?>
					
                   
                </div>
                <div class="index_inner">
                    <div class="index_box">
                        <div class="container index_nav">
                            <ul id="index_nav" class="clearfix">
                                <li><a href="javascript:;" data-index="1"><span>业务</span><i class="iconfont icon-about"></i></a></li>
                                <li><a href="javascript:;" data-index="2"><span>案例</span><i class="iconfont icon-service"></i></a></li>
                                <li><a href="javascript:;" data-index="3"><span>客户</span><i class="iconfont icon-custom"></i></a></li>
                                <li><a href="javascript:;" data-index="4"><span>新闻</span><i class="iconfont icon-news"></i></a></li>
                                <li><a href="javascript:;" data-index="5"><span>联系</span><i class="iconfont icon-contact"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="arrow"><span></span><i class="iconfont icon-arrow"></i></div>
            </div>
            <div class="page page2">
                <div class="index_inner">
                    <div class="index_box item_box">
                        <h2><a href="">服务项目</a></h2>
                        <h5><span class="t">Business</span><span class="page_icon iconfont icon-about"></span></h5>
                        <div class="container">
                            <div class="about_box item_bd">
							
							 <?php
 $_typeid = intval(1); $_type = "son"; $_temp = explode(',', "3"); $_temp[0] = $_temp[0] > 0? $_temp[0] : 10; if (isset($_temp[1]) && intval($_temp[1]) > 0) { $_limit[0] = $_temp[0]; $_limit[1] = intval($_temp[1]); }else { $_limit[0] = 0; $_limit[1] = $_temp[0]; } if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $__catlist = get_category(1); if (0) { $__catlist = Common\Lib\Category::getLevelOfModelId($__catlist, 0); } if (1 == 0) { $__catlist = Common\Lib\Category::clearPageAndLink($__catlist); } if($_typeid == 0 || $_type == 'top') { $_catlist = Common\Lib\Category::toLayer($__catlist); }else { if ($_type == 'self') { $_typeinfo = Common\Lib\Category::getSelf($__catlist, $_typeid ); $_catlist = Common\Lib\Category::toLayer($__catlist, 'child', $_typeinfo['pid']); }else { $_catlist = Common\Lib\Category::toLayer($__catlist, 'child', $_typeid); } } foreach($_catlist as $autoindex => $catlist): if($autoindex < $_limit[0]) continue; if($autoindex >= ($_limit[1]+$_limit[0])) break; $catlist['url'] = get_url($catlist); ?><div class="card">
                                <a href="<?php echo ($catlist["url"]); ?>">
                                    <div class="cont">
                                        <div class="card_image" style="background-image: url(<?php echo ($catlist["catpic"]); ?>);"></div>
                                        <div class="card_detail">
										
												
												<?php if($catlist['id']==15){ ?>
                                                 <span class="icon iconfont icon-pc"></span>
											    <?php } if($catlist['id']==16){ ?>
												 <span class="icon iconfont icon-pm"></span>
												<?php } if($catlist['id']==17){ ?>
												 <span class="icon iconfont icon-mb"></span>
												<?php } ?>
												
												
                                                <span class="text">
                                                    <h3><?php echo ($catlist["name"]); ?></h3>
                                                    <p class="line"><?php echo ($catlist["description"]); ?></p>
                                                    <p class="text-r"><span class="more">Learn More &gt;</span></p>
                                                </span>                                        
										</div>
                                    </div>
                                </a>                                
								</div><?php endforeach;?>
                             
                            </div>
                        </div>
                    </div>
                </div>
                <div class="arrow"><span></span><i class="iconfont icon-arrow"></i></div>
            </div>
            <div class="page page3">
                <div class="index_inner">
                    <div class="index_box item_box">
                        <h2><a href="#">成功案例</a></h2>
                        <h5><span class="t">Cases</span><span class="page_icon iconfont icon-service"></span></h5>
                        <div class="container">
                            <div class="case_box item_bd">
                               	
								<div class="case_slide">
								<!--
                                   <?php
 $_typeid = 5; $_keyword = ""; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid>0 || substr($_typeid,0,1) == '$') { $_selfcate = Common\Lib\Category::getSelf(get_category(), $_typeid); $_tablename = strtolower($_selfcate['tablename']); $ids = Common\Lib\Category::getChildsId(get_category(), $_typeid, true); $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($_keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (0 > 0) { $count = D2('ArcView',"$_tablename")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "12"; } $_list = D2('ArcView',"$_tablename")->nofield('content,pictureurls')->where($where)->order("id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['pictureurls'])) $list['pictureurls'] = get_picture_array($list['pictureurls']); $arr[]=$list; $json="data-json='"; $json.='{"data":['; foreach($arr as $val){ $json.='{"url":"'.$val['url'].'","img":"'.$val['litpic'].'","type":"'.$val['catename'].'","name":"'.$val['title'].'"},'; } $json.="]}'"; endforeach;?>
								   <div id="case_slide" <?php echo $json;?> > </div>
								   -->
								   
								  
								    <div id="case_slide" data-json='{"data":[
                                         {"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case1.jpg","type":"APP推广服务案例","name":"暴走地下城"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case2.jpg","type":"APP推广服务案例","name":"苍穹变"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case3.jpg","type":"APP推广服务案例","name":"放开那三国2"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case4.jpg","type":"APP推广服务案例","name":"海航王"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case5.jpg","type":"APP推广服务案例","name":"君王2"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case6.jpg","type":"APP推广服务案例","name":"少年三国志"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case7.jpg","type":"APP推广服务案例","name":"神武2"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case8.jpg","type":"APP推广服务案例","name":"妖怪来了"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case9.jpg","type":"APP推广服务案例","name":"崩坏3"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case10.jpg","type":"APP推广服务案例","name":"王者荣耀"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case11.jpg","type":"APP推广服务案例","name":"天龙八部手游"}
                                        ,{"url":"index.php?s=/List/index/cid/5.html","img":"/Public/Home/caiyang/images/case12.jpg","type":"APP推广服务案例","name":"SUP多人赛车"}
                                    ]}'>
                                    </div>
								

								   
								   
                               
                             </div>
								
								
								
                                <div class="arr">
                                    <div class="case_arrow_l"><i class="iconfont icon-left"></i></div>
                                    <div class="case_arrow_r"><i class="iconfont icon-right"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="arrow"><span></span><i class="iconfont icon-arrow"></i></div>
            </div>
            <div class="page page4">
                <div class="index_inner">
                    <div class="index_box item_box">
                        <h2><a href="kehuminglu.html">我们的客户</a></h2>
                        <h5><span class="t">Clients</span></h5>
                        <div class="container">
                            <div class="custom_box item_bd">
                                <div class="clearfix">
                                    <div class="item"><div><span></span><img src="/Public/Home/caiyang/images/logo1.png" alt="海信集团"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo2.png" alt="中国中化"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo3.png" alt="青岛郑建集团"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo4.png" alt="国家电网青岛公司"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo5.png" alt="青岛承建地产 青岛印象"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo6.png" alt="青岛泰凯英"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo7.png" alt="青岛宝龙地产"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo8.png" alt="青岛亨达集团"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo9.png" alt="青岛市图书馆"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo10.png"  alt="青岛市博物馆"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo10.png" alt="青岛力图数字科技网站客户"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo10.png" alt="青岛力图数字科技网站客户"></div></div><div class="item">
                                    <div><span></span><img src="/Public/Home/caiyang/images/logo10.png" alt="青岛力图数字科技网站客户"></div></div>
                                    <div class="city"></div>
                                    <div class="names"><span>我们的客户</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="arrow"><span></span><i class="iconfont icon-arrow"></i></div>
            </div>
            <div class="page page5">
                <div class="index_inner">
                    <div class="index_box item_box">
                        <h2><a href="newscenter.html">公司资讯</a></h2>
                        <h5><span class="t">News Center</span><span class="page_icon iconfont icon-news"></span></h5>
                        <div class="container">
                            <div class="news_box item_bd">
                                <ul>
								
								<?php
 $_typeid = 2; $_keyword = ""; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid>0 || substr($_typeid,0,1) == '$') { $_selfcate = Common\Lib\Category::getSelf(get_category(), $_typeid); $_tablename = strtolower($_selfcate['tablename']); $ids = Common\Lib\Category::getChildsId(get_category(), $_typeid, true); $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($_keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (0 > 0) { $count = D2('ArcView',"$_tablename")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "3"; } $_list = D2('ArcView',"$_tablename")->nofield('content,pictureurls')->where($where)->order("id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['pictureurls'])) $list['pictureurls'] = get_picture_array($list['pictureurls']); ?><li>
                                      <a href="<?php echo ($list["url"]); ?>">
                                            <p class="type"><span><?php echo ($list["catename"]); ?></span>/<?php echo (date('Y-m-d',$list["publishtime"])); ?></p>
                                            <h4 class="title"><?php echo ($list["title"]); ?></h4>
                                            <p><?php echo ($list["description"]); ?>...</p>
                                            <p class="more">Learn More <i class="iconfont icon-right"></i></p>
                                        </a>                                    
								</li><?php endforeach;?>	
										

                              </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="arrow"><span></span><i class="iconfont icon-arrow"></i></div>
            </div>
            <div class="page page6">
                <div class="index_inner">
                    <div class="index_box item_box">
                        <h2><a href="contact.html">联系我们</a></h2>
                        <h5><span class="t">Contact Us</span><span class="page_icon iconfont icon-contact"></span></h5>
                        <div class="container-fluid">
                            <div class="contact_box item_bd">
                                <ul>
                                    <li>
                                        <div>
                                            <div class="contact">
                                                <div>
                                                <ul class="clearfix">
                                                    <li><span class="icon iconfont icon-qq"></span><span class="text"><p class="tips">QQ</p><p class="num"><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php
 $block = get_block("qq"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?>&site=qq&menu=yes" target="_blank"><?php
 $block = get_block("qq"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?></a></p></span></li>
                                                    <li><span class="icon iconfont icon-tel"></span><span class="text"><p class="tips">电话</p><p class="num"><a href="tel:023-63001336" target="_blank">023-63001336</a></p></span></li>
                                                    <li><span class="icon iconfont icon-place"></span><span class="text"><p class="tips">地址</p><p>重庆市渝中区石油路万科锦城3号楼21</p></span></li>
                                                    <li><span class="icon iconfont icon-mail"></span><span class="text"><p class="tips">E-Mail</p><p><?php
 $block = get_block("email"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?></p></span></li>
                                                </ul>
                                                </div>
                                            </div>
                                            <div class="solgan">
                                                <div>
                                                    <p>推广为品牌巩固地位！</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="map" style="text-align:center;background:none;height:627px;overflow:hidden;">
												<?php
 $block = get_block("map"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?>
										</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="nav_index" class="nav_index">
        <div>
            <span class="active"></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
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

	
    <script src="/Public/Home/caiyang/js/index.js"></script>