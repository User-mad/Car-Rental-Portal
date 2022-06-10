﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Rental_01.Payment.Payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <title>Payment Form Widget Flat Responsive Widget Template :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Payment Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
        Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		        function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Alegreya+Sans:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery.min.js"></script>

        <script src='../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src="../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
        <script>
            (function () {
                if (typeof _bsa !== 'undefined' && _bsa) {
                    // format, zoneKey, segment:value, options
                    _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
                }
            })();
        </script>
        <script>
            (function () {
                if (typeof _bsa !== 'undefined' && _bsa) {
                    // format, zoneKey, segment:value, options
                    _bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
                }
            })();
        </script>
        <script>
            (function () {
                if (typeof _bsa !== 'undefined' && _bsa) {
                    // format, zoneKey, segment:value, options
                    _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
                }
            })();
        </script>
        <!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
        <div id="codefund"><!-- fallback content --></div>
        <script src="https://ethicalads.io/?ref=codefund" async="async"></script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }
            gtag('js', new Date());

            gtag('config', 'UA-149859901-1');
        </script>

        <script>
            window.ga = window.ga || function () { (ga.q = ga.q || []).push(arguments) }; ga.l = +new Date;
            ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
            ga('require', 'eventTracker');
            ga('require', 'outboundLinkTracker');
            ga('require', 'urlChangeTracker');
            ga('send', 'pageview');
           </script>
        <script async src='../../../js/autotrack.js'></script>

        <meta name="robots" content="noindex">
</head>

<body><link rel="stylesheet" href="../../../images/demobar_w3_4thDec2019.css">
    <form id="form1" runat="server">


	<div class="main">
		<h1>Payment Form Widget</h1>
		<!---728x90--->


		<div class="content">
			
			<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
					    $(document).ready(function () {
					        $('#horizontalTab').easyResponsiveTabs({
					            type: 'default', //Types: default, vertical, accordion           
					            width: 'auto', //auto or any width like 600px
					            fit: true   // 100% fit in a container
					        });
					    });
						
					</script>
						<div class="sap_tabs">
							<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
								<div class="pay-tabs">
									<h2>Select Payment Method</h2>
									  <ul class="resp-tabs-list">
										  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span><label class="pic1"></label>Credit Card</span></li>
										  
										  <li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><label class="pic2"></label>Debit Card</span></li>
										  <div class="clear"></div>
									  </ul>	
								</div>
								<div class="resp-tabs-container">
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="payment-info">

											
												<div class="tab-for">				


												</div>			
											
											<h3 class="pay-title">Credit Card Info</h3>
											
												<div class="tab-for">				
													<h5>NAME ON CARD</h5>
														<input type="text" value="">
													<h5>CARD NUMBER</h5>													
														<input class="pay-logo" type="text" value="0000-0000-0000-0000" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '0000-0000-0000-0000';}" required="">
												</div>	
												<div class="transaction">
													<div class="tab-form-left user-form">
														<h5>EXPIRATION</h5>
															<ul>
																<li>
																	<input type="number" class="text_box" type="text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MM';}" min="1" />	
																</li>
																<li>
																	<input type="number" class="text_box" type="text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'YYYY';}" min="1" />	
																</li>
																
															</ul>
													</div>
													<div class="tab-form-right user-form-rt">
														<h5>CVV NUMBER</h5>													
														<input type="text" value="xxxx" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'xxxx';}" required="">
													</div>
													<div class="clear"></div>
												</div>												
                                                    <asp:Button ID="btnpay" runat="server" Text="Pay" onclick="btnpay_Click" />
											
											<div class="single-bottom">
													<ul>
														<li>
															<input type="checkbox"  id="brand" value="">
															<label for="brand"><span></span>By checking this box, I agree to the Terms & Conditions & Privacy Policy.</label>
														</li>
													</ul>
											</div>
										</div>
									</div>
									

									
								</div>	
							</div>
						</div>	

		</div>
		<!---728x90--->


		<p class="footer">Copyright © 2016 Payment Form Widget. All Rights Reserved | </p>
		<!---728x90--->


	</div>

    </form>
</body>
</html>
