<!-- jQuery 2.1.3 -->
<script src="<{$resources_dir}>/asset/js/jQuery.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="<{$resources_dir}>/asset/js/bootstrap.min.js" type="text/javascript"></script>
<!-- SlimScroll -->
<script src="<{$resources_dir}>/asset/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src='<{$resources_dir}>/asset/plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script src="<{$resources_dir}>/asset/js/app.min.js" type="text/javascript"></script>
<!-- 选择风格模板 -->
<script>
    (function() { 
    function async_load(){ 
	    var arryAll = [];  
	    // 异步加载的js文件
	    arryAll.push("<{$resources_dir}>/asset/js/templates.js");  
	    // arryAll.push("<{$resources_dir}>/asset/js/*.js"); 
	    arryAll.forEach(function(e){ 
	        var s = document.createElement('script'); 
	        s.type = 'text/javascript'; 
	        s.async = true; 
	        var x = document.getElementsByTagName('script')[0];
	        s.src = e; 
	        x.parentNode.insertBefore(s, x); 
	    })  
    } 
    if (window.attachEvent) {
    window.attachEvent('onload', async_load); 
    }else {
    window.addEventListener('load', async_load, false);
	} 
    })(); 
</script>