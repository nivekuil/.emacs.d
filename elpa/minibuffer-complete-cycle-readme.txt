







<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
	<meta http-equiv="Pragma" content="no-cache">
	<title>ResNet: Your IP Address is - 128.54.248.171</title>
	<link rel="stylesheet" href="../css/base-min.2.css" />
	<link rel="stylesheet" href="../css/safeconnect_style.css" />
	<script src="/js/util.js"></script>
	<script src="../html/jquery-1.10.2.min.js"></script>
	<script src="../html/browser_detect.js"></script>
	<script>
		$(document).ready(function(){
			if(BrowserDetect.browser == "Explorer")
				$("#ie_warning").show();
		});

		function validateForm(form)
		{
			if(!form.userId.value)
			{
				alert("The username field cannot be blank.");
				return false;
			}
			if(!form.pass.value)
			{
				alert("The password field cannot be blank.");
				return false;
			}

			form.platform.value = navigator.platform;
			form.appversion.value = navigator.appVersion;

			return true;
		}
	</script>

	<style>
		#authentication_form, #guest_registration {
			max-width: 50%;
			/*display: block;*/
			margin-left: auto;
			margin-right: auto;
		}

		#authentication_form input, #guest_registration a {
			white-space: pre-line;
			word-wrap: normal !important;
			width: 100%;
		}

		@media (max-width: 600px) {
			#authentication_form {
				max-width: 95%;
				width: 95%;
			}
		}
	</style>
</head>
<body>
	<!-- emergency -->
	<div id="uc-emergency"></div>
	<!-- skip to content -->
	<a class="skip-link" href="#tdr_content">Skip to content</a>
	<!-- title -->
	<div id="tdr_title">
		<div id="tdr_title_content">
			<a id="tdr_title_ucsd_title" href="http://www.ucsd.edu">UC San Diego</a>
			<div id="tdr_title_page_title">
				Academic Computing and Media Services
			</div>
		</div>
	</div>
	<div id="tdr_content" class="tdr_fonts itag_webapp">
		<div id="tdr_content_content">
			<div class='center_align'>
				<a href='http://resnet.ucsd.edu/' target='_blank' class='nonewwin'><img id='resnet_logo' src='../html/logo2blacktext_large1000.png' /></a>
				<h1> Residential Networking Authentication </h1>
			</div>
			<br />
			<div id='column_container'>
			<div id='content_column'> <!-- INSERT CHRISTINE'S DIV -->
			<div class="msg error" style='display:none' id='ie_warning'>
				<h4> Internet Explorer Compatibility! </h4>
				For general use and compatibility with our system, we <b><u><i>STRONGLY</i></u></b> recommend using Google Chrome or Mozilla Firefox.
			</div>
			<div id='auth_information' class='msg info'>
				<h4> Important </h4>
				<p> While you are on the ResNet network, you are expected to abide by the ResNet Acceptable Use Policy, which includes basic security standards before you should get online. Please note that a violation of the following policies may result in your device being quarantined. For instructions on how to ensure your computer meets all the requirements below <a href="http://acms.ucsd.edu/students/resnet/safeconnect_info.html" target="_blank" class='nonewwin'>click here</a>. </p>
				<ul>
					<li> An active and updated antivirus </li>
					<li> An active firewall </li>
					<li> Automatic updates </li>
					<li> Updated software (Java, Flash, Adobe Reader) </li>
				</ul>
				<p> Click the buttons below to view the ResNet Acceptable Use Policy. </p>
				<ul>
						<li> <a href="javascript:popuppolicy('../html/policy.htm')">ResNet Acceptable Use Policy for UCSD affiliates.</a> </li>
						<li> <a href="javascript:popuppolicy('../html/guest_policy.htm')">ResNet Acceptable Use Policy for guests.</a></li>
					</ul>
			</div>
			<div id='authentication_form'>
				<form action="http://auth.impulse.com:8008/authenticate.!^" name="loginForm" method="post" onsubmit="return validateForm(this)">
					<div class='field_left'>
						<div class='label required'>
							<label for='userId'> Username: </label>
						</div>
						<div class='input'>
							<input name='userId' id='   ' tabindex="1" accesskey="u" value="" />
						</div>
					</div>
					<div class='field_left'>
						<div class='label required'>
							<label for='password'> Password: </label>
						</div>
						<div class='input'>
							<input type='password' name='pass' id='password' tabindex="2" accesskey="2" value="" />
						</div>
					</div>
					<div class='field_left'>
						<div class='input'>
							<INPUT TYPE="HIDDEN" NAME="platform" />
							<INPUT TYPE="HIDDEN" NAME="appversion" />
							<input type="submit" class="button primary" id="subBtn" tabindex="4" accesskey="l" value="Sign In and Agree to ResNet's Acceptable Use Policy" />
						</div>
					</div>
				</form>
				<div style="display: block;" id="autherror">
					<center> <p> Please enter valid credentials (Hint: use the first 8 characters of your password). </p> </center>
				</div>
				
			</div>
			<div id='auth_information'>
				<p> <b>First Time Users:</b> You will need to sign in on each device you will be using on the ResNet network. Use your UCSD Active Directory username and password to log in (your UCSD email without the "@ucsd.edu" and email password).</p>
				<p> <b>Conference Guests:</b> If you are signing onto the ResNet network for the first time, please click "Request a Guest Account" below to get a username and password to log into this page. </p>
			</div>
			<div id='guest_registration'>
				<p> <a class='button primary' href="https://auth.impulse.com:8443/endUserGuest.!^">Request a Guest Account</a> </p>
			</div>
			<!-- BEGIN CONTACT -->
	
			<div id='contact' class='msg info'>
				<h4> Contact Information </h4>
				Phone: 858-534-ACMS (858-534-2267) <br />
				Location: Applied Physics and Mathematics 1313 <br />
				Email: resnet@ucsd.edu
			</div>
			<!-- END CONTACT -->
			</div> <!-- INSERT CHRISTINE'S DIV -->
			<div id='guide_column'>
			<img src="../html/Network_Connection_2014.png">
			<a href="../html/Network_Connection_2014.pdf">Click here to download the Network Connection Guide</a>
			</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div id="tdr_footer">
		<div id="tdr_footer_content">
			<div>UC San Diego 9500 Gilman Dr. La Jolla, CA 92093 (858) 534-ACMS (858-534-2267)</div>
			<div>
				Copyright &copy; <span id="tdr_copyright_year">2012</span> Regents of the University of California. All rights reserved.
			</div>
		</div>
	</div>
</body>
</html>
