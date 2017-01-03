<div id="fuelux-wizard-container">
	<div>
		<!-- #section:plugins/fuelux.wizard.steps -->
		<ul class="steps">
			<li data-step="1" class="active">
				<span class="step">1</span>
				<span class="title">Validation states</span>
			</li>

			<li data-step="2">
				<span class="step">2</span>
				<span class="title">Alerts</span>
			</li>

			<li data-step="3">
				<span class="step">3</span>
				<span class="title">Payment Info</span>
			</li>

			<li data-step="4">
				<span class="step">4</span>
				<span class="title">Other Info</span>
			</li>

			<li data-step="5">
				<span class="step">5</span>
				<span class="title">Validation</span>
			</li>

			<li data-step="6">
				<span class="step">6</span>
				<span class="title">Finished</span>
			</li>
		</ul>

		<!-- /section:plugins/fuelux.wizard.steps -->
	</div>

	<hr />

	<div class="step-content pos-rel">
		<div class="step-pane active" data-step="1">
			<h3 class="text-center green">Give us more information regarding your place</h3>
			<p class="text-center col-sm-6 col-sm-offset-3">To best serve you, you need to tell us the size of your accommodation. Please provide the actual surface and not the one calculated according to housing laws.</p>
			
			<div class="clearfix"></div>
			<div class="space"></div>
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<!-- <form class="form-horizontal" id="validation-form" method="get">
				
					<div class="form-group margin-bottom-10">
						<div class="col-xs-6">
							<label class="control-label important">First Name</label>
							<input type="text" validate="true" name="first_name" class="col-xs-12" placeholder="First Name" />
						</div>
						<div class="col-xs-6 no-padding-left">
							<label class="control-label important">Surname</label>
							<input type="text" validate="true" name="surname" class="col-xs-12" placeholder="Surname" />
						</div>
					</div>
				
					<div class="col-xs-4">
						<div class="form-group">
							<div class="no-padding-left">
								<label class="control-label important">Property size</label>
								<select class="form-control" name="propery_size">
									<option value=""> Select property size </option>
									<option value="linux">Linux</option>
									<option value="windows">Windows</option>
									<option value="mac">Mac OS</option>
									<option value="ios">iOS</option>
									<option value="android">Android</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-xs-4">
						<div class="form-group">
							<div class="col-xs-12">
								<label class="control-label important">Phone Number</label>
								<div class="input-group no-padding-right">
									<span class="input-group-addon">
										<i class="ace-icon fa fa-phone"></i>
									</span>
				
									<input class="col-xs-12" id="phone" type="tel" name="phone" />
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-4">
						<div class="form-group">
							<div class="no-padding-right">
								<label class="control-label important">Email address</label>
								<div class="input-group col-xs-12">
									<input type="text" validate="true" name="email" class="col-xs-12" placeholder="Email" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="clearfix"></div>
				
					<div class="form-group margin-top-10">
						<div class="col-xs-4">
							<label class="control-label important">Number of Bed</label>
							<input type="text" validate="true" id="number_of_bed" name="number_of_bed" class="col-xs-12" />
						</div>
						<div class="col-xs-4 no-padding-left">
							<label class="control-label important">Number of bathrooms</label>
							<input type="text" validate="true" id="number_of_bathrooms" name="number_of_bathrooms" class="col-xs-12" />
						</div>
						<div class="col-xs-4">
							<label class="control-label important">Unit Number / Floor</label>
							<input type="text" validate="true" id="unit_number" name="unit_number" class="col-xs-4 pull-right" />
						</div>
					</div>
				
					<div class="form-group margin-top-10 margin-bottom-10">
						<div class="col-xs-6">
							<label class="control-label important">Wifi</label>
							<label>
								<input name="switch-field-1" class="ace ace-switch ace-switch-5 pos-t-5" type="checkbox" />
								<span class="lbl"></span>
							</label>
							<div class="form-group col-xs-12 pull-right">
								<div class="col-xs-6">
									<input type="text" validate="true" name="wifi_name" class="col-xs-12" placeholder="Network Name" />
								</div>
								<div class="col-xs-6">
									<input type="text" validate="true" name="wifi_password" class="col-xs-12" placeholder="Password" />
								</div>
							</div>
						</div>
						<div class="col-xs-6">
							<label class="control-label important">Garbage chute </label>
							<label>
								<input name="switch-field-1" class="ace ace-switch ace-switch-5 pos-t-5" type="checkbox" />
								<span class="lbl"></span>
							</label>
							<div class="form-group col-xs-12 pull-right">
								<input type="text" validate="true" name="wifi_password" class="col-xs-12" placeholder="Password" />
							</div>
						</div>
					</div>
					
				</form> -->

				<form class="form-horizontal" id="validation-form" method="get">
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="first_name">First Name</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="first_name" id="first_name" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="surname">Surname</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="surname" id="surname" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="phone">Phone Number:</label>

						<div class="col-xs-12 col-sm-9">
							<div class="input-group">
								<span class="input-group-addon">
									<i class="ace-icon fa fa-phone"></i>
								</span>

								<input type="tel" id="phone" name="phone" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Email Address:</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="email" name="email" id="email" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="property_size">Size of the property</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<select class="input-medium" id="property_size" name="property_size">
									<option value="">------------------</option>
									<option value="linux">Linux</option>
									<option value="windows">Windows</option>
									<option value="mac">Mac OS</option>
									<option value="ios">iOS</option>
									<option value="android">Android</option>
								</select>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="number_of_beds">Number of beds</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="number_of_beds" id="number_of_beds" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="number_of_bathrooms">Number of bathrooms</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="number_of_bathrooms" id="number_of_bathrooms" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="first_name">Unit number / floor</label>

						<div class="col-xs-12 col-sm-3">
							<div class="clearfix">
								<input type="text" name="first_name" id="first_name" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="first_name">Digit code</label>

						<div class="col-xs-12 col-sm-5">
							<div class="clearfix">
								<input type="text" name="first_name" id="first_name" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="first_name">Wifi</label>

						<div class="col-xs-12 col-sm-1">
							<div class="clearfix">
								<label>
									<input name="switch-field-1" class="ace ace-switch ace-switch-5 pos-t-5" type="checkbox" />
									<span class="lbl"></span>
								</label>
							</div>
						</div>
						<div class="col-xs-12 col-sm-2">
							<div class="clearfix">
								<input type="text" name="first_name" id="first_name" class="col-xs-12" placeholder="Network Name" />
							</div>
						</div>
						<div class="col-xs-12 col-sm-2">
							<div class="clearfix">
								<input type="text" name="first_name" id="first_name" class="col-xs-12" placeholder="Password" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="first_name">Garbage chute </label>

						<div class="col-xs-12 col-sm-1">
							<div class="clearfix">
								<label>
									<input name="switch-field-1" class="ace ace-switch ace-switch-5 pos-t-5" type="checkbox" />
									<span class="lbl"></span>
								</label>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="clearfix">
								<input type="text" name="first_name" id="first_name" class="col-xs-12" placeholder="Location of garbage chute" />
							</div>
						</div>
					</div>


				</form>
			</div>
		</div>
		<div class="step-pane active" data-step="2">
			test
		</div>
	</div>

