<{extends file="header.tpl"}><{block name="title" prepend}>统计信息 - <{/block}><{block name="contents"}>
<div class="had-container">
   <{include file='user/nav.tpl'}>

<div class="section no-pad-bot" id="index-banner">
    <div class="container ">
      <h5 class="white-text">
          <{$site_name}> 统计信息
          <small>Statistics</small>
      </h5>

        <div class="section">
          <div class="row card-panel color-panel light-blue lighten-5 z-depth-2">
            <div class="col s12">
              <div class="card-panel orange darken-2 hoverable">
                      <span class="white-text">
                      <h5 class="header center white-text">注意！</h5>
                      <div class="center white-text">
                        <p>流量统计仅供参考，在线人数有一小会儿的延迟。</p>
                      </div>
                 </span>     
                </div>
            </div>

            <div class="col s12">
                <div class="card-panel hoverable">
                  <div class="center black-text">
                    <p>当前时间：<{$time}></p>
                    <p>当前版本：<code><{$version}></code></p>
                    <p><{$site_name}> 已经产生流量<code><{$getTrafficGB}></code>GB。</p>
                    <p>注册用户：<code><{$allUserCount}> </code></p>
                    <p>已经有<code><{$activedUserCount}></code>个用户使用了<{$site_name}> 服务。</p>
                    <p>签到用户：<code><{$checkinUser}></code></p>
                    <p>24小时签到用户：<code><{$CheckInUser_24}></code></p>
                    <p>过去1小时在线人数：<code><{$onlineUserCount_1_h}></code>。</p>
                    <p>过去5分钟在线人数：<code><{$onlineUserCount_5_i}></code>。</p>
                    <p>过去1分钟在线人数：<code><{$onlineUserCount_1_i}></code>。</p>
                    <p>实时在线人数：<code><{$onlineUserCount}></code>。</p>
                    <p>过去24小时在线人数：<code><{$onlineUserCount_24_h}></code>。</p>
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

<{/block}> <{* 以上继承内容到父模板 Public_javascript.tpl 中的 javascript *}>