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
	    var URL = '/newteng.php?s=/Picture';
	    var APP	 = '/newteng.php?s=';
	    var SELF='/newteng.php?s=/Picture/edit/id/13/pid/5';
	    var PUBLIC='/App/Manage/View/Public';
	    var data_path = "/Data";
		var tpl_public = "/App/Manage/View/Public";
	    //-->
	</script>
	<script type="text/javascript" src="/App/Manage/View/Public/js/common.js"></script> 
	<!-- 头部js文件|自定义 -->
	
<script type="text/javascript" src="/Data/editor/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="/Data/editor/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript">
$(function(){
    var ue = UE.getEditor('inputContent',{
        serverUrl :"<?php echo U('Public/editorMethod');?>"
    });
})
</script>

<script type="text/javascript" src="/App/Manage/View/Public/js/calendar.config.js"></script>
<script type="text/javascript" src="/Data/static/jq_plugins/iColorPicker/iColorPicker.js"></script>

<script type="text/javascript">
$(function () {
	//缩略图上传
	//图片集上传
	var picture_show = $('#picture_show');
	var picture_tip = $(".picture_tip");
	$("#picture_upload").wrap("<form id='picture_form' action='<?php echo U('Public/upload',array('img_flag' => 1));?>' method='post' enctype='multipart/form-data'></form>");
    $("#picture_upload").change(function(){
    	if($("#picture_upload").val() == "") return;
    
		$("#picture_form").ajaxSubmit({
			dataType:  'json',
			beforeSend: function() {
				picture_tip.html("上传中...");
    		},
			success: function(data) {
				if(data.state == 'SUCCESS'){
					var fileSize = parseFloat(data.info[0].size/1024).toFixed(2);
					picture_tip.html(""+ data.info[0].name +" 上传成功("+ fileSize +"k)");					
					var img = data.info[0].url;
					var picture_html= '<div class="picture_item"><img src="'+ img +'" width="120"><div class="picture_del">删除</div><div class="picture_go_up">前移</div><input type="hidden" name="pictureurls[]" value="'+ img +'" /></div>'
					picture_show.append(picture_html);
				}else {
					picture_tip.html(data.state);	
				}			

			},
			error:function(xhr){
				picture_tip.html("上传失败"+xhr);

			}
		});
	});


	//jquery1.7后没有live
	//$(document).on 也行
	$('#picture_show').on('mouseenter',".picture_item",function(){
			$(this).find('.picture_go_up').show();
			$(this).find('.picture_del').show();
		}).on('mouseleave',".picture_item",function(){
			$(this).find('.picture_go_up').hide();
			$(this).find('.picture_del').hide();
		}
	); 

    $('#picture_show').on('click','.picture_go_up',function () {
        var parent = $(this).parent();
        if (parent.index() == 0){
        }else{
        	parent.prev().before(parent);
        	$(this).hide();
        	parent.find('.picture_del').hide();
        } 
        
    });

    $('#picture_show').on('click','.picture_del',function () {
        var img = $(this).next().val();//下个元素input的值 
		$(this).parent().remove();////移除父元素
		       
    });

	$('#CK_JumpUrl').click(function(){
            if($(this).prop('checked')) {
                $('#JumpUrlDiv').show();

            }else {
                $('#JumpUrlDiv').hide();
            }
            
     });
	
});





</script>
	

