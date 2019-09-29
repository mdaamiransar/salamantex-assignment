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
				
				<form id ="transactionForm">
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>ID</label>
								<input type="text" class="form-control" id="id" />
							</div>
						</div>
					</div>	
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Currency Amount</label> 
								<input type="text" class="form-control" id="currencyAmount" />
							</div>
						</div>
					</div>					
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>CurrencyType</label>
								<select class="selectpicker" data-live-search="true" id="currencyType" name="currencyType">
									<option value="USD">United States dollar</option>
                                    <option value="EUR">Euro</option>
                                    <option value="GBP">Pound sterling</option>
								</select>
							</div>
						</div>
					</div>
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>State</label>
								<input type="text" class="form-control" id="state" />
							</div>
						</div>
					</div>
					
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Source User</label>
								<select class="selectpicker" data-live-search="true" id="sourceUserId" name="sourceUserId">
								</select>
							</div>
						</div>
					</div>
										
					<div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Target User</label>
								<select class="selectpicker" data-live-search="true" id="targetUserId" name="targetUserId">
                                </select>
							</div>
						</div>
					</div>	
					
					<!-- <div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>Created</label>
								<input type="text" class="form-control" id="created" />
							</div>
						</div>
					</div> -->
					
					<!-- <div class="col-sm-6 form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
							<div class="fg-line">
								<label>processed</label>
								<input type="text" class="form-control" id="processed" />
							</div>
						</div>
					</div>	 -->
					
					<div class="col-sm-12 form-group text-center">
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
				<table id="transactionTable" class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Currency Amount</th>
							<th>Currency Type</th>
							<th>Source</th>
							<th>Target</th>
							<th>Created</th>
							<th>Processed</th>
							<th>State</th>
							<th>Status</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>ID</th>
							<th>Currency Amount</th>
							<th>Currency Type</th>
							<th>Source</th>
							<th>Target</th>
							<th>Created</th>
							<th>Processed</th>
							<th>State</th>
							<th>Status</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>

	</div>
</section>

