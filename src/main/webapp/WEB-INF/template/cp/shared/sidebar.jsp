<%-- <%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %> --%>

<aside id="sidebar" class="sidebar c-overflow">
	<div class="s-profile">
		<a href="#" data-ma-action="profile-menu-toggle">
			<div class="sp-pic">
				<img src="img/demo/profile-pics/1.jpg" alt="">
			</div>

			<div class="sp-info">
				Admin Jane <i class="zmdi zmdi-caret-down"></i>
			</div>
		</a>

		<ul class="main-menu">
			<li><a href="profile-about.html"><i
					class="zmdi zmdi-account"></i> View Profile</a></li>
			<li><a href="#"><i class="zmdi zmdi-input-antenna"></i>
					Privacy Settings</a></li>
			<li><a href="#"><i class="zmdi zmdi-settings"></i>
					Settings</a></li>
			<li><a href="/logout"><i class="zmdi zmdi-time-restore"></i>
					Logout</a></li>
		</ul>
	</div>

	<ul class="main-menu">
		
		<%-- <li class="sub-menu">
        	<a href="#" data-ma-action="submenu-toggle"><i class="zmdi zmdi-chart"></i> Catalog</a>

            <ul>
            	<li><a href="${contextRoot}/cp/category">Category</a></li>
            	<li><a href="${contextRoot}/cp/product">Product</a></li>
            </ul>
        </li> --%>			
		
		<li><a href="${contextRoot}/user"><i class="zmdi zmdi-widgets"></i>User</a></li>
		
		<li><a href="${contextRoot}/transaction"><i class="zmdi zmdi-view-list"></i>Transaction</a></li>

	</ul>
</aside>

<aside id="chat" class="sidebar">

	<div class="chat-search">
		<div class="fg-line">
			<input type="text" class="form-control" placeholder="Search People">
			<i class="zmdi zmdi-search"></i>
		</div>
	</div>

	<div class="lg-body c-overflow">
		<div class="list-group">
			<a class="list-group-item media" href="#">
				<div class="pull-left p-relative">
					<img class="lgi-img" src="img/demo/profile-pics/2.jpg" alt="">
					<i class="chat-status-busy"></i>
				</div>
				<div class="media-body">
					<div class="lgi-heading">Jonathan Morris</div>
					<small class="lgi-text">Available</small>
				</div>
			</a> <a class="list-group-item media" href="#">
				<div class="pull-left">
					<img class="lgi-img" src="img/demo/profile-pics/1.jpg" alt="">
				</div>
				<div class="media-body">
					<div class="lgi-heading">David Belle</div>
					<small class="lgi-text">Last seen 3 hours ago</small>
				</div>
			</a> <a class="list-group-item media" href="#">
				<div class="pull-left p-relative">
					<img class="lgi-img" src="img/demo/profile-pics/3.jpg" alt="">
					<i class="chat-status-online"></i>
				</div>
				<div class="media-body">
					<div class="lgi-heading">Fredric Mitchell Jr.</div>
					<small class="lgi-text">Availble</small>
				</div>
			</a> <a class="list-group-item media" href="#">
				<div class="pull-left p-relative">
					<img class="lgi-img" src="img/demo/profile-pics/4.jpg" alt="">
					<i class="chat-status-online"></i>
				</div>
				<div class="media-body">
					<div class="lgi-heading">Glenn Jecobs</div>
					<small class="lgi-text">Availble</small>
				</div>
			</a> <a class="list-group-item media" href="#">
				<div class="pull-left">
					<img class="lgi-img" src="img/demo/profile-pics/5.jpg" alt="">
				</div>
				<div class="media-body">
					<div class="lgi-heading">Bill Phillips</div>
					<small class="lgi-text">Last seen 3 days ago</small>
				</div>
			</a> <a class="list-group-item media" href="#">
				<div class="pull-left">
					<img class="lgi-img" src="img/demo/profile-pics/6.jpg" alt="">
				</div>
				<div class="media-body">
					<div class="lgi-heading">Wendy Mitchell</div>
					<small class="lgi-text">Last seen 2 minutes ago</small>
				</div>
			</a>
		</div>
	</div>
</aside>
