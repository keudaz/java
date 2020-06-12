<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="vehicleRental.model.Assigning"%>
<%@page import="vehicleRental.model.Reservation"%>
<%@page import="vehicleRental.model.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="supernova"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=http%3A%2F%2Fwww.jotform.com%2Fform%2F92699063204461" title="oEmbed Form"><link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=http%3A%2F%2Fwww.jotform.com%2Fform%2F92699063204461" title="oEmbed Form">
<meta property="og:title" content="Vehicle Registration Form" >
<meta property="og:url" content="https://form.jotform.me/92699063204461" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">
<link rel="shortcut icon" href="https://cdn.jotfor.ms/favicon.ico">
<link rel="canonical" href="https://form.jotform.me/92699063204461" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title>Vehicle Registration Form</title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.13243" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.13243" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.13243" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/566a91c2977cdfcd478b4567.css?themeRevisionID=5d713a7304e9ed3c13620001"/>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<style type="text/css">
    .form-label-left{
        width:250px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:250px;
    }
    body, html{
        margin:0;
        padding:0;
        background:#fff;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:680px;
        color:#555 !important;
        font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: false;
    }

</style>

<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
.form-label.form-label-auto {
        
      display: block;
      float: none;
      text-align: left;
      width: 100%;
    
      }/*PREFERENCES STYLE*/
    .form-all {
      font-family: Lucida Grande, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Lucida Grande, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Lucida Grande, sans-serif;
    }
    .form-header-group {
      font-family: Lucida Grande, sans-serif;
    }
    .form-label {
      font-family: Lucida Grande, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: block;
    float: none;
    text-align: left;
    width: 100%;
  
    }
  
    .form-line {
      margin-top: 12px;
      margin-bottom: 12px;
    }
  
    .form-all {
      width: 680px;
    }
  
    .form-label-left,
    .form-label-right,
    .form-label-left.form-label-auto,
    .form-label-right.form-label-auto {
      width: 250px;
    }
  
    .form-all {
      font-size: 14px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 14px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 14px
    }
  
    .supernova .form-all, .form-all {
      background-color: #fff;
      border: 1px solid transparent;
    }
  
    .form-all {
      color: #555;
    }
    .form-header-group .form-header {
      color: #555;
    }
    .form-header-group .form-subHeader {
      color: #555;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: #555;
    }
    .form-sub-label {
      color: #6f6f6f;
    }
  
    .supernova {
      background-color: rgba(236,219,9,0.17);
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: #fff;
    }
  
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

<script src="https://cdn.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.13243" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.13243" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/jquery.maskedinput.min.js?v=3.3.13243" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.13243" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
      JotForm.setInputTextMasking( 'input_33', '***-####' );
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"update","qid":"1","text":"Update","type":"control_head"},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"assigning","qid":"32","text":"Update ","type":"control_button"},{"description":"","name":"vehicleNo","qid":"33","subLabel":"","text":"Vehicle No","type":"control_textbox"},null,{"description":"","name":"pickUp","qid":"35","subLabel":"","text":"Pick Up Date","type":"control_textbox"},{"description":"","name":"reservationNumber","qid":"36","subLabel":"","text":"Reservation Number","type":"control_textbox"},{"description":"","name":"pickUp37","qid":"37","subLabel":"","text":"Pick Up Time","type":"control_textbox"},{"description":"","name":"dropOff","qid":"38","subLabel":"","text":"Drop off Date","type":"control_textbox"},{"description":"","name":"dropOff39","qid":"39","subLabel":"","text":"Drop off time","type":"control_textbox"},{"description":"","name":"vehicleType","qid":"40","subLabel":"","text":"Vehicle Type","type":"control_dropdown"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"update","qid":"1","text":"Update","type":"control_head"},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"assigning","qid":"32","text":"Update ","type":"control_button"},{"description":"","name":"vehicleNo","qid":"33","subLabel":"","text":"Vehicle No","type":"control_textbox"},null,{"description":"","name":"pickUp","qid":"35","subLabel":"","text":"Pick Up Date","type":"control_textbox"},{"description":"","name":"reservationNumber","qid":"36","subLabel":"","text":"Reservation Number","type":"control_textbox"},{"description":"","name":"pickUp37","qid":"37","subLabel":"","text":"Pick Up Time","type":"control_textbox"},{"description":"","name":"dropOff","qid":"38","subLabel":"","text":"Drop off Date","type":"control_textbox"},{"description":"","name":"dropOff39","qid":"39","subLabel":"","text":"Drop off time","type":"control_textbox"},{"description":"","name":"vehicleType","qid":"40","subLabel":"","text":"Vehicle Type","type":"control_dropdown"}]);}, 20); 
</script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
	<div class="container">
		<a class="navbar-brand" href="Home.jsp"> ONLINE CAR RENT SYSTEM</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
				<form action="ListVehicleServlet" method="post">
					<input type="submit" value="vehicle Details"  class="form-group">
					</form>
				</li>
			</ul>
		</div>
	</div>
	</nav>

