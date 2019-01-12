<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>

<!-- Server Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--End Server Bootstrap -->


<!-- Local -->
  <link rel="stylesheet" href="<?=base_url('/jquery-ui-1.12.1/jquery-ui.css');?>">
  <script src="<?=base_url('/jquery-ui-1.12.1/external/jquery/jquery.js');?>"></script>
  <script src="<?=base_url('/jquery-ui-1.12.1/jquery-ui.js');?>"></script>
<!-- End Local -->


	<style type="text/css">

	::selection { background-color: #E13300; color: white; }
	::-moz-selection { background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		margin: 0px 0px;
		font-family: Consolas;
		color: #4F5155;
	}

	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
	}

	h1 {
		color: #444;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 19px;
		font-weight: normal;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body {
		margin: 0 15px 0 15px;
	}

	p.footer {
		text-align: right;
		font-size: 11px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 20px 0 0 0;
	}

	#container {
		margin: 10px;
		border: 1px solid #D0D0D0;
		box-shadow: 0 0 8px #D0D0D0;
	}

</style>


</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img style="max-width:80px;" src="/image/favicon.ico"></a>
    </div>

    <div class="collapse navbar-collapse" id="myNavbar">
      <ul id="menu" class="nav navbar-nav">
        <li class="active"><a href="#"><i class="fa fa-fw fa-home"></i>Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
	  <ul class="nav navbar-nav navbar-right">
	      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-chevron-down" aria-hidden="true"></i></i></a>
	        <ul class="dropdown-menu">
	          <li><a href="#"><i class="fa fa-user-md" aria-hidden="true"></i> Profile</a></li>
	          <li><a href="#"><i class="fa fa-lock" aria-hidden="true"></i> Change Password</a></li>
	          <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i> Clear Cache</a></li>
	          <li><a href="<?=site_url('/auth/logout');?>"> <i class="fa fa-power-off" aria-hidden="true"></i> Logout</a></li>
	        </ul>
	      </li>
	   </ul>


    </div>

  </div>
</nav>


<div class="container">
	<div id="body">

	{content}

	</div>

	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
</div>

</body>
</html>