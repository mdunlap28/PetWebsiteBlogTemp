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
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>

<script>
	function matchPasswords(){
		
		var pass1 = document.getElementById("password").value;
		var pass2 = document.getElementById("check").value;
		
		if(pass1 != pass2) {
			alert ("Uh oh, passwords don't match! Please re-enter your passwords.");
			}
		}
</script>
			

	<!--function checkMe(){
		include "miniondb_connect.php";
		$uName = mysqli_real_escape_string($db, trim($_POST['username']));
		$query = "SELECT COUNT(*) FROM credentials WHERE username = '$uName'";
	   
	   $result = mysqli_query($db, $query)
         or die("Error Querying Database");
		 
		 if(mysql_num_rows($result) > 0){
			echo 'Username exists! Please choose another user name.';
			}
		 
		}
		
	-->


<div id="logo">
	<h1><a href="#">Forever <i> Home</i></a></h1>
	<h2><span>By Free CSS Templates</span></h2>
</div>
<div id="content">
	<div id="sidebar">
		<div id="menu">
			<ul>
				<li><a href="index.php" title="">Homepage</a></li>
				<li><a href="#" title="">About Us</a></li>
				<li class="active"><a href="RegisterMinion.php" title="">Register</a></li>
				<li><a href="findMinion.php" title="">Find a Minion</a></li>
				<li><a href="#" title="">Adopt a Minion</a></li>
				<li><a href="#" title="">Support</a></li>
			</ul>
		</div>
		
	</div>
	<div id="main">
		<div id="Register Your Minion" class="post">
			<p><img src="images/pets2.jpg" alt="" width="500" height="300" /></p>
			<h1 class="title">Owner Registration</h1>
			<!-- Owner Registration page -->
			
			<form method = "post" action = "ownerInfo.php">
					<table>
					<tr><td>First Name</td><td><input type="text" id="firstName" name="firstName" /></td></tr>
					<tr><td>Last Name</td><td><input type="text" id="lastName" name="lastName"/></td></tr>
					<tr><td>Street Address</td><td><input type="text" id="address" name="address"/></td></tr>
					<tr><td>City</td><td><input type="text" id="city" name="city"/></td></tr>
					<tr><td>State</td><td><input type="text" id="state" name="state"/></td></tr>
					<tr><td>Zip</td><td><input type="text" id="zip" name="zip"/></td></tr>
					<tr><td>Phone Number</td><td><input type="text" id="phoneNum" name="phoneNum"/></td></tr>
					<div id="alert"></div>
					<tr><td>E-mail</td><td><input type="text" id="email" name="email"/></td></tr>
					<tr><td>Username</td><td><input type="username" id="username" name="username"/></td></tr>
					<tr><td>Password</td><td><input type="password" id="password" name="password"/></td></tr>	
					<tr><td>Re-Enter Password</td><td><input type="password" id="check" name="check" onChange="matchPasswords()"/></td></tr>
					<!--<tr><td>Please Enter a Security Question</td><td><input type="text" id="question" name="question"/></td></tr>
					<tr><td>Security Question Answer</td><td><input type="text" id="answer" name="answer"/></td></tr>-->
					<tr><td>&nbsp;</td><td><input type="submit" value="Register" /></td></tr>
					</table>
					
					</form>
			
			
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
