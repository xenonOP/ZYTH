<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="zyth.database.*" %>
<!DOCTYPE html>

<html lang="en-US" class="no-js">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <title>Zyth &#8211; Gym</title>
        <link rel="stylesheet" href="js/plugins/goodlayers-core/plugins/fontawesome/font-awesome.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/goodlayers-core/plugins/fa5/fa5.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/goodlayers-core/plugins/elegant/elegant-font.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/goodlayers-core/plugins/ionicons/ionicons.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/goodlayers-core/plugins/simpleline/simpleline.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/goodlayers-core/plugins/gdlr-custom-icon/gdlr-custom-icon.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/goodlayers-core/plugins/style.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/goodlayers-core/include/css/page-builder.css" type="text/css" media="all" />
        <link rel="stylesheet" href="js/plugins/mp-timetable/media/css/stylea305.css?ver=2.4.2" type="text/css" media="all" />
        <link rel="stylesheet" href="css/style-core.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/zyth-style-custom.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/shoppage.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/dark.scss" media="all" />
        <link rel="stylesheet" href="js/plugins/revslider/public/assets/css/rs6069c.css?ver=6.5.8" type="text/css" media="all" />


        <link rel="icon" href="upload/cropped-favicon-circle-32x32.png" sizes="32x32" />
        <link rel="icon" href="upload/cropped-favicon-circle-192x192.png" sizes="192x192" />
        <link rel="apple-touch-icon" href="upload/cropped-favicon-circle-180x180.png" />

    </head>

    <body class="home page-template-default page page-id-14670 theme-zyth gdlr-core-body woocommerce-no-js zyth-body zyth-body-front zyth-full zyth-with-sticky-navigation zyth-blockquote-style-3 gdlr-core-link-to-lightbox" data-home-url="index.jsp" onload='loadr()' >
        <div class="zyth-mobile-header-wrap">
            <div class="zyth-mobile-header zyth-header-background zyth-style-slide zyth-sticky-mobile-navigation" id="zyth-mobile-header">
                <div class="zyth-mobile-header-container zyth-container clearfix">
                    <div class="zyth-logo zyth-item-pdlr">
                        <div class="zyth-logo-inner">
                            <a class="zyth-fixed-nav-logo" href="index.jsp">
                                <img
                                    src="upload/logo-fixed.png"
                                    alt="11"
                                    width="87"
                                    height="47"
                                    title="logo-fixed"
                                    />
                            </a>
                            <a class="zyth-orig-logo" href="index.jsp"><img src="upload/logo-fixedx2.png" alt="11" width="173" height="92" title="logo-fixedx2" /></a>
                        </div>
                    </div>
                    <div class="zyth-mobile-menu-right">
                        <div class="zyth-main-menu-search" id="zyth-mobile-top-search"><i class="fa fa-search"></i></div>
                        <div class="zyth-top-search-wrap">
                            <div class="zyth-top-search-close"></div>

                            <div class="zyth-top-search-row">
                                <div class="zyth-top-search-cell">
                                    <form role="search" method="get" class="search-form" action="">
                                        <input type="text" class="search-field zyth-title-font" placeholder="Search..." value="" name="s" />
                                        <div class="zyth-top-search-submit"><i class="fa fa-search"></i></div>
                                        <input type="submit" class="search-submit" value="Search" />
                                        <div class="zyth-top-search-close"><i class="icon_close"></i></div>
                                    </form>
                                </div>
                            </div>
                        </div>


                        <div class="zyth-modern-menu zyth-mobile-menu" id="zyth-mobile-menu" data-back-text="Back">
                            <a class="zyth-modern-menu-icon zyth-mobile-menu-button zyth-mobile-button-hamburger" href="#"><span></span></a>
                            <div class="zyth-modern-menu-nav-base">
                                <ul id="menu-main-navigation" class="menu">
                                    <li
                                        class="menu-item menu-item-home current-menu-item menu-item-has-children"
                                        >
                                        <a href="index.jsp" aria-current="page">Home</a>
                                        
                                    </li>
                                    <li class="menu-item menu-item-has-children">
                                        <a href="about.html">About Us</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item"><a href="about.html">About Us</a></li>
                                            <li class="menu-item"><a href="our-team.html">Our Team</a></li>
                                            <li class="menu-item"><a href="join-us.html">Pricing</a></li>
                                            <li class="menu-item"><a href="timetable.html">Timetable</a></li>
                                            <li class="menu-item"><a href="zyth-review.html">Review</a></li>
                                            <li class="menu-item"><a href="faq.html">FAQ</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item menu-item-has-children">
                                        <a href="classes.html">Classes</a>
                                    <ul class="sub-menu">
                                        <%
                                            try{
                                            ResultSet rs= DBLoader.executeQuery("select * from zyth.class where status='approve'");
                                                 while(rs.next())
                                                {
                                                    String name = rs.getString("ClassName");
                                                    
                                            %>
                                            <li class="menu-item"><a href="hiit.html"><%=name%></a></li>
                                        <%
                                                    }
                                                 }
                                                   catch(Exception e)
                                                   {
                                                    e.printStackTrace();
                                                   }
                                            %>
                                    </ul>
                                    </li>
                                    <li class="menu-item menu-item-has-children">
                                        <a href="#">Pages</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item"><a href="contact.html">Contact</a></li>
                                            <li class="menu-item"><a href="team-plain-style.html">Team</a></li>
                                            <li class="menu-item"><a href="gallery.html">Gallery</a></li>
                                            <li class="menu-item"><a href="price-table.html">Price Table</a></li>
                                            <li class="menu-item"><a href="maintenance.html">Maintenance</a></li>
                                            <li class="menu-item"><a href="coming-soon.html">Coming Soon</a></li>
                                            <li class="menu-item"><a href="404.html">404 Page</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item menu-item-has-children">
                                        <a href="blog-standard.html">Blog</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item"><a href="blog-standard.html">Blog Full</a></li>
                                            <li class="menu-item"><a href="blog-columns.html">Blog Columns</a></li>
                                            <li class="menu-item"><a href="blog-grid.html">Blog Grid</a></li>
                                            <li class="menu-item"><a href="singleblog.html">Single Posts</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item menu-item-has-children">
                                        <a href="shop.html">Shop</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item"><a href="shop.html">Shop</a></li>
                                            <li class="menu-item"><a href="my-account-2.html">My Account</a></li>
                                            <li class="menu-item"><a href="checkout-2.html">Checkout</a></li>
                                            <li class="menu-item"><a href="cart-2.html">Cart</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="zyth-modern-menu-content zyth-navigation-font">
                                <div class="zyth-modern-menu-display">
                                    <div class="zyth-modern-menu-close"></div>
                                    <div class="zyth-modern-menu-nav"></div>
                                    <div class="zyth-modern-menu-info clearfix">
                                        <div class="zyth-left-text">
                                            <a href="#" class="__cf_email__" >kanishrajput123@gmail.com</a><br />
                                            6284-59-3018
                                        </div>
                                        <div class="zyth-right-text">
                                            <div class="gdlr-core-social-network-item gdlr-core-item-pdb gdlr-core-none-align gdlr-direction-horizontal" style="padding-bottom: 0px;" id="gdlr-core-social-network-88142">
                                                <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="facebook" style="font-size: 20px; color: #ffffff; margin-right: 30px;"><i class="fa fa-facebook"></i></a>
                                                <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="pinterest" style="font-size: 20px; color: #ffffff; margin-right: 30px;"><i class="fa fa-pinterest-p"></i></a>
                                                <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="twitter" style="font-size: 20px; color: #ffffff; margin-right: 30px;"><i class="fa fa-twitter"></i></a>
                                                <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="instagram" style="font-size: 20px; color: #ffffff; margin-right: 30px;"><i class="fa fa-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="zyth-body-outer-wrapper">

            <div class="zyth-float-social" id="zyth-float-social">
                <span class="zyth-head">Follow Us On</span><span class="zyth-divider"></span><a href="#" target="_blank" class="zyth-float-social-icon" title="facebook"><i class="fa fa-facebook"></i></a>
                <a href="#" target="_blank" class="zyth-float-social-icon" title="pinterest"><i class="fa fa-pinterest-p"></i></a><a href="#" target="_blank" class="zyth-float-social-icon" title="twitter"><i class="fa fa-twitter"></i></a>
                <a href="#" target="_blank" class="zyth-float-social-icon" title="instagram"><i class="fa fa-instagram"></i></a>
            </div>

            <div class="zyth-body-wrapper clearfix zyth-with-transparent-header zyth-with-frame">
                <div class="zyth-header-background-transparent">
                    <div class="zyth-top-bar zyth-inner">
                        <div class="zyth-top-bar-background"></div>
                        <div class="zyth-top-bar-container zyth-top-bar-full">
                            <div class="zyth-top-bar-container-inner clearfix">
                                <div class="zyth-top-bar-right-button">


                                </div>
                            </div>
                        </div>
                    </div>
                    <header class="zyth-header-wrap zyth-header-style-plain zyth-style-menu-right zyth-sticky-navigation zyth-style-slide" data-navigation-offset="75">
                        <div class="zyth-header-background"></div>
                        <div class="zyth-header-container zyth-header-full">
                            <div class="zyth-header-container-inner clearfix">
                                <div class="zyth-logo zyth-item-pdlr">
                                    <div class="zyth-logo-inner">
                                        <a class="zyth-fixed-nav-logo" href="index.jsp">
                                            <img
                                                src="upload/logo-fixed.png"
                                                alt="11"
                                                width="87"
                                                height="47"
                                                title="logo-fixed"
                                                />
                                        </a>
                                        <a class="zyth-orig-logo" href="index.jsp">
                                            <img
                                                src="upload/logox1.png"
                                                alt="11"
                                                width="173"
                                                height="92"
                                                title="logox1"
                                                />
                                        </a>
                                    </div>
                                </div>
                                <div class="zyth-navigation zyth-item-pdlr clearfix">
                                    <div class="zyth-main-menu" id="zyth-main-menu">
                                        <ul id="menu-main-navigation-1" class="sf-menu">
                                            <li class="menu-item menu-item-home menu-item-has-children zyth-normal-menu" >
                                                <a href="index.jsp" class="sf-with-ul-pre">Home</a>
                                                <ul class="sub-menu">
                                                    <li class="menu-item" data-size="60">
                                                        <a href="index.jsp">Home – Gym</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item menu-item-has-children zyth-normal-menu">
                                                <a href="about.html" class="sf-with-ul-pre">About Us</a>
                                                <ul class="sub-menu">
                                                    <li class="menu-item" data-size="60"><a href="about.html">About Us</a></li>
                                                    <li class="menu-item" data-size="60"><a href="our-team.html">Our Team</a></li>
                                                    <li class="menu-item" data-size="60"><a href="join-us.html">Pricing</a></li>
                                                    <li class="menu-item" data-size="60"><a href="timetable.html">Timetable</a></li>
                                                    <li class="menu-item" data-size="60"><a href="zyth-review.html">Review</a></li>
                                                    <li class="menu-item" data-size="60"><a href="faq.html">FAQ</a></li>
                                                </ul>
                                            </li>
                                            <li class="menu-item menu-item-has-children zyth-normal-menu">
                                                <a href="classes.html" class="sf-with-ul-pre">Classes</a>
                                                <ul class="sub-menu">
                                                <% 
                                            try{
                                            ResultSet rs = DBLoader.executeQuery("select * from zyth.class where status='approve'");
                                               while(rs.next())
                                               {
                                                String name1 = rs.getString("ClassName");
                                                %>
                                                <li class="menu-item" data-size="60"><a href="MainClass.jsp?class=<%=name1%>"><%=name1%></a></li>
                                            <%
                                                    }
                                                }
                                                catch(Exception e)
                                                    {
                                                    e.printStackTrace();
                                                    }
                                                %>
                                            </ul>
                                            </li>
                                            <li class="menu-item menu-item-has-children zyth-normal-menu">
                                                <a href="#" class="sf-with-ul-pre">Pages</a>
                                                <ul class="sub-menu">
                                                    <li class="menu-item"><a href="contact.html">Contact</a></li>
                                                    <li class="menu-item"><a href="team-plain-style.html">Team</a></li>
                                                    <li class="menu-item" data-size="60"><a href="gallery.html">Gallery</a></li>
                                                    <li class="menu-item" data-size="60"><a href="price-table.html">Price Table</a></li>
                                                    <li class="menu-item" data-size="60"><a href="maintenance.html">Maintenance</a></li>
                                                    <li class="menu-item" data-size="60"><a href="coming-soon.html">Coming Soon</a></li>
                                                    <li class="menu-item" data-size="60"><a href="404.html">404 Page</a></li>
                                                </ul>
                                            </li>
                                          
                                        </ul>
                                        <div class="zyth-navigation-slide-bar zyth-navigation-slide-bar-style-2 zyth-left" data-size-offset="0" data-width="34px" id="zyth-navigation-slide-bar"></div>
                                    </div>
                                    <div class="zyth-main-menu-right-wrap clearfix">
                                        <div class="zyth-top-search-wrap">
                                            <div class="zyth-top-search-close"></div>

                                           
                                        </div>
                                        
                                        <div class="zyth-side-content-menu-button"><span></span></div>
                                    </div>
                                </div>
                                <!-- zyth-navigation -->
                            </div>
                            <!-- zyth-header-inner -->
                        </div>
                        <!-- zyth-header-container -->
                    </header>
                    <!-- header -->
                </div>



                <div class="zyth-page-wrapper" id="zyth-page-wrapper">
                    <div class="gdlr-core-page-builder-body">


                        <div class="gdlr-core-pbf-wrapper" style="padding: 110px 0px 80px 0px;" data-skin="white">
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #0a0a0a;">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="opacity: 1; background-image: url(upload/bg-4.jpg); background-size: cover; background-position: center;"
                                    data-parallax-speed="0"
                                    ></div>
                            </div>
                            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" data-skin="White Text">
                                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js">
                                            <div class="gdlr-core-pbf-background-wrap"></div>
                                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                                <div class="gdlr-core-pbf-element">
                                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr">
                                                        <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 17px; font-style: normal; letter-spacing: 0px; color: #eaeaea;">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        </span>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <div class="gdlr-core-title-item-title-wrap">
                                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 47px; letter-spacing: 0px; text-transform: none;">
                                                                ZYTH Classes<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-price-table-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix gdlr-core-style-1" id="gdlr-core-price-table-72774">
                                            <div class="gdlr-core-price-table-column gdlr-core-column-20" style="width: 49%">
                                                <div class="gdlr-core-price-table">
                                                    <div class="gdlr-core-price-table-head">
                                                        <div class="gdlr-core-price-table-icon"></div>
                                                        <h3 class="gdlr-core-price-table-title">Approved GYMS & CLASSES</h3>
                                                        <div class="gdlr-core-price-table-caption">Reject 'em</div>
                                                    </div>
                                                    <div class="gdlr-core-price-table-content-wrap gdlr-core-center-align">
                                                        <div class="gdlr-core-price-table-content">
                                                            <div class="gdlr-core-price-list-shortcode gdlr-core-with-divider">
                                                                <ul id='trainer'>
                                                                    <script>
                                                                        function loadr()
                                                                        {
                                                                            let url = "./Class";
                                                                            fetch(url).then(data => data.json()).then(resp => {
                                                                                let arr = resp.ans;
                                                                                console.log(resp);
                                                                                let ans = "";
                                                                                for (let i = 0; i < arr.length; i++)
                                                                                {
                                                                                    let obj = arr[i];
                                                                                    if (obj.status === "approve") {
                                                                                        ans += "<li>";
                                                                                        ans += "<button class=\"gdlr-core-price-table-button gdlr-core-button\" onclick=\"Del(" +obj.Classid + ")\">Delete</button><h2 style=\"color:black;\">" + obj.ClassName+"</h2>";
                                                                                        ans += "</li>";
                                                                                    }
                                                                                }
                                                                                document.getElementById("trainer").innerHTML = ans;
                                                                                dis22();
                                                                            });

                                                                        }
                                                                        function Del(Classid)
                                                                        {
                                                                            let xhr = new XMLHttpRequest();
                                                                            xhr.onreadystatechange = function () {
                                                                                if (this.readyState === 4 && this.status === 200)
                                                                                {
                                                                                    let resp = this.responseText.trim();
                                                                                    if (resp === "success")
                                                                                    {
                                                                                       loadr();
                                                                                    } else
                                                                                    {
                                                                                        alert("error occurred");
                                                                                    }
                                                                                }
                                                                            };
                                                                            xhr.open("GET", "./DeleteClass?Classid=" + Classid, true);
                                                                            xhr.send();

                                                                        }
                                                                        function appr(Classid)
                                                                        {
                                                                            let xhr = new XMLHttpRequest();
                                                                            xhr.onreadystatechange = function () {
                                                                                if (this.readyState === 4 && this.status === 200)
                                                                                {
                                                                                    let resp = this.responseText.trim();
                                                                                    if (resp === "success")
                                                                                    {
                                                                                       loadr();
                                                                                    } else
                                                                                    {
                                                                                        alert("error occurred");
                                                                                    }
                                                                                }
                                                                            };
                                                                            xhr.open("GET", "./AppClass?Classid=" + Classid, true);
                                                                            xhr.send();

                                                                        }
                                                                    </script>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-price-table-column gdlr-core-column-20" style="width: 49.33%">
                                                <div class="gdlr-core-price-table">
                                                    <div class="gdlr-core-price-table-head">
                                                        <div class="gdlr-core-price-table-icon"></div>
                                                        <h3 class="gdlr-core-price-table-title">Pending GYMS and Classes</h3>
                                                        <div class="gdlr-core-price-table-caption">Approve 'em</div>
                                                    </div>
                                                    <div class="gdlr-core-price-table-content-wrap gdlr-core-center-align">
                                                        <div class="gdlr-core-price-table-content">
                                                            <div class="gdlr-core-price-list-shortcode gdlr-core-with-divider">
                                                                <ul id='pend'>
                                                                    <script>
                                                                        function dis22()
                                                                        {
                                                                            let url = "./Class";
                                                                            fetch(url).then(data => data.json()).then(resp => {
                                                                                let arr = resp.ans;
                                                                                console.log(resp);
                                                                                let ans = "";
                                                                                for (let i = 0; i < arr.length; i++)
                                                                                {
                                                                                    let obj = arr[i];
                                                                                    if (obj.status === "pending") {
                                                                                        ans += "<li>";
                                                                                        ans += "<button class=\"gdlr-core-price-table-button gdlr-core-button\" onclick=\"appr("+ obj.Classid+ ")\">Approve</button><h2 style=\"color:black;\">" + obj.ClassName+"</h2>";
                                                                                        ans += "</li>";
                                                                                    }
                                                                                }
                                                                                document.getElementById("pend").innerHTML = ans;
                                                                            });
                                                                        }
                                                                    </script>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>





                <footer>
                    <div class="zyth-footer-wrapper col-lg-12">
                        <div class="zyth-footer-container zyth-container clearfix">
                            <div class="zyth-footer-column zyth-item-pdlr zyth-column-15">
                                <div id="block-13" class="widget widget_block zyth-widget">
                                    <span class="gdlr-core-space-shortcode" style="margin-top: -20px;"></span>
                                    <div><img class="alignnone size-full wp-image-14474" src="upload/logox2.png" alt="" width="172" /></div>
                                    <p><span class="gdlr-core-space-shortcode" style="margin-top: -50px;"></span><br /></p>
                                    <div class="gdlr-core-social-network-item gdlr-core-item-pdb gdlr-core-none-align gdlr-direction-horizontal" style="padding-bottom: 0px;">
                                        <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="facebook" style="font-size: 20px; margin-right: 32px;"><i class="fa fa-facebook"></i></a>
                                        <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="pinterest" style="font-size: 20px; margin-right: 32px;"><i class="fa fa-pinterest-p"></i></a>
                                        <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="twitter" style="font-size: 20px; margin-right: 32px;"><i class="fa fa-twitter"></i></a>
                                        <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="instagram" style="font-size: 20px; margin-right: 32px;"><i class="fa fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="zyth-footer-column zyth-item-pdlr zyth-column-30">
                                <div id="gdlr-core-custom-menu-widget-2" class="widget widget_gdlr-core-custom-menu-widget zyth-widget">
                                    <h3 class="zyth-widget-title">Quick Links</h3>
                                    <span class="clear"></span>
                                    <div class="menu-quick-links-container">
                                        <ul id="menu-quick-links" class="gdlr-core-custom-menu-widget gdlr-core-menu-style-half">
                                            <li class="menu-item zyth-normal-menu"><a href="join-us.html">Pricing</a></li>
                                            <li class="menu-item zyth-normal-menu"><a href="about.html">About Us</a></li>
                                            <li class="menu-item zyth-normal-menu"><a href="classes.html">Classes</a></li>
                                            <li class="menu-item zyth-normal-menu"><a href="contact.html">Contact Us</a></li>
                                            <li class="menu-item zyth-normal-menu"><a href="timetable.html">Timetable</a></li>
                                            <li class="menu-item zyth-normal-menu"><a href="#">Terms &#038; Conditions</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="zyth-footer-column zyth-item-pdlr zyth-column-15">
                                <div id="block-9" class="widget widget_block zyth-widget">
                                    <p style="color: #ffffff; text-transform: uppercase;">
                                        <strong>
                                            vmm education<br />
                                            INA colony, Queens Road,<br />
                                            Amritsar<br />
                                        </strong>
                                    </p>
                                    <span class="gdlr-core-space-shortcode" style="margin-top: 30px;"></span>
                                    <p><i class="icon-phone" style="font-size: 17px; color: #ffffff; margin-right: 11px;"></i>6284-59-3018</p>
                                    <p>
                                        <i class="icon-envelope-open" style="font-size: 17px; color: #ffffff; margin-right: 11px;"></i>
                                        <a href="#">KanishRajput123@gmail.com</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="zyth-copyright-wrapper">
                        <div class="zyth-copyright-container zyth-container"><div class="zyth-copyright-text zyth-item-pdlr">Copyright ©2023 KanishRajput. All Rights Reserved.</div></div>
                    </div>
                </footer>

            </div>
        </div>

        <div id="zyth-side-content-menu">

            <i class="zyth-side-content-menu-close ion-android-close"></i>

            <div id="text-7" class="widget widget_text zyth-widget">
                <div class="textwidget">
                    <p><img class="alignnone size-full wp-image-14683" src="upload/logox1.png" alt="" width="87" /></p>
                    <p>
                        <span class="gdlr-core-space-shortcode" style="margin-top: 40px;"></span>Zyth is a New-York-based gym focused on modern workout. From our inception in 2007, we have been serving with more than 10,000 customers.
                        <span class="gdlr-core-space-shortcode" style="margin-top: -10px;"></span>
                    </p>
                </div>
            </div>

            <div id="block-11" class="widget widget_block widget_media_gallery zyth-widget">
                <figure class="wp-block-gallery columns-3 is-cropped">
                    <ul class="blocks-gallery-grid">
                        <li class="blocks-gallery-item">
                            <figure>
                                <img
                                    loading="lazy"
                                    width="900"
                                    height="1000"
                                    src="upload/P15.jpg"
                                    alt=""
                                    data-id="15314"
                                    data-full-url="upload/P15.jpg"
                                    data-link="singleport.html"
                                    class="wp-image-15314"
                                    />
                            </figure>
                        </li>
                        <li class="blocks-gallery-item">
                            <figure>
                                <img
                                    loading="lazy"
                                    width="900"
                                    height="1000"
                                    src="upload/P13.jpg"
                                    alt=""
                                    data-id="15312"
                                    data-full-url="upload/P13.jpg"
                                    data-link="singleport.html"
                                    class="wp-image-15312"
                                    />
                            </figure>
                        </li>
                        <li class="blocks-gallery-item">
                            <figure>
                                <img
                                    loading="lazy"
                                    width="900"
                                    height="1000"
                                    src="upload/P7.jpg"
                                    alt=""
                                    data-id="15307"
                                    data-full-url="upload/P7.jpg"
                                    data-link="singleport.html"
                                    class="wp-image-15307"
                                    />
                            </figure>
                        </li>
                        <li class="blocks-gallery-item">
                            <figure>
                                <img
                                    loading="lazy"
                                    width="1024"
                                    height="682"
                                    src="upload/image-from-rawpixel-id-2194653-jpeg-1024x682.jpg"
                                    alt=""
                                    data-id="15433"
                                    data-full-url="upload/image-from-rawpixel-id-2194653-jpeg.jpg"
                                    data-link=""
                                    class="wp-image-15433"
                                    />
                            </figure>
                        </li>
                        <li class="blocks-gallery-item">
                            <figure>
                                <img
                                    loading="lazy"
                                    width="1024"
                                    height="682"
                                    src="upload/image-from-rawpixel-id-2107319-jpeg-1024x682.jpg"
                                    alt=""
                                    data-id="15434"
                                    data-full-url="upload/image-from-rawpixel-id-2107319-jpeg.jpg"
                                    data-link=""
                                    class="wp-image-15434"
                                    />
                            </figure>
                        </li>
                    </ul>
                </figure>
            </div>

            <div id="text-8" class="widget widget_text zyth-widget">
                <div class="textwidget">
                    <p>
                        <span class="gdlr-core-space-shortcode" style="margin-top: -35px;"></span><br />
                        <span style="color: #ffffff;">
                            <strong>
                                @vmm education<br />
                                ina colony, Queens Road,<br />
                                Amritsar
                            </strong>
                        </span>
                    </p>
                </div>
            </div>

            <div id="text-9" class="widget widget_text zyth-widget">
                <div class="textwidget">
                    <p>
                        <span class="gdlr-core-space-shortcode" style="margin-top: -40px;"></span><br />
                        <span style="color: #9e9e9e;">T. 6284593018</span><span class="gdlr-core-space-shortcode" style="margin-top: 20px;"></span>
                        <span style="color: #9e9e9e;">E. <a href="#" style="color:#fff;" class="__cf_email__" >KanishRajput123@gmail.com</a></span>
                        <span class="gdlr-core-space-shortcode" style="margin-top: -5px;"></span>
                    </p>
                </div>
            </div>

            <div id="text-10" class="widget widget_text zyth-widget">
                <div class="textwidget">
                    <div class="gdlr-core-social-network-item gdlr-core-item-pdb gdlr-core-none-align gdlr-direction-horizontal" style="padding-bottom: 0px;" id="gdlr-core-social-network-40404">
                        <a href="#url" target="_blank" class="gdlr-core-social-network-icon" title="facebook" style="color: #eeeeee; margin-right: 30px;" rel="noopener"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="pinterest" style="color: #eeeeee; margin-right: 30px;" rel="noopener"><i class="fa fa-pinterest-p"></i></a>
                        <a href="#url" target="_blank" class="gdlr-core-social-network-icon" title="twitter" style="color: #eeeeee; margin-right: 30px;" rel="noopener"><i class="fa fa-twitter"></i></a>
                        <a href="#url" target="_blank" class="gdlr-core-social-network-icon" title="instagram" style="color: #eeeeee; margin-right: 30px;" rel="noopener"><i class="fa fa-instagram"></i></a>
                    </div>
                </div>
            </div>

        </div>

        <script src="https://cdn.jsdelivr.net/gh/cosmogicofficial/quantumalert@latest/minfile/quantumalert.js" charset="utf-8"></script>>
        <script type="text/javascript" src="js/jquery.minaf6c.js?ver=3.6.0" id="jquery-core-js"></script>
        <script type="text/javascript" src="js/jquery-migrate.mind617.js?ver=3.3.2" id="jquery-migrate-js"></script>
        <script type="text/javascript" src="js/plugins/goodlayers-core/plugins/script.js" id="gdlr-core-plugin-js"></script>
        <script type="text/javascript" id="gdlr-core-page-builder-js-extra">
                                                                        /* <![CDATA[ */
                                                                        var gdlr_core_pbf = {admin: "", video: {width: "640", height: "360"}, ajax_url: "https:\/\/demo.goodlayers.com\/zyth\/gym\/wp-admin\/admin-ajax.php"};
                                                                        /* ]]> */
        </script>
        <script type="text/javascript" src="js/plugins/goodlayers-core/include/js/page-builderd36b.js?ver=1.3.9" id="gdlr-core-page-builder-js"></script>
        <script type="text/javascript" src="js/plugins/revslider/public/assets/js/rbtools.min069c.js?ver=6.5.8" defer="" async="" id="tp-tools-js"></script>
        <script type="text/javascript" src="js/plugins/revslider/public/assets/js/rs6.min069c.js?ver=6.5.8" defer="" async="" id="revmin-js"></script>
        <script type="text/javascript" src="js/plugins/ui/effect.min35d0.js?ver=1.12.1" id="jquery-effects-core-js"></script>
        <script type="text/javascript" src="js/plugins/jquery.mmenu8a54.js?ver=1.0.0" id="jquery-mmenu-js"></script>
        <script type="text/javascript" src="js/plugins/jquery.superfish8a54.js?ver=1.0.0" id="jquery-superfish-js"></script>
        <script type="text/javascript" src="js/plugins/script-core8a54.js?ver=1.0.0" id="zyth-script-core-js"></script>
        <script type="text/javascript" src="js/plugins/mp-timetable/media/js/mptt-functions.mina305.js?ver=2.4.2" id="mptt-functions-js"></script>
        <script type="text/javascript" id="mptt-event-object-js-extra">
                                                                        /* <![CDATA[ */
                                                                        var MPTT = {table_class: "mptt-shortcode-table"};
                                                                        /* ]]> */
        </script>
    </body>
</html>