<%
	Assigning assigning =  (Assigning) request.getAttribute("assigning");
%>

<form class="jotform-form" action="" method="post" name="form_92699063204461" id="92699063204461" accept-charset="utf-8">
  <input type="hidden" name="formID" value="92699063204461" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group ">
          <div class="header-text httal htvam">
            <h2 id="header_1" class="form-header" data-component="header">
              Update
            </h2>
            <div id="subHeader_1" class="form-subHeader">
              Assigning vehicle update
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_36">
        <label class="form-label form-label-top form-label-auto" id="label_36" for="input_36"> Reservation Number </label>
        <div id="cid_36" class="form-input-wide">
          <input type="text" id="input_36" name="q36_reservationNumber" data-type="input-textbox" class="form-readonly form-textbox" size="20" value="<%=assigning.getReservationON() %>" tabindex="-1" data-component="textbox" aria-labelledby="label_36" readonly="" />
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_33">
        <label class="form-label form-label-top form-label-auto" id="label_33" for="input_33">
          Vehicle No
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_33" class="form-input-wide jf-required">
          <input type="text" id="input_33" name="q33_vehicleNo" data-type="input-textbox" class="form-textbox validate[required, Fill Mask]" size="20" data-masked="true" value="<%=assigning.getVehicleNo() %>" data-component="textbox" aria-labelledby="label_33" required="" />
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_dropdown" id="id_40">
        <label class="form-label form-label-top form-label-auto" id="label_40" for="input_40">
          Vehicle Type
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_40" class="form-input-wide jf-required">
          <select class="form-dropdown validate[required]" id="input_40" name="q40_vehicleType" style="width:150px" data-component="dropdown" required="" aria-labelledby="label_40">
            <option value=""><%=assigning.getVehicleType() %></option>
            <option value="Skoda Octavia"> Skoda Octavia </option>
            <option value="Vauxhall Corsa "> Vauxhall Corsa </option>
            <option value="Ford Focus"> Ford Focus </option>
            <option value="Mercedes E Class"> Mercedes E Class </option>
            <option value="Vauxhall Insignia"> Vauxhall Insignia </option>
            <option value="Toyota Aygo"> Toyota Aygo </option>
          </select>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_35">
        <label class="form-label form-label-top form-label-auto" id="label_35" for="input_35"> Pick Up Date </label>
        <div id="cid_35" class="form-input-wide">
          <input type="text" id="input_35" name="q35_pickUp" data-type="input-textbox" class="form-readonly form-textbox" size="20" value="<%=assigning.getPickUpDate() %>" tabindex="-1" data-component="textbox" aria-labelledby="label_35" readonly="" />
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_37">
        <label class="form-label form-label-top form-label-auto" id="label_37" for="input_37"> Pick Up Time </label>
        <div id="cid_37" class="form-input-wide">
          <input type="text" id="input_37" name="q37_pickUp37" data-type="input-textbox" class="form-readonly form-textbox" size="20" value="<%=assigning.getPickUpTime() %>" tabindex="-1" data-component="textbox" aria-labelledby="label_37" readonly="" />
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_38">
        <label class="form-label form-label-top form-label-auto" id="label_38" for="input_38"> Drop off Date </label>
        <div id="cid_38" class="form-input-wide">
          <input type="text" id="input_38" name="q38_dropOff" data-type="input-textbox" class="form-readonly form-textbox" size="20" value="<%=assigning.getDropoffDate() %>" tabindex="-1" data-component="textbox" aria-labelledby="label_38" readonly="" />
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_39">
        <label class="form-label form-label-top form-label-auto" id="label_39" for="input_39"> Drop off time </label>
        <div id="cid_39" class="form-input-wide">
          <input type="text" id="input_39" name="q39_dropOff39" data-type="input-textbox" class="form-readonly form-textbox" size="20" value="<%=assigning.getDropoffTime() %>" tabindex="-1" data-component="textbox" aria-labelledby="label_39" readonly="" />
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_32">
        <div id="cid_32" class="form-input-wide">
          <div style="text-align:center" class="form-buttons-wrapper ">
            <button id="input_32" type="submit" name="AssignId" value="<%=assigning.getAssignId() %>" class="form-submit-button" data-component="button">
              Update
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
</form></body>
</html>