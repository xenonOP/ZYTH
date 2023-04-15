<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="zyth.database.*" %>
<%@include file="Header.jsp" %>
            
<!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>

            <div class="zyth-page-title-wrap zyth-style-custom zyth-center-align">
                <div class="zyth-header-transparent-substitute"></div>
                <div class="zyth-page-title-overlay"></div>
                <div class="zyth-page-title-top-gradient"></div>
                <div class="zyth-page-title-container zyth-container">
                    <div class="zyth-page-title-content zyth-item-pdlr"><h1 class="zyth-page-title">Hello Admin</h1></div>
                </div>
            </div>
            <div class="zyth-page-wrapper" id="zyth-page-wrapper">
                <div class="zyth-content-container zyth-container">
                    <div class="zyth-content-area zyth-item-pdlr zyth-sidebar-style-none clearfix">
                        <div class="woocommerce">
                            <div class="woocommerce-notices-wrapper"></div>

                            <h2>Login</h2>

                            <form class="woocommerce-form woocommerce-form-login login" method="post" action="./AdminLogin">
                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                    <label for="username">Email address&nbsp;<span class="required">*</span></label>
                                    <input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username" id="Amail" autocomplete="username" value="" />
                                </p>
                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                    <label for="password">Password&nbsp;<span class="required">*</span></label>
                                    <input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password" id="APass" autocomplete="current-password" />
                                </p>
                                    
                                <p class="form-row">
                                    <label class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
                                        <input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever" /> <span>Remember me</span>
                                    </label>
                                    <input type="hidden" id="woocommerce-login-nonce" name="woocommerce-login-nonce" value="2de19b1dad" /><input type="hidden" name="_wp_http_referer" value="/zyth/gym/my-account-2/" />
                                    <button type="button" class="woocommerce-button button woocommerce-form-login__submit" name="login" onclick="chckAdmin()" value="Log in">Log in</button>
                                </p>
                               
                            </form>
                            <script>
                                function chckAdmin()
                                {
                                    let Amail = document.getElementById("Amail").value;
                                    let APass = document.getElementById("APass").value;
                                    let xhr = new XMLHttpRequest();
                                    xhr.onreadystatechange= function()
                                    {
                                        if(this.readyState===4 &&this.status===200)
                                        {
                                            let resp= this.responseText.trim();
                                            if(resp==="success")
                                            {
                                                window.location.href="ADMIN2.jsp";
                                            }
                                            else{
                                                Qual.sd(resp);
                                            }
                                           
                                        }
                                    };
                                    xhr.open("POST", "./AdminLogin?Amail="+Amail+"&APass="+APass, true);
                                    xhr.send();
                                }
                                </script>
                        </div>
                    </div>
                </div>
            </div>


<!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>
<%@include file="Bottom.jsp" %>