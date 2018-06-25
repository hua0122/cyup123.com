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
    <SCRIPT language=JavaScript> 
function xxg()
{
  if (form1.username.value=="")
   { 
  alert("请填写姓名！");
  form1.username.focus();
  return false;
   } 
    if (form1.email.value.length!= 0)
   {
    for (i=0; i<form1.email.value.length; i++)
     if (form1.email.value.charAt(i)=="@")
      break;
    if (i==form1.email.value.length)
    {
     alert("无效的email地址！");
     form1.email.focus();
     return false;
    } 
    }
else
       {
        alert("请填写email！");
   form1.email.focus();
   return false;
	 }
   if (form1.content.value=="")
   { 
  alert("请填写内容！");
  form1.content.focus();
  return false;
   }
   
   if (form1.tel.value.length<7 || form1.tel.value.length>13)
   { 
	alert("联系电话格式不正确");
	form1.tel.focus();
	return false;
	 } 

  }
</script>
  
    <div class="wrapper">
        <div class="header_hd" style="background-image:url(/Public/Home/caiyang/images/contactus.jpg); background-repeat:no-repeat">
            <div class="container">
                <h3>联系我们</h3>
                <h2>多年丰富的推广经验，专业的技术团队！</h2>
                <!--<div id="case_tab" class="tab">
                    <div>
                        <a href="###" class="active">联系我们</a>
                        <span></span>
                    </div>
                </div>-->
            </div>
        </div>
        <div class="container">
            <div class="content">
                <h4>联系方式</h4>
                <div class="line"></div>
                <div class="row mb">
                    <div class="contact_item col-xs-6 col-sm-6 col-md-3">
                        <span class="icon iconfont icon-tel"></span><span class="text"><p class="tips">电话</p><p class="num">023-63001336</p></span>
                    </div>
                    <div class="contact_item col-xs-6 col-sm-6 col-md-3">
                        <span class="icon iconfont icon-qq"></span><span class="text"><p class="tips">QQ</p><p class="num"><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php
 $block = get_block("qq"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?>&site=qq&menu=yes" target="_blank"><?php
 $block = get_block("qq"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?></a></p></span>
                    </div>
                    <div class="contact_item col-xs-6 col-sm-6 col-md-3">
                        <span class="icon iconfont icon-mail"></span><span class="text"><p class="tips">E-Mail</p><p><?php
 $block = get_block("email"); $block_content = ''; if ($block) { if ($block['blocktype'] == 2) { if (!0) { $block_content = '<img src="'. $block['content'] .'" />'; }else { $block_content = $block['content']; } }else { if(0) { $block_content = str2sub(strip_tags($block['content']), 0, 0); }else { $block_content = $block['content']; } } } echo $block_content; ?></p></span>
                    </div>
                    <div class="contact_item col-xs-6 col-sm-6 col-md-3">
                        <span class="icon iconfont icon-place"></span><span class="text"><p class="tips">地址</p><p>重庆市渝中区石油路万科锦城3号楼21</p></span>
                    </div>
                </div>
                <h4>在线留言</h4>
                <div class="line"></div>
                
               

                <div class="row forms">
                    <div class="col-sm-5 col-xs-6 col-md-5">
                    
                    <form action="/index.php?s=/Guestbook/add.html" enctype="multipart/form-data" id="form1" onSubmit="return xxg();" method="post">
<input type="hidden" name="action" value="post" />
<input type="hidden" name="diyid" value="1" />
<input type="hidden" name="do" value="2" />


<div class="forms_label">
                            <input type="text" name='username' id='username' class="form-control" placeholder="姓名"><i class="iconfont icon-form-user"></i>
                        </div><div class="forms_label">
                            <input type="text" name='tel' id='tel' class="form-control" placeholder="电话"><i class="iconfont icon-form-tel"></i>
                        </div><div class="forms_label">
                            <input type="text" name='email' id='email' class="form-control" placeholder="E-mail"><i class="iconfont icon-form-mail"></i>
                        </div>
                    </div><div class="col-sm-7 col-xs-6 col-md-7">
                        <div class="forms_label">
                            <textarea  name='content' id='content' class="form-control" cols="30" rows="10" placeholder="留言"></textarea><i class="iconfont icon-form-msg"></i>
                        </div>
						
				 
				
                        <div class="form_label text-r">
                            <input  type="submit" class="forms_btn" name="submit" value="提交" />
                        </div>
                    </div>
                </div>
                </form>

            </div>
        </div>
 
<!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

  <!--百度地图容器-->
  <div class="map" style="width:auto;height:627px;border:#ccc solid 1px;" id="dituContent"></div>

<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(106.511997,29.544117);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"重庆才扬科技有限公司",content:"电话：023-63001336<br/>地址：渝中区大坪石油路万科锦城3号楼21-22",point:"106.511952|29.542609",isOpen:1,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>



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