</head>
<body>
	<div class="xyh-content">
		
	<div class="row">
		<div class="col-lg-12">
			<h3 class="page-header"><em class="glyphicon glyphicon-cloud-upload"></em> 
			修改图片集  
		    </h3>
		</div>
		
	</div>


	<div class="row">
		<div class="col-lg-12">

				<form method='post' class="form-horizontal" id="form_do" name="form_do" action="<?php echo U('edit');?>">											

					<div class="form-group">
						<label for="inputTtitle" class="col-sm-2 control-label">标题</label>
						<div class="col-sm-9">
							<input type="text" name="title" id="inputTtitle" value="<?php echo ($vo["title"]); ?>" class="form-control" placeholder="标题" required="required" />									
						</div>
					</div>

					<div class="form-group">
						<label for="inputColor" class="col-sm-2 control-label">标题颜色</label>
						<div class="col-sm-5">
							<input type="text" name="color" id="inputColor" value="<?php echo ($vo["color"]); ?>" class="form-control  iColorPicker" placeholder="标题颜色" />									
						</div>
					</div>

					<div class="form-group">
						<label for="inputColor" class="col-sm-2 control-label">自定义属性</label>
						<div class="col-sm-9">
							<?php if(is_array($flagtypelist)): foreach($flagtypelist as $key=>$v): ?><label class="checkbox-inline"><input type='checkbox' name='flags[]' value='<?php echo ($key); ?>' <?php if($key == B_JUMP): ?>id="CK_JumpUrl"<?php endif; ?>  <?php if(($vo['flag'] & $key) == $key): ?>checked="checked"<?php endif; ?> /> <?php echo ($v); ?></label><?php endforeach; endif; ?>								
						</div>
					</div>

					<div class="form-group" id="JumpUrlDiv" <?php if(($vo["flag"] & B_JUMP) == 0): ?>style="display:none;"<?php endif; ?>>
						<label for="inputJumpurl" class="col-sm-2 control-label">跳转网址</label>
						<div class="col-sm-9">
							<input type="text" name="jumpurl" id="inputJumpurl" value="<?php echo ($vo["jumpurl"]); ?>" class="form-control" placeholder="跳转网址" />									
						</div>
					</div>

					<div class="form-group">
						<label for="inputProName" class="col-sm-2 control-label">所属栏目</label>
						<div class="col-sm-9">
							<select name="cid" class="form-control">
								<?php if(is_array($cate)): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v["id"]); ?>" <?php if($vo['cid'] == $v['id']): ?>selected="selected"<?php endif; ?>><?php echo ($v["delimiter"]); echo ($v["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
							</select>									
						</div>
					</div>

					<div class="form-group">
						<label for="BrowerPicture" class="col-sm-2 control-label">图集</label>	
						<div class="col-sm-9">
								<div class="btn btn-success up-picture-btn">
							        <span><em class="glyphicon glyphicon-plus-sign"></em>上传多图</span>										        
							        <input id="picture_upload" type="file" name="mypic1">
							    </div>							
						</div>
					</div>


					<div class="form-group">
						<label for="" class="col-sm-2 control-label"></label>
						<div class="col-sm-9">
							<div class="picture_tip"></div>
							<div id="picture_show">
								<?php if(is_array($vo['pictureurls'])): foreach($vo['pictureurls'] as $key=>$value): ?><div class="picture_item"><img src="<?php echo ($value["url"]); ?>" width="120"><div class="picture_del">删除</div><div class="picture_go_up">前移</div><input type="hidden" name="pictureurls[]" value="<?php echo ($value["url"]); ?>" /></div><?php endforeach; endif; ?>
							</div>							
						</div>
					</div>

					<div class="form-group">
						<label for="inputKeywords" class="col-sm-2 control-label">关键词</label>
						<div class="col-sm-9">
							<input type="text" name="keywords" id="inputKeywords" class="form-control" value="<?php echo ($vo["keywords"]); ?>" placeholder="多关键词之间用“,”隔开" />						
						</div>
					</div>

					<div class="form-group">
						<label for="inputDescription" class="col-sm-2 control-label">摘要</label>
						<div class="col-sm-9">
							<textarea name="description" id="inputDescription" class="form-control"><?php echo ($vo["description"]); ?></textarea>								
						</div>
					</div>
					<div class="form-group">
						<label for="inputCopyfrom" class="col-sm-2 control-label">来源</label>
						<div class="col-sm-9">
							<input type="text" name="copyfrom" id="inputCopyfrom" value="<?php echo ($vo["copyfrom"]); ?>" class="form-control"  placeholder="来源" />							
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputContent" class="col-sm-2 control-label">内容</label>
						<div class="col-sm-9">
							<textarea name="content" id="inputContent" style="height: 370px;"><?php echo ($vo["content"]); ?></textarea>						
						</div>
					</div>					

					<div class="form-group">
						<label for="inputPublishtime" class="col-sm-2 control-label">发布时间</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="publishtime" id="inputPublishtime" value="<?php echo (date('Y-m-d H:i:s',$vo["publishtime"])); ?>">
			                <script type="text/javascript">
			                    Calendar.setup({
			                        weekNumbers: true,
			                        inputField : "inputPublishtime",
			                        trigger    : "inputPublishtime",
			                        dateFormat: "%Y-%m-%d %H:%M:%S",
			                        showTime: true,
			                        minuteStep: 1,
			                        onSelect   : function() {this.hide();}
			                    });
			                </script>						
						</div>
					</div>


					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">评论</label>
						<div class="col-sm-9">
							<label class="radio-inline">
							 	<input type="radio" name="commentflag" value="1" <?php if($vo["commentflag"] == 1): ?>checked="checked"<?php endif; ?> />允许				
							 </label>
							<label class="radio-inline">
							 	<input type="radio" name="commentflag" value="0" <?php if($vo["commentflag"] == 0): ?>checked="checked"<?php endif; ?> />禁止		
							 </label>	
						</div>
					</div>		
					
					<div class="row margin-botton-large">
						<div class="col-sm-offset-2 col-sm-9">
							<input type="hidden" name="id" value="<?php echo ($vo["id"]); ?>" />
							<input type="hidden" name="pid" value="<?php echo ($pid); ?>" />
							<div class="btn-group">
								<button type="submit" class="btn btn-primary"> <i class="glyphicon glyphicon-saved"></i>
									保存
								</button>
								<button type="button" onclick="goUrl('<?php echo U('index');?>')" class="btn btn-default"> <i class="glyphicon glyphicon-chevron-left"></i>
									返回
								</button>
							</div>
						</div>
					</div>
				</form>
	
		</div>
	</div>

		



			
	</div>	
</body>
</html>