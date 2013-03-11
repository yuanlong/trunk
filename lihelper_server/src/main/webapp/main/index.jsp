<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>服务器管理之旅</title> 
	<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="lib/bootstrap/css/bootstrap-responsive.css">
	<link rel="stylesheet" href="css/lihelper.css">	
	<link rel="stylesheet" type="text/css" href="css/ext-all.css" />
</head>
<body class="app">

<div class="topbar">
	<div class="container"> 
		<h3 class="logo"><a href="http://www.lihelper.com">Lihelper</a></h3>
		<div class="nav-user">
			<ul class="nav nav-pills">			
				<li><a href=""><i class="icon-user"></i>交流社区</a></li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">我的Lihelper <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="">修改密码</a></li>
						<li class="divider"></li>
						<li><a href="">安全退出</a></li> 
					</ul>
				</li>
			</ul>
		</div>	
	
	</div> 
</div>

<!--
<div id="body" class="container">
-->
<div class="container">
			<div class="row">
			    <!-- 左边的菜单项 -->
				<div id="sidebar" >
					<div class="span3-lihelper">
						  <div class="well-lihelper sidebar-nav">
							<ul class="nav nav-list">
							  <li class="nav-header"><i class="icon-align-right"></i>系统状态</li>
							  <li class="active"><a href="javascript:showProduct('#base-info')" >基础信息</a></li>
							  <li><a href="#base-info" data-toggle="tab">运行状态</a>
							  </li><li class="divider"></li>
							  <li class="nav-header"><i class="icon-cog"></i>系统操作</li>
							  <li><a href="#sys-operation" data-toggle="tab">基本操作</a></li>
							  <li><a href="#file-operation" data-toggle="tab">文件操作</a></li>
							  <li class="divider"></li>
							  <li class="nav-header"><i class="icon-search"></i>性能分析</li>
							  <li><a href="#perf" data-toggle="tab">CPU性能分析</a></li>
							  <!--
							  <li><a href="#perf" data-toggle="tab">I/O性能分析</a></li>
							  <li><a href="#perf" data-toggle="tab">磁盘性能分析</a></li>
							  <li><a href="#perf" data-toggle="tab">网络性能分析</a></li>
							  -->
							  <li class="divider"></li>						  
							  <li class="nav-header"><i class="icon-plane"></i>高级功能</li>
							  <li><a href="#user" data-toggle="tab">自定义脚本</a></li>						  
							</ul>
						  </div><!--/.well -->
					</div>
				</div>
				
				<!-- 左边的菜单项结束-->
				
				<!-- 右边的主体 -->
				<div class="main span9-lihelper">
				 <div class="tab-content">
		    <!--系统状态层-->
			<div class="tab-pane active" id="base-info">
			<div class="span8">
			<h4>系统状态</h4>
			  </hr>
				  <div class="accordion" id="accordion2">
					<div class="accordion-group-self">
						  <div class="accordion-heading alert alert-info">
						  
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
							  基本信息
							</a>
						  </div>
						  <div id="collapseOne" class="accordion-body collapse in">
							<div class="accordion-inner">
								<p>
									CPU个数：<div id="cpu"></div>
								 </p>
								 <p>
									内存大小：<div id="mem"></div>
								</p>
								<p>
									存储空间：<div id="disks"></div>
								 </p>
								 <p>
									最后运行时间：<div id="uptime"></div>
								</p>
								<p>
									内核版本：<div id="kernel"></div>
								 </p>
								 <p>
									操作系统版本：<div id="os_type"></div>
								</p>
								 <p>
									发行版本：<div id="release"></div>
								</p>
								 <p>
									网络：<div id="network"></div>
								</p>								
							</div>
						  </div>
					</div>
					<div class="accordion-group-self">
						  <div class="accordion-heading alert alert-info">
								<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
								  运行状态
								</a>
						  </div>
						  <div id="collapseTwo" class="accordion-body collapse in">
							<div class="accordion-inner">
								<div id="dynamicCpu"></div>
								<div id="dynamicMem"></div>
							</div>
						  </div>

						<div id="divHistoryMonitorData" class="modal hide fade" style="display: none;left:400px; height:500px;width:1000px;">
							<div class="modal-header">
								<a class="close" data-dismiss="modal">×</a>
								<h3>历史性能数据</h3>
							</div>
							<form id="formGetMonitorInfosByCpu" name="formGetmonitorinfosByCpu">
								<input type="hidden" name="client_id" value="2">
								<input type="hidden" name="monitor_type" value="cpu">
								开始时间:<input type="text" class="span2"  placeholder="2013-1-31" name="begin" value="2013-1-31">
								结束时间:<input type="text" class="span2"  placeholder="2013-1-31" name="end" value="2013-1-31">
								<a href="#" class="btn btn-primary" id="getMonitorInfosByCpu">查询</a>
							</form>
							<div>
							<div class="modal-body" id="divDrawCpuHistory"></div>

							<form id="formGetMonitorInfosByMem" name="formGetMonitorInfosByMem">
								<input type="hidden" name="client_id" value="2">
								<input type="hidden" name="monitor_type" value="mem">
								开始时间:<input type="text" class="span2" placeholder="2013-1-31" name="begin" value="2013-1-31">
								结束时间:<input type="text" class="span2" placeholder="2013-1-31" name="end" value="2013-1-31">								
								<a href="#" class="btn btn-primary" id="getMonitorInfosByMem">查询</a>
							</form>
							<div class="modal-body" id="divDrawMemHistory"></div>
							</div>
						</div>
					    <td><a data-toggle="modal" id="aHistoryMonitorData" href="#divHistoryMonitorData" class="btn btn-small btn-primary">历史性能数据</a></td>
					</div>
				  </div>
				  </div>
				 </div>
				 <!--系统状态层结束-->
				 
				  <!--基本操作层-->
			 <div class="tab-pane" id="sys-operation">
			  <div class="span8">
			  <h4>系统操作</h4>
			  </hr>
				<table class="table table-striped">
				<thead>
				  <tr>
					<th>通用设置</th>
				  </tr>
				</thead>
				<tbody>
				  <tr>
					<td>用户管理</td>
					<td class="muted">管理系统用户和用户密码</td>
					<!-- 用户管理页面开始 -->
					<div id="userControl" class="modal hide fade" style="display: none; ">
            			<div class="modal-header">
              				<a class="close" data-dismiss="modal">×</a>
              				<h3>用户管理</h3>
            			</div>
            			<div class="modal-body">
						  <p>
							 文字说明1
						  </p>
						  <hr>
							<p>文字说明2</p>
	        			</div>
            
					<div class="modal-footer">
              			<a href="#" class="btn" data-dismiss="modal">关闭</a>
              			<a href="#" class="btn btn-primary">保存更改</a>
            		</div>
          			</div>
					<td><a data-toggle="modal" href="#userControl" class="btn btn-small btn-primary">进入管理页面</a></td>
					<!-- 用户管理页面结束 -->
				   </tr>
				  <tr>
					<td>服务器操作</td>
					<td class="muted">重启您的服务器</td>
					<!-- 用户管理页面开始 -->
					<div id="machineControl" class="modal hide fade" style="display: none; ">
            			<div class="modal-header">
              				<a class="close" data-dismiss="modal"></a>
							<h3>服务器重启</h3>
            			</div>
            			<div class="modal-body">
						  <div class="alert">
  								<a class="close" data-dismiss="alert">×</a>
								  <strong>警告！</strong>服务器重启会导致服务暂停，您真的需要重启服务器吗？
							</div>
						  <a href="#" class="btn btn-small btn-danger btn-primary">确认重启</a>
	        			</div>
            
					<div class="modal-footer">
              			<a href="#" class="btn" data-dismiss="modal">退出</a>
            		</div>
          			</div>
					<td><a data-toggle="modal" href="#machineControl" class="btn btn-small btn-primary">进入管理页面</a></td>
					<!-- 用户管理页面结束 -->
				   </tr>
				</tbody>
				</table>
		    	</div>
			 </div>
			 <!--基本操作层结束-->
			 
			 <!--文件操作层-->
			 <div class="tab-pane" id="file-operation">
			 <div class="span8">
			  <h4>文件操作</h4>
			  </hr>
			  <span class="badge badge-success">即将上线,敬请关注</span>
			  </div>
			 </div>
			 
			<!--文件操作层结束-->

			<!-- 性能分析开始 -->
			<div class="tab-pane" id="perf">
			<div class="span8">
			<h4>性能分析</h4>
			  </hr>
			  <span class="badge badge-success">即将上线,敬请关注</span>
			 </div>
			</div>
			<!--性能分析结束-->
			
			<!--高级功能开始-->
			<div class="tab-pane" id="user">
			<div class="span8">
			<h4>高级功能</h4>
			  </hr>
			  <p>这里需要一个JS实现很好用的编辑框</p>
			  </div>
			</div>
			<!--高级功能结束--> 
				 
			</div>
				
					<div class="footer">
						<a href="/about/">About</a> |
						<a href="http://blog.lihelper.com/">Blog</a>|
						<a href="http://www.lihelper.com" target="_blank">@lihelper</a>
					</div>
				</div>
				<!-- 右边的主体结束-->
			</div>
</div>

<script src="lib/jquery/jquery-1.8.2.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/ext-all.js"></script>
<script src="js/main.js"></script>
</body>
</html>