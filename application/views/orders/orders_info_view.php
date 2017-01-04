<div class="page-content">
	<div class="page-header">
		<h1>
			Order
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Details
			</small>
		</h1>
	</div>
	<div class="profile-user-info profile-user-info-striped">
		<div class="profile-info-row">
			<div class="profile-info-name"> Order Number </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->order_id; ?></span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name"> Host </div>

			<div class="profile-info-value">
				<a href="#">Host Name</a>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name"> Keeper </div>

			<div class="profile-info-value">
				<a href="#"><?php echo $orders->keeper_id; ?></a>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name"> Date Of Service </div>

			<div class="profile-info-value">
				<span class="editable" id="signup">2010/06/20</span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name"> Key Pickup Date </div>

			<div class="profile-info-value">
				<span class="editable" id="signup">2010/06/20</span>
			</div>
		</div>
	</div>

	<h3 class="header smaller lighter blue"> Service Name </h3>

	<div class="profile-user-info profile-user-info-striped">
		<div class="profile-info-row">
			<div class="profile-info-name"> Check-In </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">$39.99 </span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name"> Checkout </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"> $19.99  </span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name"> Cleaning </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"> $120  </span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name">  Cleaning + Laundry  </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">  $19.99  </span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name">  Last Minute Booking  </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">  $20  </span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name">  Night Booking  </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">  $10  </span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name">  Public Holiday  </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">  $79.99  </span>
			</div>
		</div>

		<div class="profile-info-row">
			<div class="profile-info-name">  Total  </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">  $309.96  </span>
			</div>
		</div>
		
	</div>

	<h3 class="header smaller lighter purple"> Guest Details  </h3>

	<div class="profile-user-info profile-user-info-striped">
		<div class="profile-info-row">
			<div class="profile-info-name">Name</div>

			<div class="profile-info-value">
				<span class="editable capitalize" id="order_id"><?php echo $orders->guest_first_name.' '. $orders->guest_surname; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">Nationality</div>

			<div class="profile-info-value">
				<span class="editable capitalize" id="order_id"><?php echo $orders->guest_nationality; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">Phone Number</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->guest_phone; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">Email Address</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->guest_email; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">Transport Identification</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->guest_flight_number; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">No of Guests</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->number_of_guests; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">Additional Information</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->guest_info; ?></span>
			</div>
		</div>
	</div>

	<h3 class="header smaller lighter orange"> House Details  </h3>

	<div class="profile-user-info profile-user-info-striped">
		<div class="profile-info-row">
			<div class="profile-info-name">House Phone Number</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->guest_nationality; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Email Address</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">ddddddd</span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Size</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->property_size; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Number Of Beds</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->number_of_beds; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Unit No</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->unit_number; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Digit Code</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->digit_code; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Wifi</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->wifi; ?></span>
			</div>
		</div>		<div class="profile-info-row">
			<div class="profile-info-name">House Garbage</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->garbage_chute; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Instruction</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->instructions; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House City</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">ddddddd</span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House State</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">ddddddd</span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Zipcode</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id">ddddddd</span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House No Of Bathrooms</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->number_of_bathrooms; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Wifi Network</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->wifi_name; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Wifi Password </div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->wifi_password; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Garbage Location</div>

			<div class="profile-info-value">
				<span class="editable" id="order_id"><?php echo $orders->garbage_chute_location; ?></span>
			</div>
		</div>
		<div class="profile-info-row">
			<div class="profile-info-name">House Amenities</div>

			<div class="profile-info-value">
				<?php 
					$amenities = '';
					if( !empty($orders->amenities) ){
						$order_amenities = json_decode($orders->amenities);
						$amenities = '<ul>';
						foreach ($order_amenities as $val) {
							$amenities .= '<li>'.$val.'</li>';
						}
						$amenities .= '</ul>';
					}
					

				?>
				<span class="editable" id="order_id"><?php echo $amenities; ?></span>
					
			</div>
		</div>
	</div>

</div>