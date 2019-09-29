$(document).ready(function() {

	$("#userForm").submit(function(event) {
			event.preventDefault();
			console.log("USER FORM");
			userPost();
		});
		
		function userPost() {
			
			//prepare form data
			var formData = {
					id : $("#id").val(),
					name : $("#name").val(),
					email : $("#email").val(),
					description : $("#description").val(),
					bitcoinWalletId : $("#bitcoinWalletId").val(),
					bitcoinWalletBalance : $("#bitcoinWalletBalance").val(),
					ethereumWalletId : $("#ethereumWalletId").val(),
					ethereumWalletBalance : $("#ethereumWalletBalance").val()
			};
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "api/user",
				data : JSON.stringify(formData),
				dataType : 'json',
				success : function(result){
					$('#userForm').get(0).reset();
					if(result.status){
						console.log(result);
						$("postResultDiv").html(
								"" + result.data.name
								+ "Post successfully! <br>"
								+ "------> Congrats !!"
								+ "</p>");

						$("#id").val() = "",
						$("#name").val()= "",
						$("#description").val() = "",
						$("#bitcoinWalletId").val() = "",
						$("#bitcoinWalletBalance").val() = "",
						$("#ethereumWalletId").val() = "",
						$("#ethereumWalletBalance").val() = ""

					} else {
						$("postResultDiv").html("<strong>Error</strong>");
					}
					console.log(result);
				},
				error : function(e) {
					alert("");
					console.log("ERROR: ",e);
				}
			});
		}

//--Transaction Post Start --
	$("#transactionForm").submit(function (event) {
		event.preventDefault();
		console.log("transaction FORM");
		transactionPost();
	});

	function transactionPost() {

		//prepare form data
		var formData = {
			id: $("#id").val(),
			currencyAmount: $("#currencyAmount").val(),
			currencyType: $("#currencyType").val(),
			sourceUserId: $("#sourceUserId").val(),
			targetUserId: $("#targetUserId").val(),
			created: $("#created").val(),
			processed: $("#processed").val(),
			state: $("#state").val()
		};

		console.log("User data" + formData);

		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "api/transaction",
			data: JSON.stringify(formData),
			dataType: 'json',
			success: function (result) {
				console.log("POST API RESPONSE" + result);
				$('#transactionForm').get(0).reset();
				if (result.status) {
					$("#transactionForm").reset();
					$("postResultDiv").html(
						"" + result.data.name
						+ "Post successfully! <br>"
						+ "------> Congrats !!"
						+ "</p>");

				} else {
					$("postResultDiv").html("<strong>Error</strong>");
				}
				console.log(result);
			},
			error: function (e) {
				alert("");
				console.log("ERROR: " + e);
			}
		});
	}
//--Transaction Post End --

});