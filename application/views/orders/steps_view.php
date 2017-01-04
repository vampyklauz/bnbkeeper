<div class="order-wrap margin-top-40">
	<div id="fuelux-wizard-container">
		<div>
			<!-- #section:plugins/fuelux.wizard.steps -->
			<ul class="steps">
				<li data-step="1" class="active">
					<span class="step">1</span>
					<span class="title">Personal Info</span>
				</li>

				<li data-step="2">
					<span class="step">2</span>
					<span class="title">Services</span>
				</li>

				<li data-step="3">
					<span class="step">3</span>
					<span class="title">Select your keeper</span>
				</li>

				<li data-step="4">
					<span class="step">4</span>
					<span class="title">More info</span>
				</li>

				<li data-step="5">
					<span class="step">5</span>
					<span class="title">Key Set</span>
				</li>
			</ul>

			<!-- /section:plugins/fuelux.wizard.steps -->
		</div>

		<hr />

		<div class="step-content pos-rel">
			
			<div class="step-pane active" data-step="1">
			<form class="form-horizontal" id="personal_info-form" method="get">
				<h3 class="text-center green">Give us more information regarding your place</h3>
				<p class="text-center col-sm-6 col-sm-offset-3">To best serve you, you need to tell us the size of your accommodation. Please provide the actual surface and not the one calculated according to housing laws.</p>
				
				<div class="clearfix"></div>
				<div class="space"></div>
				<div class="col-xs-12 col-sm-8 col-sm-offset-2">
						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="first_name">First Name</label>

							<div class="col-xs-12 col-sm-9">
								<div class="clearfix">
									<input type="text" name="first_name" id="first_name" class="col-xs-12 col-sm-6" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="surname">Surname</label>

							<div class="col-xs-12 col-sm-9">
								<div class="clearfix">
									<input type="text" name="surname" id="surname" class="col-xs-12 col-sm-6" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="phone">Phone Number</label>

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
							<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="email">Email Address</label>

							<div class="col-xs-12 col-sm-9">
								<div class="clearfix">
									<input type="email" name="email" id="email" class="col-xs-12 col-sm-6" />
								</div>
							</div>
						</div>
						<div class="hr hr-dotted"></div>
						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="property_size">Size of the property</label>

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
							<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="unit_number">Unit number / floor</label>

							<div class="col-xs-12 col-sm-3">
								<div class="clearfix">
									<input type="text" name="unit_number" id="unit_number" class="col-xs-12 col-sm-6" />
								</div>
							</div>
						</div>
						
						<div class="hr hr-dotted"></div>
						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="digit_code">Digit code</label>

							<div class="col-xs-12 col-sm-5">
								<div class="clearfix">
									<input type="text" name="digit_code" id="digit_code" class="col-xs-12 col-sm-6" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="Wifi">Wifi</label>

							<div class="col-xs-12 col-sm-1">
								<div class="clearfix">
									<label>
										<input name="wifi" class="ace ace-switch ace-switch-5 pos-t-5" type="checkbox" />
										<span class="lbl"></span>
									</label>
								</div>
							</div>
							<div class="col-xs-12 col-sm-2">
								<div class="clearfix">
									<input type="text" name="wifi_name" id="wifi_name" class="col-xs-12" placeholder="Network Name" />
								</div>
							</div>
							<div class="col-xs-12 col-sm-2">
								<div class="clearfix">
									<input type="text" name="wifi_password" id="wifi_password" class="col-xs-12" placeholder="Password" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="garbage_chute">Garbage chute </label>

							<div class="col-xs-12 col-sm-1">
								<div class="clearfix">
									<label>
										<input name="garbage_chute" class="ace ace-switch ace-switch-5 pos-t-5" type="checkbox" />
										<span class="lbl"></span>
									</label>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="clearfix">
									<input type="text" name="garbage_chute_location" id="garbage_chute_location" class="col-xs-12" placeholder="Location of garbage chute" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="first_name">Amenities</label>
							
							<div class="row">
							<div class="col-xs-6">
								<div class="checkbox col-xs-12 col-sm-6">
									<label class="display-block">
										<input name="amenities" value="Rooftop" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Rooftop</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="BBQ" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> BBQ</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Washing machine" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Washing machine</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Dryer" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Dryer</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Dish washer" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Dish washer</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Coffee machine" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Coffee machine</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Hairdryer" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Hairdryer</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Iron" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Iron</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Air conditioning" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Air conditioning</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Heater" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Heater</span>
									</label>
								</div>
								<div class="checkbox col-xs-12 col-sm-6">
									<label class="display-block">
										<input name="amenities" value="Parking" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Parking</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Gym" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Gym</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Lift" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Lift</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Smoke detector" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Smoke detector</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="First aid kit" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> First aid kit</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Fire extinguisher" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Fire extinguisher</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Smoking allowed" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Smoking allowed</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Pets allowed" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Pets allowed</span>
									</label>
									<label class="display-block">
										<input name="amenities" value="Wheelchair accessible" class="ace ace-checkbox-2" type="checkbox" />
										<span class="lbl"> Wheelchair accessible</span>
									</label>
								</div>
							</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="first_name">Specific instructions</label>

							<div class="col-xs-12 col-sm-6">
								<div class="clearfix">
									<textarea id="instructions" name="instructions" class="form-control" placeholder="Instruction here..."></textarea>
								</div>
							</div>
						</div>



					
				</div>
			</form>
			</div>
			<div class="step-pane active" data-step="2">
			<form class="form-horizontal" id="services-form" method="get">
				<h3 class="text-center blue">Make a booking </h3>
				<p class="text-center col-sm-6 col-sm-offset-3">Choose the service(s) requested</p>
				
				<div class="clearfix"></div>
				<div class="space"></div>
				<div class="col-xs-12 col-sm-8 col-sm-offset-2">
					<div class="col-xs-6 col-sm-3 pricing-box">
						<div class="widget-box widget-color-dark">
							<input type="checkbox" name="services" id="check_in" value="check_in" class="hide">
							<div class="widget-header">
								<h5 class="widget-title bigger lighter">Basic Package</h5>
							</div>

							<div class="widget-body text-center">
								<div class="widget-main bg-dark">
									<i class="ace-icon fa fa-key bigger-500"></i>
									<hr />
									<div class="price">
										$39.99
									</div>
								</div>

								<div>
									<a href="#check_in" class="btn_services btn btn-block btn-inverse">
										<h3>Check-in</h3>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 pricing-box">
						<div class="widget-box widget-color-orange">
							<input type="checkbox" name="services" id="check_out" value="check_out" class="hide">
							<div class="widget-header">
								<h5 class="widget-title bigger lighter">Basic Package</h5>
							</div>

							<div class="widget-body text-center">
								<div class="widget-main bg-orange">
									<i class="ace-icon fa fa-shopping-cart bigger-500 orange"></i>
									<hr />
									<div class="price">
										$19.99
									</div>
								</div>

								<div>
									<a href="#check_out" class="btn_services btn btn-block btn-warning">
										<h3>Check-Out</h3>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 pricing-box">
						<div class="widget-box widget-color-blue">
							<input type="checkbox" name="services" id="cleaning" value="cleaning" class="hide">
							<div class="widget-header">
								<h5 class="widget-title bigger lighter">Basic Package</h5>
							</div>

							<div class="widget-body text-center">
								<div class="widget-main bg-blue">
									<i class="ace-icon fa fa-home bigger-500 blue"></i>
									<hr />
									<div class="price">
										$40
									</div>
								</div>

								<div>
									<a href="#cleaning" class="btn_services btn btn-block btn-primary">
										<h3>Cleaning</h3>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 pricing-box">
						<div class="widget-box widget-color-green">
							<input type="checkbox" name="services" id="loundry" value="loundry" class="hide">
							<div class="widget-header">
								<h5 class="widget-title bigger lighter">Basic Package</h5>
							</div>

							<div class="widget-body text-center">
								<div class="widget-main bg-green">
									<i class="ace-icon fa fa-flask bigger-500 green"></i>
									<hr />
									<div class="price">
										$19.99
									</div>
								</div>

								<div>
									<a href="#loundry" class="btn_services btn btn-block btn-success">
										<h3>Loundry</h3>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			</div>

			<div class="step-pane active" data-step="3">
			<form class="form-horizontal" id="keeper-form" method="get">
				<h3 class="text-center orange"> Select your keeper </h3>
				<p class="text-center col-sm-6 col-sm-offset-3">It is time to choose the right keeper. We picked a few profiles. Rest assured: they all know what hospitality is about</p>
				<div class="col-xs-12 col-sm-8 col-sm-offset-2">
					<div data-keeper="1" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
					<div data-keeper="1" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
					<div data-keeper="2" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
					<div data-keeper="3" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
					<div data-keeper="4" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
					<div data-keeper="5" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
					<div data-keeper="6" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
					<div data-keeper="6" class="keeper padding-10 col-xs-6 col-sm-3 center margin-bottom-10">
						<span class="profile-picture">
							<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
						</span>
						<div class="space-4"></div>
						<div class="width-90 label label-info label-xlg arrowed-in arrowed-in-right">
							<div class="inline position-relative">
								<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
									<span class="white">Alex M. Doe</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</form>
			</div>

			<div class="step-pane active" data-step="4">
			<form class="form-horizontal" id="more_info-form" method="get">
				<h3 class="text-center purple">More information about your guests </h3>
				
				<div class="clearfix"></div>
				<div class="space"></div>
				<div class="col-xs-12 col-sm-8 col-sm-offset-2">
					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="guest_first_name">First Name</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="guest_first_name" id="guest_first_name" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="guest_surname">Surname</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="guest_surname" id="guest_surname" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="guest_email">Email Address</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="email" name="guest_email" id="guest_email" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="guest_phone">Phone Number</label>

						<div class="col-xs-12 col-sm-9">
							<div class="input-group">
								<span class="input-group-addon">
									<i class="ace-icon fa fa-phone"></i>
								</span>

								<input type="tel" id="guest_phone" name="guest_phone" />
							</div>
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="number_of_guests">Number of guests</label>

						<div class="col-xs-12 col-sm-9">
							<div class="clearfix">
								<input type="text" name="number_of_guests" id="number_of_guests" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="guest_nationality">Nationality</label>

						<div class="col-xs-12 col-sm-6">
							<div class="clearfix">
								<input type="text" name="guest_nationality" id="guest_nationality" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="guest_flight_number">Flight / Train Number</label>

						<div class="col-xs-12 col-sm-6">
							<div class="clearfix">
								<input type="text" name="guest_flight_number" id="guest_flight_number" class="col-xs-12 col-sm-6" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-12 col-sm-3 no-padding-right important-left" for="guest_info">Addional Information</label>

						<div class="col-xs-12 col-sm-4">
							<div class="clearfix">
								<textarea id="guest_info" name="guest_info" class="form-control" placeholder="Information here..."></textarea>
							</div>
						</div>
					</div>
					
				</div>
			</form>
			</div>

			<div class="step-pane active" data-step="5">
			<form class="form-horizontal" id="key_set-form" method="get">
				<h3 class="text-center blue"> Key Set </h3>
				<p class="text-center col-sm-6 col-sm-offset-3">Choose the service(s) requested</p>
				
				<div class="clearfix"></div>
				<div class="space"></div>
				<div class="col-xs-12 col-sm-8 col-sm-offset-2">
					<div class="col-xs-6 col-sm-3 col-sm-offset-3 pricing-box">
						<div class="widget-box widget-color-blue">

							<div class="widget-body text-center">
								<div class="widget-main">
									<i class="ace-icon fa fa-briefcase bigger-500 blue"></i>
									<hr />
									<div class="price">
										Pick up at home/office
									</div>
								</div>
								<div class="space"></div>
								<div>
									<a href="#" class="btn btn-block btn-primary">
										<h5>1st PICK-UP is PREE</h5>
									</a>
								</div>
								
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 pricing-box">
						<div class="widget-box widget-color-blue">

							<div class="widget-body text-center">
								<div class="widget-main">
									<i class="ace-icon fa fa-list-ul bigger-500 blue"></i>
									<hr />
									<div class="price">
										Drop off at our office in Darlinghurst
									</div>
								</div>
								<div class="space"></div>
								<div>
									<a href="#" class="btn btn-block btn-primary">
										<h5>FREE</h5>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			</div>

			
		</div>

	</div>
	<div class="clearfix"></div>
	<hr />
	<div class="wizard-actions">
		<button class="btn btn-prev">
			<i class="ace-icon fa fa-arrow-left"></i>
			Prev
		</button>

		<button class="btn btn-success btn-next" data-last="Finish">
			Next
			<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
		</button>
	</div>
