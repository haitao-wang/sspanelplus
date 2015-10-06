<{extends file="header.tpl"}><{block name="title" prepend}>删除我的账户  - <{/block}><{block name="contents"}>
<div class="had-container">
   <{include file='user/nav.tpl'}>

<div class="section no-pad-bot" id="index-banner">
    <div class="container ">
      <h5 class="white-text">
          删除我的账户 
          <small>Deactivated My Account</small>
      </h5>
        <div class="section">
          <div class="row card-panel  light-blue lighten-5 z-depth-2">
            <div class="col s12">
              <div class="card-panel red darken-1 hoverable">
                      <span class="white-text">
                      <h5 class="header center white-text">Bye!</h5>
                      <div class="center white-text">
                        <p>如果你需要从我们的数据库移除账户信息，请在此输入密码并确认。</p>
                        <p>点击删除按钮后无后续确认，请谨慎操作。</p>
                      </div>
                 </span>     
                </div>
            </div>

            <div class="col s12">
                <div class="card-panel hoverable">
                  <div class="center black-text">
                    <div class="input-field">
                        <i class="mdi-action-lock prefix"></i>
                        <input id="pwd" type="password" name="password" class="validate" maxlength="30" required>
                        <label for="pwd">输入密码</label>
                      </div>
                        <button id="removeme" type="submit" class="btn waves-effect waves-light light-blue lighten-1 hoverable">删除我</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
<{include file='footer.tpl'}> <{/block}> <{* 以上继承内容到父模板header.tpl 中的 contents *}>
<{extends file="Public_javascript.tpl" append}> <{block name="javascript"}>
<{* 请在下面加入你的 javascript *}>
<script type="text/javascript" src="<{$resources_dir}>/asset/js/Prompt_message.js?<{$version}><{date('Ym')}>"></script>
<script type="text/javascript">
  _Prompt_msg();
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#removeme").click(function(){
            $.ajax({
                type:"POST",
                url:"_kill.php",
                dataType:"json",
                data:{
                    pwd: $("#pwd").val()
                },
                success:function(data){
                    if(data.ok){
                        $("#msg-success").openModal();
                        $("#msg-success-p").html(data.msg);
                    }else{
                        $("#msg-error").openModal();
                        $("#msg-error-p").html(data.msg);
                    }
                },
                error:function(jqXHR){
                    $("#msg-error").openModal();
                    $("#msg-error-p").html("发生错误："+jqXHR.status);
                }
            })
        })
    })
</script><{/block}> <{* 以上继承内容到父模板 Public_javascript.tpl 中的 javascript *}>