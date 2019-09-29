<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section id="content">

	<div class="container">

		<div class="card">
			<div class="card-header">
				<h2>${title}</h2>
				<div id="postResultDiv" class="">
				</div>
			</div>

			<div class="card-body card-padding">

				<div class="row">
				
				<c:url var="addAction" value="${contextRoot}/api/user"></c:url>
				<%-- <form:form class="form-horizontal" modelAttribute="user" action="${addAction}" method="POST"> --%>
				<form id ="userForm">
					<%-- <div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<input type="text" class="form-control" id="id" />
							</div>
						</div>
					</div>	 --%>
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Name</label> 
								<%-- <form:input path="name" class="form-control" id="name" /> --%>
								<input type="text" class="form-control" id="name" />
							</div>
						</div>
					</div>					
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Email</label> 
								<%-- <form:input path="email" class="form-control" id="email" /> --%>
								<input type="text" class="form-control" id="email" />
							</div>
						</div>
					</div>
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Description</label> 
								<%-- <form:input path="description" class="form-control" id="description" /> --%>
								<input type="text" class="form-control" id="description" />
							</div>
						</div>
					</div>
										
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Bitcoin Wallet Id</label> 
								<%-- <form:input path="bitcoinWalletId" class="form-control" id="bitcoinWalletId" /> --%>
								<input type="text" class="form-control" id="bitcoinWalletId" />
							</div>
						</div>
					</div>
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>BitcoinWalletBalance</label> 
								<%-- <form:input path="bitcoinWalletBalance" class="form-control" id="bitcoinWalletBalance" /> --%>
								<input type="text" class="form-control" id="bitcoinWalletBalance" />
							</div>
						</div>
					</div>
					
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Ethereum Wallet Id</label> 
								<%-- <form:input path="ethereumWalletId" class="form-control" id="ethereumWalletId" /> --%>
								<input type="text" class="form-control" id="ethereumWalletId" />
							</div>
						</div>
					</div>
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Ethereum Wallet Balance</label> 
								<%-- <form:input path="ethereumWalletBalance" class="form-control" id="ethereumWalletBalance" /> --%>
								<input type="text" class="form-control" id="ethereumWalletBalance" />
							</div>
						</div>
					</div>				
					
					<div class="col-sm-12 form-group text-center">
						<!-- <input type="submit" name="submit" value="Save" class="btn btn-primary"/> -->
						<button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Save</button>
						<button type="submit" class="btn btn-primary btn-sm">Cancel</button>
					</div>
					
					<!-- Hidden Fields -->
					<div>
						<%-- <form:hidden path="id" />
						<form:hidden path="code" />
						<form:hidden path="status" /> --%>
					</div>
				
				</form>
				<%-- </form:form> --%>
				</div>
				<br />

			</div>

			<br />
		</div>
	</div>

	<div class="container">

		<div class="card">
			<div class="card-header">
				<h2>
					${title} <small>It's ${title}</small>
				</h2>
			</div>

			<div class="table-responsive">
				<table id="userListTable" class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Bitcoin Wallet Id</th>
							<th>Bitcoin Wallet Balance</th>
							<th>Ethereum Wallet Id</th>
							<th>Ethereum Wallet Balance</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Bitcoin Wallet Id</th>
							<th>Bitcoin Wallet Balance</th>
							<th>Ethereum Wallet Id</th>
							<th>Ethereum Wallet Balance</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>

	</div>
</section>