<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="zyth.database.*" %>
<%@include file="Header.jsp" %>
 <!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>
<div class="zyth-page-title-wrap zyth-style-custom zyth-center-align">
    <div class="zyth-header-transparent-substitute"></div>
    <div class="zyth-page-title-overlay"></div>
    <div class="zyth-page-title-top-gradient"></div>
    <div class="zyth-page-title-container zyth-container">
        <div class="zyth-page-title-content zyth-item-pdlr"><h1 class="zyth-page-title">Join Us Today</h1></div>
    </div>
</div>
<div class="zyth-body-wrapper clearfix zyth-with-transparent-header zyth-with-frame">
    <div class="zyth-page-wrapper" id="zyth-page-wrapper">
        <div class="gdlr-core-page-builder-body">
            <div class="gdlr-core-pbf-wrapper" style="padding: 100px 0px 100px 0px;" id="gdlr-core-wrapper-1">
                <div class="gdlr-core-pbf-background-wrap" style="background-color: #0c0c0c;">
                    <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(upload/Join-US-BG-1.jpg); background-repeat: no-repeat; background-position: top center;" data-parallax-speed="0"></div>
                </div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                        <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" data-skin="Plan Form" id="gdlr-core-column-43005">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 10px 0px 0px 0px;">
                                <div class="gdlr-core-pbf-background-wrap"></div>
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js" style="max-width: 870px;">
                                    <div class="gdlr-core-pbf-element">

                                        <div>
                                            <form action="" method="post" data-status="init" enctype="multipart/form-data">
                                                <p style="margin-left: -180px; margin-bottom:80px">Please fill your information</p>
                                                <div class="gdlr-core-input-wrap gdlr-core-full-width gdlr-core-bottom-border gdlr-core-with-column" style="margin-left: -199px; margin-right: -199px">
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-first-name">
                                                            <input type="text" id="FN" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" placeholder="First Name*" />
                                                        </span>
                                                    </div>
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-last-name">
                                                            <input type="text" id="LN" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" placeholder="Last Name*" />
                                                        </span>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-phone">
                                                            <input type="text" name="your-phone" id="phn" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"
                                                                   placeholder="Phone*"
                                                                   />
                                                        </span>
                                                    </div>
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-email">
                                                            <input
                                                                type="email"
                                                                name="your-email"
                                                                id="Uemail"
                                                                size="40"
                                                                class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
                                                                aria-required="true"
                                                                aria-invalid="false"
                                                                placeholder="Email*"
                                                                />
                                                        </span>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap bdate">
                                                            <input type="text" id="city" value="" placeholder="City*" class="wpcf7-form-control wpcf7-date wpcf7-validates-as-required wpcf7-validates-as-city"/>
                                                        </span>
                                                    </div>
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-zipcode">
                                                            <input  type="text"  name="your-zipcode" id="zip" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" placeholder="Zip Code*" />
                                                        </span>
                                                    </div>
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-zipcode">
                                                            <input  type="password"  name="password" id="pass" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" placeholder="Password*" />
                                                        </span>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <div class="gdlr-core-column-30" style="margin-bottom: 35px;">
                                                        <span class="wpcf7-form-control-wrap your-message">
                                                            <textarea name="your-message" cols="40" rows="5" id="extra" class="wpcf7-form-control wpcf7-textarea" placeholder="Enter Any other Details Here"></textarea>
                                                        </span>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <div class="gdlr-core-column-60">
                                                        <span class="wpcf7-form-control-wrap checkbox-528">
                                                            <span class="wpcf7-form-control wpcf7-checkbox wpcf7-validates-as-required gdlr-core-round-checkbox">
                                                                <span class="wpcf7-list-item first last">
                                                                    <label><input type="checkbox" name="checkbox-528[]" value="" /><span class="wpcf7-list-item-label"></span>I've read and agree to the <a href="#" target="_blank">Terms and Data Privacy Policy</a></label>
                                                                </span>
                                                            </span>
                                                        </span>

                                                    </div>
                                                    <div class="clear" style="margin-bottom: 30px;"></div>
                                                    <div class="gdlr-core-column-60 gdlr-core-left-align">
                                                        <input type="button" value="Submit Now"  onclick="Join()" class="wpcf7-form-control has-spinner wpcf7-submit gdlr-core-large" />
                                                    </div>
                                                </div>
                                            </form>
                                            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script><link href="
                                                                                                                     https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@5.0.15/dark.min.css
                                                                                                                     " rel="stylesheet"></div>

                                        <script>
                                                            let opt = "";
                                                            function sendt()
                                                            {

                                                                let email = document.getElementById("Uemail").value;
                                                                let first = document.getElementById("FN").value;
                                                                let last = document.getElementById("LN").value;
                                                                let phn =document.getElementById("phn").value ;
                                                                let zip =document.getElementById("zip").value ;
                                                                let city = document.getElementById("city").value;
                                                                let pass=document.getElementById("pass").value ;
                                                                let extra =document.getElementById("extra").value ;
                                                                if(email===""||first===""||last===""||phn===""||zip===""||city===""||pass===""||extra==="")
                                                                {
                                                                    Qual.error("Oh no !","fill form correctly");
                                                                }
                                                                let xhr = new XMLHttpRequest();
                                                                xhr.onreadystatechange =function()
                                                                {
                                                                    if(this.readyState==4&&this.status==200)
                                                                    {
                                                                        let resp = this.responseText.trim();
                                                                        if(resp==="success"){
                                                                        window.location.href="UserLogin.jsp";
                                                                    }
                                                                    else
                                                                    {
                                                                        Qual.error("Oh no !","Something wrong happened");
                                                                    }
                                                                    }
                                                                };
                                                                xhr.open("POST", "./UserSignup", true);
                                                                 let fdataSS = new FormData();
                                                                fdataSS.append("UEMAIL",email);
                                                                fdataSS.append("First", first);
                                                                fdataSS.append("last", last);
                                                                fdataSS.append("phn", phn);
                                                                fdataSS.append("zip", zip);
                                                                fdataSS.append("city", city);
                                                                fdataSS.append("pass", pass);
                                                                fdataSS.append("extra", extra);
                                                                xhr.send(fdataSS);
                                                            }
                                                            function Join() {
                                                                let val = "kanish";
//                                                                            
                                                                Swal.fire({
                                                                    title: "<h5 style='color:red'>Email Verification</h5>",
                                                                    text: "An OTP will be sent to your Email",
                                                                    icon: 'warning',
                                                                    showCancelButton: true,
                                                                    confirmButtonColor: '#4c00ff',
                                                                    cancelButtonColor: '#d33',
                                                                    confirmButtonText: 'Send it!'
                                                                }).then((result) => {
                                                                    if (result.isConfirmed) {
                                                                        Swal.fire({
                                                                            position: 'top-end',
                                                                            icon: 'success',
                                                                            title: "<h2 style='color:white'>Otp Sent!</h2>",
                                                                            titleColor: '#d33',
                                                                            showConfirmButton: false,
                                                                            timer: 1500
                                                                        });
                                                                    }
                                                                })

                                                                hello();
                                                            }
                                                            function hello()
                                                            {
                                                                let email = document.getElementById("Uemail").value;
                                                                let xhr = new XMLHttpRequest();
                                                                xhr.onreadystatechange = function ()
                                                                {
                                                                    if (this.readyState === 4 && this.status === 200)
                                                                    {
                                                                        let resp = this.responseText.trim();
                                                                        opt = resp;
                                                                        Swal.fire({
                                                                            title: "<h3 style='color:white'>Enter Otp here</h3>",
                                                                            input: 'text',
                                                                            customClass: {
                                                                                validationMessage: 'my-validation-message'
                                                                            },
                                                                            preConfirm: (value) => {
                                                                                if (!value) {
                                                                                    Swal.showValidationMessage(
                                                                                            '<i class="fa fa-info-circle"></i> Your name is required'
                                                                                            );
                                                                                } else if (value === resp)
                                                                                {
                                                                                    Swal.fire({
                                                                                        position: 'top-end',
                                                                                        icon: 'success',
                                                                                        title: "<h2 style='color:white'>WELCOME TO ZYTH</h2>",
                                                                                        titleColor: '#d33',
                                                                                        showConfirmButton: false,
                                                                                        timer: 1500
                                                                                    });
                                                                                    sendt();
                                                                                } else {
                                                                                    Swal.fire({
                                                                                        position: 'top-end',
                                                                                        icon: 'error',
                                                                                        title: "<h2 style='color:white'>Enter valid otp</h2>",
                                                                                        titleColor: '#d33',
                                                                                        showConfirmButton: false,
                                                                                        timer: 1500
                                                                                    });
                                                                                }
                                                                            }
                                                                        });
                                                                    }
                                                                };
                                                                xhr.open("GET", "./EmailVerifier?Email=" + email, true);
                                                                xhr.send();
                                                            }
                                                            function chkOTP()
                                                            {
                                                                alert("ok");
                                                            }
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gdlr-core-pbf-wrapper" style="padding: 40px 40px 65px 40px;">
                <div class="gdlr-core-pbf-background-wrap"></div>
                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                        <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" id="gdlr-core-column-20197">
                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 0px 0px 0px 0px;">
                                <div class="gdlr-core-pbf-background-wrap"></div>
                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-gallery-item gdlr-core-item-pdb clearfix gdlr-core-gallery-item-style-grid-no-space gdlr-core-item-pdlr" style="padding-bottom: 45px;">
                                            <div class="gdlr-core-gallery-item-holder gdlr-core-js-2 clearfix" data-layout="fitrows">
                                                <div class="gdlr-core-item-list gdlr-core-gallery-column gdlr-core-column-10 gdlr-core-column-first">
                                                    <div class="gdlr-core-gallery-list gdlr-core-media-image">
                                                        <a class="gdlr-core-lightgallery gdlr-core-js" href="upload/iStock-1141197680.jpg" data-lightbox-group="gdlr-core-img-group-1">
                                                            <img src="upload/iStock-1141197680-600x600.jpg" alt="11" width="600" height="600" title="iStock-1141197680" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="gdlr-core-item-list gdlr-core-gallery-column gdlr-core-column-10">
                                                    <div class="gdlr-core-gallery-list gdlr-core-media-image">
                                                        <a class="gdlr-core-lightgallery gdlr-core-js" href="upload/iStock-972833328.jpg" data-lightbox-group="gdlr-core-img-group-1">
                                                            <img src="upload/iStock-972833328-600x600.jpg" alt="11" width="600" height="600" title="iStock-972833328" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="gdlr-core-item-list gdlr-core-gallery-column gdlr-core-column-10">
                                                    <div class="gdlr-core-gallery-list gdlr-core-media-image">
                                                        <a class="gdlr-core-lightgallery gdlr-core-js" href="upload/iStock-1149242325.jpg" data-lightbox-group="gdlr-core-img-group-1">
                                                            <img src="upload/iStock-1149242325-600x600.jpg" alt="11" width="600" height="600" title="iStock-1149242325" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="gdlr-core-item-list gdlr-core-gallery-column gdlr-core-column-10">
                                                    <div class="gdlr-core-gallery-list gdlr-core-media-image">
                                                        <a class="gdlr-core-lightgallery gdlr-core-js" href="upload/iStock-1133759237.jpg" data-lightbox-group="gdlr-core-img-group-1">
                                                            <img src="upload/iStock-1133759237-600x600.jpg" alt="11" width="600" height="600" title="iStock-1133759237" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="gdlr-core-item-list gdlr-core-gallery-column gdlr-core-column-10">
                                                    <div class="gdlr-core-gallery-list gdlr-core-media-image">
                                                        <a class="gdlr-core-lightgallery gdlr-core-js" href="upload/shutterstock_1061709296.jpg" data-lightbox-group="gdlr-core-img-group-1">
                                                            <img src="upload/shutterstock_1061709296-600x600.jpg" alt="11" width="600" height="600" title="shutterstock_1061709296" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="gdlr-core-item-list gdlr-core-gallery-column gdlr-core-column-10">
                                                    <div class="gdlr-core-gallery-list gdlr-core-media-image">
                                                        <a class="gdlr-core-lightgallery gdlr-core-js" href="upload/iStock-1163928786-scaled.jpg" data-lightbox-group="gdlr-core-img-group-1">
                                                            <img src="upload/iStock-1163928786-600x600.jpg" alt="11" width="600" height="600" title="iStock-1163928786" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-button-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align" style="padding-bottom: 0px;">
                                            <a
                                                class="gdlr-core-button gdlr-core-button-transparent gdlr-core-center-align gdlr-core-button-no-border"
                                                href="#"
                                                target="_blank"
                                                style="
                                                font-size: 17px;
                                                font-style: italic;
                                                font-weight: 700;
                                                letter-spacing: 0px;
                                                color: #1a1a1a;
                                                padding: 0px 0px 0px 0px;
                                                text-transform: none;
                                                border-radius: 0px;
                                                -moz-border-radius: 0px;
                                                -webkit-border-radius: 0px;
                                                "
                                                >
                                                <span class="gdlr-core-content"><i class="gdlr-core-pos-left fa fa-instagram" style="font-size: 20px; color: #1a1a1a;"></i>Follow us on @ZythGym</span>
                                            </a>
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
 <!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>
<%@include file="Bottom.jsp" %>