</div>

<!-- 
<hr />
<div class="wizard-actions">
	#section:plugins/fuelux.wizard.buttons
	<button class="btn btn-prev">
		<i class="ace-icon fa fa-arrow-left"></i>
		Prev
	</button>

	<button class="btn btn-success btn-next" data-last="Finish">
		Next
		<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
	</button>

	/section:plugins/fuelux.wizard.buttons
</div> -->


<script src="assets/js/fuelux/fuelux.wizard.js"></script>
<script src="assets/js/jquery.validate.js"></script>
<script src="assets/js/additional-methods.js"></script>
<script src="assets/js/bootbox.js"></script>
<script src="assets/js/jquery.maskedinput.js"></script>
<script src="assets/js/select2.js"></script>
<script src="assets/js/fuelux/fuelux.spinner.js"></script>
<script src="assets/js/ace/elements.spinner.js"></script>

<script src="assets/js/ace/elements.wizard.js"></script>

<script type="text/javascript">
	jQuery(function($) {

		$('[data-rel=tooltip]').tooltip();

		$(".select2").css('width','200px').select2({allowClear:true})
		.on('change', function(){
			$(this).closest('form').validate().element($(this));
		}); 

		$('#number_of_beds').ace_spinner({value:0,min:0,max:8,step:1, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
		.closest('.ace-spinner')
		.on('changed.fu.spinbox', function(){
			//alert($('#spinner1').val())
		}); 

		$('#number_of_bathrooms').ace_spinner({value:0,min:0,max:8,step:1, btn_up_class:'btn-success' , btn_down_class:'btn-success'})
		.closest('.ace-spinner')
		.on('changed.fu.spinbox', function(){
			//alert($('#spinner1').val())
		}); 


		var $validation = false;
		$('#fuelux-wizard-container')
		.ace_wizard({
			//step: 2 //optional argument. wizard will jump to step "2" at first
			//buttons: '.wizard-actions:eq(0)'
		})
		.on('actionclicked.fu.wizard' , function(e, info){
			if(info.step == 1 && $validation) {
				if(!$('#validation-form').valid()) e.preventDefault();
			}
		})
		.on('finished.fu.wizard', function(e) {
			bootbox.dialog({
				message: "Thank you! Your information was successfully saved!", 
				buttons: {
					"success" : {
						"label" : "OK",
						"className" : "btn-sm btn-primary"
					}
				}
			});
		}).on('stepclick.fu.wizard', function(e){
			//e.preventDefault();//this will prevent clicking and selecting steps
		});


		//jump to a step
		/**
		var wizard = $('#fuelux-wizard-container').data('fu.wizard')
		wizard.currentStep = 3;
		wizard.setState();
		*/

		//determine selected step
		//wizard.selectedItem().step



		//hide or show the other form which requires validation
		//this is for demo only, you usullay want just one form in your application
		$('#skip-validation').removeAttr('checked').on('click', function(){
			$validation = this.checked;
			if(this.checked) {
				$('#sample-form').hide();
				$('#validation-form').removeClass('hide');
			}
			else {
				$('#validation-form').addClass('hide');
				$('#sample-form').show();
			}
		})



		//documentation : http://docs.jquery.com/Plugins/Validation/validate


		$.mask.definitions['~']='[+-]';
		$('#phone').mask('(999) 999-9999');

		jQuery.validator.addMethod("phone", function (value, element) {
			return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
		}, "Enter a valid phone number.");

		$('#validation-form').validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: false,
			ignore: "",
			rules: {
				email: {
					required: true,
					email:true
				},
				password: {
					required: true,
					minlength: 5
				},
				password2: {
					required: true,
					minlength: 5,
					equalTo: "#password"
				},
				name: {
					required: true
				},
				phone: {
					required: true,
					phone: 'required'
				},
				url: {
					required: true,
					url: true
				},
				comment: {
					required: true
				},
				state: {
					required: true
				},
				platform: {
					required: true
				},
				subscription: {
					required: true
				},
				gender: {
					required: true,
				},
				agree: {
					required: true,
				}
			},

			messages: {
				email: {
					required: "Please provide a valid email.",
					email: "Please provide a valid email."
				},
				password: {
					required: "Please specify a password.",
					minlength: "Please specify a secure password."
				},
				state: "Please choose state",
				subscription: "Please choose at least one option",
				gender: "Please choose gender",
				agree: "Please accept our policy"
			},


			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
				$(e).remove();
			},

			errorPlacement: function (error, element) {
				if(element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
					var controls = element.closest('div[class*="col-"]');
					if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
					else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
				}
				else if(element.is('.select2')) {
					error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
				}
				else if(element.is('.chosen-select')) {
					error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
				}
				else error.insertAfter(element.parent());
			},

			submitHandler: function (form) {
			},
			invalidHandler: function (form) {
			}
		});

		
		
		
		$('#modal-wizard-container').ace_wizard();
		$('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
		
		
		/**
		$('#date').datepicker({autoclose:true}).on('changeDate', function(ev) {
			$(this).closest('form').validate().element($(this));
		});
		
		$('#mychosen').chosen().on('change', function(ev) {
			$(this).closest('form').validate().element($(this));
		});
		*/
		
		
		$(document).one('ajaxloadstart.page', function(e) {
			//in ajax mode, remove remaining elements before leaving page
			$('[class*=select2]').remove();
		});
	})
	</script>