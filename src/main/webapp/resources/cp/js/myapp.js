$(function() {

	// for adding a loader
	$(window).load(function() {
		setTimeout(function() {
			$(".se-pre-con").fadeOut("slow");
		}, 500);
	});

	// for handling CSRF token
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');

	if ((token != undefined && header != undefined)
			&& (token.length > 0 && header.length > 0)) {
		// set the token header for the ajax request
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(header, token);
		});
	}

	// solving the active menu problem

	// jQuery Validation Code

	// methods required for validation

	function errorPlacement(error, element) {
		// Add the 'help-block' class to the error element
		error.addClass("help-block");

		// add the error label after the input element
		error.insertAfter(element);

		// add the has-feedback class to the
		// parent div.validate in order to add icons to inputs
		element.parents(".validate").addClass("has-feedback");

	}

	/* validating the loginform */

	// fetch the form element
	$loginForm = $('#loginForm');

	if ($loginForm.length) {

		$loginForm.validate({
			rules : {
				username : {
					required : true,
					email : true

				},
				password : {
					required : true
				}
			},
			messages : {
				username : {
					required : 'Please enter your email!',
					email : 'Please enter a valid email address!'
				},
				password : {
					required : 'Please enter your password!'
				}
			},
			errorElement : "em",
			errorPlacement : function(error, element) {
				// Add the 'help-block' class to the error element
				error.addClass("help-block");

				// add the error label after the input element
				error.insertAfter(element);
			}
		}

		);

	}

	
	// list of all user for admin $userListTable
	var $userListTable = $('#userListTable');

	if ($userListTable.length) {

		var jsonUrl = window.contextRoot + '/api/user';
		console.log(jsonUrl);

		$userListTable
				.DataTable({
					lengthMenu : [ [ 10, 30, 50, -1 ],
							[ '10 Records', '30 Records', '50 Records', 'ALL' ] ],
					pageLength : 10,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
							{
								data : 'id'
							},
							{
								data : 'name'
							},
							{
								data : 'email'
							},
							{
								data : 'bitcoinWalletId'
							},
							{
								data : 'bitcoinWalletBalance'
							},
							{
								data : 'ethereumWalletId'
							},
							{
								data : 'ethereumWalletBalance'
							}
						],

					initComplete : function() {
						var api = this.api();
						api
								.$('.switch input[type="checkbox"]')
								.on(
										'change',
										function() {
											var dText = (this.checked) ? 'You want to activate the User Row?'
													: 'You want to de-activate the User ?';
											var checked = this.checked;
											var checkbox = $(this);
											debugger;
											bootbox
													.confirm({
														size : 'medium',
														title : 'User Activation/Deactivation',
														message : dText,
														callback : function(
																confirmed) {
															if (confirmed) {
																$
																		.ajax({
																			type : 'GET',
																			url : window.contextRoot
																					+ '/cp/user/'
																					+ checkbox
																							.prop('value')
																					+ '/activation',
																			timeout : 100000,
																			success : function(
																					data) {
																				bootbox
																						.alert(data);
																			},
																			error : function(
																					e) {
																				bootbox
																						.alert('ERROR: '
																								+ e);
																				// display(e);
																			}
																		});
															} else {
																checkbox
																		.prop(
																				'checked',
																				!checked);
															}
														}
													});

										});

					}

				});
	}


	// list of all user for admin $userListTable
	var $transactionTable = $('#transactionTable');

	if ($transactionTable.length) {

		var jsonUrl = window.contextRoot + '/api/transaction';
		console.log(jsonUrl);

		$transactionTable
				.DataTable({
					lengthMenu : [ [ 10, 30, 50, -1 ],
							[ '10 Records', '30 Records', '50 Records', 'ALL' ] ],
					pageLength : 10,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
							{
								data : 'id'
							},
							{
								data : 'currencyAmount'
							},
							{
								data : 'currencyType'
							},
							{
								data : 'sourceUserId'
							},
							{
								data : 'targetUserId'
							},
							{
								data : 'created'
							},
							{
								data : 'processed'
							},
							{
								data : 'state'
							},
							{
								data : 'status',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';

									var str = '';

									if (data) {
										str += '<label class="switch"> <input type="checkbox" value="'
												+ row.id
												+ '" checked="checked">  <div class="slider round"> </div></label>';

									} else {
										str += '<label class="switch"> <input type="checkbox" value="'
												+ row.id
												+ '">  <div class="slider round"> </div></label>';
									}

									return str;
								}
							}

							// {
							// 	data : 'id',
							// 	bSortable : false,
							// 	mRender : function(data, type, row) {

							// 		var str = '';
							// 		str += '<a href="'
							// 				+ window.contextRoot
							// 				+ '/cp/transaction/'
							// 				+ data
							// 				+ '" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span></a> &#160;';

							// 		str += '<a href="'
							// 				+ window.contextRoot
							// 				+ '/cp/transaction/delete/'
							// 				+ data
							// 				+ '" class="btn btn-danger"><span class="zmdi zmdi-delete"></span></a> &#160;';

							// 		return str;
							// 	}
							// } 
						],

					initComplete : function() {
						var api = this.api();
						api
								.$('.switch input[type="checkbox"]')
								.on(
										'change',
										function() {
											var dText = (this.checked) ? 'You want to activate the Transaction Row?'
													: 'You want to de-activate the Transaction ?';
											var checked = this.checked;
											var checkbox = $(this);
											debugger;
											bootbox
													.confirm({
														size : 'medium',
														title : 'Transaction Activation/Deactivation',
														message : dText,
														callback : function(
																confirmed) {
															if (confirmed) {
																$
																		.ajax({
																			type : 'GET',
																			url : window.contextRoot
																					+ '/api/transaction/'
																					+ checkbox
																							.prop('value')
																					+ '/activation',
																			timeout : 100000,
																			success : function(
																					data) {
																				bootbox
																						.alert(data);
																			},
																			error : function(
																					e) {
																				bootbox
																						.alert('ERROR: '
																								+ e);
																				// display(e);
																			}
																		});
															} else {
																checkbox
																		.prop(
																				'checked',
																				!checked);
															}
														}
													});

										});

					}

				});
	}

	/*------*/
	/* for fading out the alert message after 3 seconds */
	$alert = $('.alert');
	if ($alert.length) {
		setTimeout(function() {
			$alert.fadeOut('slow');
		}, 3000);
	}

	// start populatin dropdown
	let targetDropdown = $('#targetUserId');

	targetDropdown.empty();

	targetDropdown.append('<option selected="true" disabled>Select</option>');
	targetDropdown.prop('selectedIndex', 0);

	const targetUrl = 'http://localhost:8080/api/user';

	// Populate dropdown with list of provinces
	$.getJSON(targetUrl, function (data) {
		$.each(data, function (key, entry) {
			targetDropdown.append($('<option></option>').attr('value', entry.id).text(entry.name));
		})
	});
	// end populatin dropdown

	// start populatin dropdown
	let sourceDropdown = $('#sourceUserId');

	sourceDropdown.empty();

	sourceDropdown.append('<option selected="true" disabled>Select</option>');
	sourceDropdown.prop('selectedIndex', 0);

	const sourceUrl = 'http://localhost:8080/api/user';

	// Populate dropdown with list of provinces
	$.getJSON(sourceUrl, function (data) {
		$.each(data, function (key, entry) {
			sourceDropdown.append($('<option></option>').attr('value', entry.id).text(entry.name));
		})
	});
	// end populatin dropdown

});