</div>




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

		$('#number_of_guests').ace_spinner({value:0,min:0,max:100,step:1, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
		.closest('.ace-spinner')
		.on('changed.fu.spinbox', function(){
			//alert($('#spinner1').val())
		}); 

		$('#number_of_bathrooms').ace_spinner({value:0,min:0,max:8,step:1, btn_up_class:'btn-success' , btn_down_class:'btn-success'})
		.closest('.ace-spinner')
		.on('changed.fu.spinbox', function(){
			//alert($('#spinner1').val())
		}); 


		
		$('#fuelux-wizard-container')
		.ace_wizard({
			//step: 2 //optional argument. wizard will jump to step "2" at first
			//buttons: '.wizard-actions:eq(0)'
		})
		.on('actionclicked.fu.wizard' , function(e, info){
			if(info.step == 1) {
				if(!$('#personal_info-form').valid()) e.preventDefault();
			}else if(info.step == 2){
				if(!$('#services-form').valid()) e.preventDefault();
			}else if(info.step == 4){
				if(!$('#more_info-form').valid()) e.preventDefault();
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



		//documentation : http://docs.jquery.com/Plugins/Validation/validate


		$.mask.definitions['~']='[+-]';
		$('#phone, #guest_phone').mask('(999) 999-9999');

		jQuery.validator.addMethod("phone", function (value, element) {
			return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
		}, "Enter a valid phone number.");

				
		
		
		$('#modal-wizard-container').ace_wizard();
		$('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
		
		
		$(document).one('ajaxloadstart.page', function(e) {
			//in ajax mode, remove remaining elements before leaving page
			$('[class*=select2]').remove();
		});

		$('#personal_info-form').validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: false,
			ignore: "",
			rules: {
				first_name: {
					required: true
				},
				/*surname: {
					required: true
				},
				email: {
					required: true,
					email:true
				},
				phone: {
					required: true,
					phone: 'required'
				},
				property_size: {
					required: true,
				},
				number_of_beds: {
					required: true,
				},
				number_of_bathrooms: {
					required: true,
				},
				amenities: {
					required: true
				}*/
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


		// STEP 2
		$('.btn_services').click(function(e){
			e.preventDefault();
			var id = $(this).attr('href');
			var widget_box = $(this).closest('.widget-box');
			var checkBoxes = $(id);
			checkBoxes.prop("checked", !checkBoxes.prop("checked"));

			if( checkBoxes.is(":checked") ){
				widget_box.addClass('active');
			}else{
				widget_box.removeClass('active');
			}
			

		});

		$('#services-form').validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: false,
			ignore: "",
			rules: {
				services: {
					required: true
				},
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
				bootbox.dialog({
					message: "Pleas select atleast 1 of the services", 
					buttons: {
						"success" : {
							"label" : "OK",
							"className" : "btn-sm btn-primary"
						}
					}
				});
			}
		});

		// STEP 4
		$('#more_info-form').validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: false,
			ignore: "",
			rules: {
				guest_first_name: {
					required: true
				},
				guest_surname: {
					required: true
				},
				guest_email: {
					required: true,
					email:true
				},
				guest_phone: {
					required: true
				},
				number_of_guests: {
					required: true
				},
				guest_nationality: {
					required: true
				},
				guest_flight_number: {
					required: true
				},
				guest_info: {
					required: true
				},
			},

			messages: {
				guest_email: {
					required: "Please provide a valid email.",
					email: "Please provide a valid email."
				},
				password: {
					required: "Please specify a password.",
					minlength: "Please specify a secure password."
				},
				guest_nationality: "Please choose nationality",
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
	})
	</script>