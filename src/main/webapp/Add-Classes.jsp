<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="zyth.database.*" %>
<%@include file="Header.jsp" %>

<!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>


                <div class="zyth-page-wrapper" id="zyth-page-wrapper">
                    <div class="gdlr-core-page-builder-body">
                        <div class="gdlr-core-pbf-wrapper" style="margin: 0px 0px 0px 0px; padding: 270px 0px 240px 0px;" id="gdlr-core-wrapper-1">
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #0a0a0a;">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="opacity: 0.6; background-image: url(upload/HIIT-Sprint.jpg); background-size: cover; background-position: center;"
                                    data-parallax-speed="0.2"
                                    ></div>
                            </div>
                            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr">
                                            <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 22px; font-style: normal; letter-spacing: 0px; color: #ffffff; margin-bottom: 15px;">
                                                Hello admin here you can add more classes!
                                            </span>
                                            <div class="gdlr-core-title-item-title-wrap">
                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 95px; font-weight: 700; font-style: italic; letter-spacing: 0px; color: #ffffff;">
                                                   Add a Zyth's Class<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                                </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-pbf-element">
                                        <div class="gdlr-core-shape-divider-item" id="gdlr-core-shape-divider-53174">
                                            <div class="gdlr-core-shape-divider-wrap gdlr-core-pos-bottom gdlr-core-hide-in-mobile gdlr-core-inverted">
                                                <svg preserveaspectratio="none" viewbox="0 0 1000 100" xmlns="http://www.w3.org/2000/svg"><path d="m500.2 94.7-500.2-94.7v100h1000v-100z"></path></svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="zyth-page-wrapper" id="zyth-page-wrapper">
                            <div class="zyth-content-container zyth-container">
                                <div class="zyth-content-area zyth-item-pdlr zyth-sidebar-style-none clearfix">
                                    <div class="woocommerce">
                                        <div class="woocommerce-notices-wrapper"></div>

                                        <h2> </h2>

                                        <form class="woocommerce-form woocommerce-form-login login" method="post" action="./AddNewClass" enctype="multipart/form-data" id="farm">
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="username">Enter Class Name&nbsp;<span class="required">*</span></label>
                                                <input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username" id="ClassName" />
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Enter Start Time for Class&nbsp;<span class="required">*</span></label>
                                                <input class="woocommerce-Input woocommerce-Input--text input-text" type="time" name="ClassSTime" id="ClassSTime" />
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Enter End Time for Class&nbsp;<span class="required">*</span></label>
                                                <input class="woocommerce-Input woocommerce-Input--text input-text" type="time" name="ClassETime" id="ClassETime" />
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Enter Overview&nbsp;<span class="required">*</span></label>
                                                <textarea class="woocommerce-Input woocommerce-Input--text input-text"  name="Overview" id="details" rows="12" cols="12"/></textarea>
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Any Extra Item to be Brought along&nbsp;<span class="required">*</span></label>
                                                <input class="woocommerce-Input woocommerce-Input--text input-text" type="text" name="item" id="item"/>
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Price For One Month Class Plan&nbsp;<span class="required">*</span></label>
                                                <input class="woocommerce-Input woocommerce-Input--text input-text" type="number" name="Month" id="Month"/>
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Price for one Week Class &nbsp;<span class="required">*</span></label>
                                                <input class="woocommerce-Input woocommerce-Input--text input-text" type="number" name="Week" id="Week"/>
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Price for a Single Class&nbsp;<span class="required">*</span></label>
                                                <input class="woocommerce-Input woocommerce-Input--text input-text" type="number" name="Single" id="Single"/>
                                            </p>
                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <label for="password">Enter Photo of Class&nbsp;<span class="required">*</span></label>
                                                <input class="woocommerce-Input woocommerce-Input--text input-text" type="file" onchange="read(this)" id="pics" />
                                            </p>
                                            <div class="flex-shrink-0">
                                                <img src="upload/C2.jpg" class="img img-fluid rounded-circle" style="width:380px; height: 350px" id="3333" alt="avatar">
                                            </div>
                                            <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                            <script>
                                                function read(input)
                                                {
                                                    if (input.files && input.files[0])
                                                    {
                                                        var reader = new FileReader();
                                                        reader.onload = function (e) {
                                                            $('#3333')
                                                                    .attr('src', e.target.result);
                                                        };
                                                        reader.readAsDataURL(input.files[0]);
                                                    }
                                                }
                                            </script>
                                            <p class="form-row">
                                                <label class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
                                                    <!--<input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever" /> <span>Remember me</span>-->
                                                </label>
                                                <input type="hidden" id="woocommerce-login-nonce" name="woocommerce-login-nonce" value="2de19b1dad" /><input type="hidden" name="_wp_http_referer" value="/zyth/gym/my-account-2/" />
                                                <button type="button" class="woocommerce-button button woocommerce-form-login__submit" name="login" onclick="AddClass()" value="Log in">Add Class</button>
                                            </p>

                                        </form>
                                        <script>
                                            function AddClass()
                                            {
                                                let classname = document.getElementById("ClassName").value;
                                                let starttime = document.getElementById("ClassSTime").value;
                                                let endtime = document.getElementById("ClassETime").value;
                                                let overview = document.getElementById("details").value;
                                                let items = document.getElementById("item").value;
                                                let photo = document.getElementById("pics").files[0];
                                                if(classname===""||starttime===""||endtime===""||overview===""||items===""|| photo==="")
                                                {
                                                    Qual.error("Take Care!","Fill This Form Completely");
                                                }
                                               let xhr = new XMLHttpRequest();
                                               xhr.onreadystatechange = function()
                                               {
                                                   if(this.readyState===4&& this.status===200)
                                                   {
                                                       let resp = this.responseText.trim();
                                                       if(resp==="success")
                                                       {
                                                           Qual.successd("Success","Class Uploaded Successfully");
                                                           document.getElementById("farm").reset();
                                                           document.getElementById("3333").src="upload/C2.jpg";
                                                       }
                                                       else
                                                       {
                                                           Qual.error("Oh no !","Might Already Exists");
                                                       }
                                                   }
                                               };
                                               xhr.open("POST", "./AddNewClass", true);
                                               let Classdata = new FormData();
                                               Classdata.append("MonthPrice", document.getElementById("Month").value);
                                               Classdata.append("WeekPrice", document.getElementById("Week").value);
                                               Classdata.append("SinglePrice", document.getElementById("Single").value);
                                               Classdata.append("ClassName", document.getElementById("ClassName").value);
                                               Classdata.append("starttime", document.getElementById("ClassSTime").value);
                                               Classdata.append("endtime", document.getElementById("ClassETime").value);
                                               Classdata.append("overview", document.getElementById("details").value);
                                               Classdata.append("items", document.getElementById("item").value);
                                               Classdata.append("f69", document.getElementById("pics").files[0]);
                                               xhr.send(Classdata);
                                            }
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


 <!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>

<%@include file="Bottom.jsp" %>