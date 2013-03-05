<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Forever Home</title>
<?php
	include "miniondb_connect.php";
		$firstName = mysqli_real_escape_string($db, trim($_POST['firstName']));
		$lastName = mysqli_real_escape_string($db, trim($_POST['lastName']));
		$address = mysqli_real_escape_string($db, trim($_POST['address']));
		$city = mysqli_real_escape_string($db, trim($_POST['city']));
		$state = mysqli_real_escape_string($db, trim($_POST['state']));
		$phone = mysqli_real_escape_string($db, trim($_POST['phoneNum']));
		$email = mysqli_real_escape_string($db, trim($_POST['email']));
		$zipcode = mysqli_real_escape_string($db, trim($_POST['zip']));
		$username = mysqli_real_escape_string($db, trim($_POST['username']));
		$password = mysqli_real_escape_string($db, trim($_POST['password']));
		$secQ = mysqli_real_escape_string($db, trim($_POST['question']));
		$answer = mysqli_real_escape_string($db, trim($_POST['answer']));
		$encryptedPW = sha1($password);
		
		echo $firstName;
		echo $lastName;
		echo $address;
		echo $city;
		echo $state;
		echo $phone;
		echo $email;
		echo $zipcode;
		
		$query = "INSERT INTO ownercontactinfo (FirstName, LastName, Address, City, State, zipcode, Phone, email) 
		VALUES ('$firstName', '$lastName', '$address', '$city', '$state', '$zipcode', '$phone', '$email')";
		
		//$query2 = "INSERT INTO credentials (username, password, securityquestion, securityanswer)
		//VALUES ('$username', '$encryptedPW', '$secQ', '$answer)";
		
        echo $query;
		$result = mysqli_query($db, $query)
        or die("Error Querying Database");
		
		//$result2 = mysqli_query($db, $query2)
        //or die("Error Querying Database");
		
		echo $query;
?>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="logo">
	<h1><a href="#">Forever <i> Home</i></a></h1>
	<h2><span>By Free CSS Templates</span></h2>
</div>
<div id="content">
	<div id="sidebar">
		<div id="menu">
			<ul>
				<li class="active"><a href="#" title="">Homepage</a></li>
				<li><a href="#" title="">About Us</a></li>
				<li><a href="RegisterMinion.php" title="">Place Minion for Adoption</a></li>
				<li><a href="#" title="">Find a Minion</a></li>
				<li><a href="#" title="">Adopt a Minion</a></li>
				<li><a href="#" title="">Support</a></li>
			</ul>
		</div>
		</div>
	<div id="main">
		<div id="Register your Minion" class="post">
			<p><img src="images/pets2.jpg" alt="" width="500" height="300" /></p>
		
		<p>Thank you for Registering. You can now place a Minion up for adoption or search for a Minion best suited for you.</p>
		<div id="login" class="boxed">
			<h2 class="title">User Account</h2>
			<div class="content">
				<form id="form1" method="post" action="#">
					<fieldset>
					<legend>Sign-In</legend>
					<label for="inputtext1">User ID:</label>
					<input id="inputtext1" type="text" name="inputtext1" value="" />
					<label for="inputtext2">Password:</label>
					<input id="inputtext2" type="password" name="inputtext2" value="" />
					<input id="inputsubmit1" type="submit" name="inputsubmit1" value="Sign In" />
					<p><a href="#">Forgot your password?</a></p>
					</fieldset>
				</form>
			</div>
		</div>
		
		
		
		</div>
	</div>
</div>
<div id="footer">
	<p id="legal">Copyright &copy; 2013 Forever Home. All Rights Reserved. Designed by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
	<p id="links"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>