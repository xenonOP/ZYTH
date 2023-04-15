<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="zyth.database.*" %>
<%@include file="Header.jsp" %>

<% String ClassName = request.getParameter("ClassName");%>
<!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>
<div class="zyth-page-wrapper" id="zyth-page-wrapper">
    <div class="gdlr-core-page-builder-body">
        <div class="gdlr-core-pbf-wrapper" style="margin: 0px 0px 0px 0px; padding: 270px 0px 240px 0px;" id="gdlr-core-wrapper-1">
            <div class="gdlr-core-pbf-background-wrap" style="background-color: #0a0a0a;">
                <%
                try{
                ResultSet rs= DBLoader.executeQuery("select * from zyth.class where ClassName='"+ClassName+"' and status='approve'");
                     if(rs.next())
                    {
                        String photo = rs.getString("photo");
                        String name = rs.getString("ClassName");
                        String desc = rs.getString("over");
                        StringTokenizer st = new StringTokenizer(desc, ".");
                        int n = st.countTokens();
                        String Start= rs.getString("StartTime");
                        String End = rs.getString("EndTime");                                                    
                %>
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"  style="opacity: 0.6; background-image: url(<%=photo%>); background-size: cover; background-position: center;" data-parallax-speed="0.2"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr">
                            <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 22px; font-style: normal; letter-spacing: 0px; color: #ffffff; margin-bottom: 15px;">
                                Explore the session
                            </span>
                            <div class="gdlr-core-title-item-title-wrap">
                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 95px; font-weight: 700; font-style: italic; letter-spacing: 0px; color: #ffffff;">
                                    <%=name%><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                </h3>
                            </div>
                        </div>
                    </div>

                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-shape-divider-item" id="gdlr-core-shape-divider-59599">
                            <div class="gdlr-core-shape-divider-wrap gdlr-core-pos-bottom gdlr-core-inverted">
                                <svg preserveaspectratio="none" viewbox="0 0 1000 100" xmlns="http://www.w3.org/2000/svg"><path d="m500.2 94.7-500.2-94.7v100h1000v-100z"></path></svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper" style="padding: 125px 0px 121px 0px;" data-skin="Zyth ClassList Column SVC" id="gdlr-core-wrapper-3">
            <div class="gdlr-core-pbf-background-wrap" style="background-color: #000000;">
                <div
                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                    style="background-image: url(upload/MISSION-00.jpg); background-repeat: no-repeat; background-position: center;"
                    data-parallax-speed="0.1"
                    ></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" id="gdlr-core-column-48434">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 0px 0px 90px 0px;">
                            <div class="gdlr-core-pbf-background-wrap"></div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 20px;">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 65px; font-weight: 700; font-style: italic; letter-spacing: 0px; color: #ffffff;">
                                                Class Overall<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-divider-item gdlr-core-divider-item-normal gdlr-core-item-pdlr gdlr-core-center-align" style="margin-bottom: 0px; margin-left: 5px;">
                                        <div class="gdlr-core-divider-container" style="max-width: 38px;">
                                            <div
                                                class="gdlr-core-divider-line gdlr-core-skin-divider"
                                                style="
                                                transform: skewX(150deg);
                                                -webkit-transform: skewX(150deg);
                                                border-color: #4c00ff;
                                                border-width: 7px;
                                                border-radius: 0px;
                                                -moz-border-radius: 0px;
                                                -webkit-border-radius: 0px;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-36 gdlr-core-column-first" id="gdlr-core-column-12077">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 10px 180px 0px 0px;">
                            <div class="gdlr-core-pbf-background-wrap"></div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                <div class="gdlr-core-pbf-element">
                                    <div
                                        class="gdlr-core-column-service-item gdlr-core-item-pdb gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr"
                                        style="padding-bottom: 30px;"
                                        >
                                        <div class="gdlr-core-column-service-media gdlr-core-media-image" style="margin-top: 12px; margin-right: 40px; max-width: 47px;">
                                            <img src="upload/Logo01.png" alt="11" width="100" height="102" title="Logo01" />
                                        </div>
                                        <div class="gdlr-core-column-service-content-wrapper">
                                            <div class="gdlr-core-column-service-title-wrap">
                                                <h3 class="gdlr-core-column-service-title gdlr-core-skin-title" style="font-size: 28px; font-weight: 700; text-transform: none;">Pure Strength</h3>
                                            </div>
                                            <div class="gdlr-core-column-service-content" style="font-size: 16px; font-weight: 400; text-transform: none;">
                                                <p><%=st.nextToken()%><%=st.nextToken()%>.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div
                                        class="gdlr-core-column-service-item gdlr-core-item-pdb gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr"
                                        style="padding-bottom: 30px;"
                                        >
                                        <div class="gdlr-core-column-service-media gdlr-core-media-image" style="margin-top: 12px; margin-right: 40px; max-width: 47px;">
                                            <img src="upload/Logo02.png" alt="11" width="100" height="102" title="Logo02" />
                                        </div>
                                        <div class="gdlr-core-column-service-content-wrapper">
                                            <div class="gdlr-core-column-service-title-wrap">
                                                <h3 class="gdlr-core-column-service-title gdlr-core-skin-title" style="font-size: 28px; font-weight: 700; text-transform: none;">The Challenge</h3>
                                            </div>
                                            <div class="gdlr-core-column-service-content" style="font-size: 16px; font-weight: 400; text-transform: none;">
                                                <p><%=st.nextToken()%><%=st.nextToken()%>.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div
                                        class="gdlr-core-column-service-item gdlr-core-item-pdb gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr"
                                        style="padding-bottom: 30px;"
                                        >
                                        <div class="gdlr-core-column-service-media gdlr-core-media-image" style="margin-top: 12px; margin-right: 40px; max-width: 47px;">
                                            <img src="upload/Logo02.png" alt="11" width="100" height="102" title="Logo02" />
                                        </div>
                                        <div class="gdlr-core-column-service-content-wrapper">
                                            <div class="gdlr-core-column-service-title-wrap">
                                                <h3 class="gdlr-core-column-service-title gdlr-core-skin-title" style="font-size: 28px; font-weight: 700; text-transform: none;">Timings</h3>
                                            </div>
                                            <div class="gdlr-core-column-service-content" style="font-size: 16px; font-weight: 400; text-transform: none;">
                                                <p><b><%=Start%>--<%=End%>.<br> MON-SAT</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div
                                        class="gdlr-core-column-service-item gdlr-core-item-pdb gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr"
                                        style="padding-bottom: 45px;"
                                        >
                                        <div class="gdlr-core-column-service-media gdlr-core-media-image" style="margin-top: 12px; margin-right: 40px; max-width: 47px;">
                                            <img src="upload/Logo03.png" alt="11" width="100" height="102" title="Logo03" />
                                        </div>
                                        <div class="gdlr-core-column-service-content-wrapper">
                                            <div class="gdlr-core-column-service-title-wrap">
                                                <h3 class="gdlr-core-column-service-title gdlr-core-skin-title" style="font-size: 28px; font-weight: 700; text-transform: none;">Our Mission</h3>
                                            </div>
                                            <div class="gdlr-core-column-service-content" style="font-size: 16px; font-weight: 400; text-transform: none;">
                                                <p><%=st.nextToken()%><%=st.nextToken()%><%=st.nextToken()%>.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-24" id="gdlr-core-column-44745">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 10px 0px 0px 0px;">
                            <div class="gdlr-core-pbf-background-wrap"></div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-image-item gdlr-core-item-pdb gdlr-core-center-align gdlr-core-item-pdlr" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image gdlr-core-image-item-style-rectangle" style="border-width: 0px;">
                                            <img src="<%=photo%>" alt="11" width="816" height="1016" title="Right-IMG" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
               }
            }
              catch(Exception e)
              {
               e.printStackTrace();
              }
        %>

        <div class="zyth-page-wrapper" id="zyth-page-wrapper">
            <div class="gdlr-core-page-builder-body">
                <div class="gdlr-core-pbf-wrapper" style="padding: 100px 0px 100px 0px;" id="gdlr-core-wrapper-1">
                    <div class="gdlr-core-pbf-background-wrap" style="background-color: #0c0c0c;">
                        <div
                            class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                            style="background-image: url(upload/Join-US-BG-1.jpg); background-repeat: no-repeat; background-position: top center;"
                            data-parallax-speed="0"
                            ></div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                        <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                            <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" data-skin="Plan Form" id="gdlr-core-column-43005">
                                <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 10px 0px 0px 0px;">
                                    <div class="gdlr-core-pbf-background-wrap"></div>
                                    <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js" style="max-width: 870px;">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 20px;">
                                                <div class="gdlr-core-title-item-title-wrap">
                                                    <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 48px; font-weight: 600; font-style: italic; letter-spacing: 0px; text-transform: none; color: #ffffff;">
                                                        Select Your Plan<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                                    </h3>
                                                </div>
                                            </div>
                                        </div>
                                        <%
                                        String mail= (String)(session.getAttribute("user"));
                                        try{
                                        ResultSet rs2= DBLoader.executeQuery("select * from zyth.class where ClassName='"+ClassName+"' and status='approve'");
                                             if(rs2.next())
                                            {
                                                String MonthPrice = rs2.getString("MonthPrice");
                                                String WeekPrice = rs2.getString("WeekPrice");
                                                String SinglePrice = rs2.getString("SinglePrice");
                                        %>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-divider-item-normal gdlr-core-item-pdlr gdlr-core-left-align" style="margin-bottom: 55px; margin-left: 5px;">
                                                <div class="gdlr-core-divider-container" style="max-width: 38px;">
                                                    <div
                                                        class="gdlr-core-divider-line gdlr-core-skin-divider"
                                                        style="
                                                        transform: skewX(150deg);
                                                        -webkit-transform: skewX(150deg);
                                                        border-color: #4c00ff;
                                                        border-width: 7px;
                                                        border-radius: 0px;
                                                        -moz-border-radius: 0px;
                                                        -webkit-border-radius: 0px"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-price-plan-item gdlr-core-js gdlr-core-item-pdlr gdlr-core-item-pdb">
                                                <div class="gdlr-core-price-plan-options">
                                                    <div class="gdlr-core-price-plan clearfix gdlr-core-active" data-tab-id="1">
                                                        <div class="gdlr-core-price-plan-option"><span></span></div>
                                                        <div class="gdlr-core-price-plan-title">One Month Plan</div>
                                                        <div class="gdlr-core-price-plan-price">&#8377;<%=MonthPrice%>/ Month</div>
                                                        <div class="gdlr-core-price-plan-content" style="color: #a8a8a8;">
                                                            No Term, plus free access card. &#8377;9000 joining fee included, 1 month guess pass and free 2 classes. Free access to all equipments and the swimming pool.
                                                        </div>
                                                    </div>
                                                    <div class="gdlr-core-price-plan clearfix" data-tab-id="2">
                                                        <div class="gdlr-core-price-plan-option"><span></span></div>
                                                        <div class="gdlr-core-price-plan-title">One Week Plan</div>
                                                        <div class="gdlr-core-price-plan-price">&#8377;<%=WeekPrice%>/ Week</div>
                                                        <div class="gdlr-core-price-plan-content" style="color: #a8a8a8;">No Term, plus free access card. 1 month guess pass. Free access to all equipments and the swimming pool.</div>
                                                    </div>
                                                    <div class="gdlr-core-price-plan clearfix" data-tab-id="3">
                                                        <div class="gdlr-core-price-plan-option"><span></span></div>
                                                        <div class="gdlr-core-price-plan-title">One Class Plan</div>
                                                        <div class="gdlr-core-price-plan-price">&#8377;<%=SinglePrice%>/ Class</div>
                                                        <div class="gdlr-core-price-plan-content" style="color: #a8a8a8;">No Term, plus free access card. Free access to gym equipments.</div>
                                                    </div>
                                                    <div class="gdlr-core-step2 gdlr-core-button gdlr-core-rectangle" style="transform: skewX(-20deg); -webkit-transform: skewX(-20deg);">
                                                        <span class="gdlr-core-content" style="transform: skewX(20deg); -webkit-transform: skewX(20deg);">Next Step<i class="gdlr-icon-oblique-arrow"></i></span>
                                                    </div>
                                                </div>
                                                <div class="gdlr-core-price-plan-forms">
                                                    <div>
                                                        <div class="gdlr-core-price-plan-selected-title">You select : <strong>One Month Plan</strong></div>
                                                        <div role="form" class="wpcf7" id="wpcf7-f10921-p15371-o1" lang="en-US" dir="ltr">
                                                            <div class="screen-reader-response">
                                                                <p role="status" aria-live="polite" aria-atomic="true"></p>
                                                                <ul></ul>
                                                            </div>
                                                            <form action="./BookClass" method="post" class="wpcf7-form init" data-status="init">
                                                                <div style="display: none;">
                                                                    <input type="hidden" name="_wpcf7" value="10921" />
                                                                    <input type="hidden" name="_wpcf7_version" value="5.5.1" />
                                                                    <input type="hidden" name="_wpcf7_locale" value="en_US" />
                                                                    <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f10921-p15371-o1" />
                                                                    <input type="hidden" name="_wpcf7_container_post" value="15371" />
                                                                    <input type="hidden" name="_wpcf7_posted_data_hash" value="" />
                                                                </div>
                                                                <p>Please fill your information</p>
                                                                <div class="gdlr-core-input-wrap gdlr-core-full-width gdlr-core-bottom-border gdlr-core-with-column">
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-first-name">
                                                                            <input type="text" name="FIRSTNAME" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="First Name*" />
                                                                        </span>
                                                                    </div>
                                                                    <input type="" name ="ClassName" value="<%=ClassName%>" style="display: none"/>
                                                                    <input type="" name ="Duration" value="30" style="display: none"/>
                                                                    <input type="" name ="Price" id="paise" value="<%=MonthPrice%>" style="display: none"/>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-last-name">
                                                                            <input type="text" name="LASTNAME" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Last Name*" />
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-phone">
                                                                            <input type="text" name="PHUN" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Phone*" />
                                                                        </span>
                                                                    </div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-email">
                                                                            <input type="email" name="EMAIL" value="<%=mail%>"  style="display: none" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email*" />
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap bdate">
                                                                            <input type="date" name="bdate"  value="" class="wpcf7-form-control wpcf7-date wpcf7-validates-as-required wpcf7-validates-as-date" aria-required="true" aria-invalid="false" />
                                                                        </span>
                                                                    </div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-zipcode">
                                                                            <input
                                                                                type="text"
                                                                                name="zipcode"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="Zip Code*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-30" style="margin-bottom: 35px;">
                                                                        <span class="wpcf7-form-control-wrap your-message">
                                                                            <textarea
                                                                                name="message"
                                                                                cols="40"
                                                                                rows="10"
                                                                                class="wpcf7-form-control wpcf7-textarea"
                                                                                aria-invalid="false"
                                                                                placeholder="Additional Request"
                                                                                ></textarea>
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-60">
                                                                        <span class="wpcf7-form-control-wrap checkbox-528">
                                                                            <span class="wpcf7-form-control wpcf7-checkbox wpcf7-validates-as-required gdlr-core-round-checkbox">
                                                                                <span class="wpcf7-list-item first last">
                                                                                    <label><input type="checkbox" name="checkbox-528[]" value="" /><span class="wpcf7-list-item-label"></span></label>
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                        I've read and agree to the <a href="#" target="_blank">Terms and Data Privacy Policy</a>
                                                                    </div>
                                                                    <div class="clear" style="margin-bottom: 30px;"></div>
                                                                    <div class="gdlr-core-column-60 gdlr-core-left-align">
                                                                        <input type="submit" value="Submit Now" class="wpcf7-form-control has-spinner wpcf7-submit gdlr-core-large" />
                                                                    </div>
                                                                </div>
                                                                <div class="wpcf7-response-output" aria-hidden="true"></div>
                                                            </form>
                                                        </div>
                                                        <div class="gdlr-core-price-plan-selected-back gdlr-core-step1"><i class="ion-ios-arrow-thin-left"></i>Go back to previous step</div>
                                                    </div>
                                                    <div>
                                                        <div class="gdlr-core-price-plan-selected-title">You select : <strong>One Week Plan</strong></div>
                                                        <div role="form" class="wpcf7" id="wpcf7-f15044-p15371-o2" lang="en-US" dir="ltr">
                                                            <div class="screen-reader-response">
                                                                <p role="status" aria-live="polite" aria-atomic="true"></p>
                                                                <ul></ul>
                                                            </div>
                                                            <form action="./BookClass" method="post" class="wpcf7-form init" novalidate="novalidate" data-status="init">
                                                                <div style="display: none;">
                                                                    <input type="hidden" name="_wpcf7" value="15044" />
                                                                    <input type="hidden" name="_wpcf7_version" value="5.5.1" />
                                                                    <input type="hidden" name="_wpcf7_locale" value="en_US" />
                                                                    <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f15044-p15371-o2" />
                                                                    <input type="hidden" name="_wpcf7_container_post" value="15371" />
                                                                    <input type="hidden" name="_wpcf7_posted_data_hash" value="" />
                                                                </div>
                                                                <p>Please fill your information</p>
                                                                <div class="gdlr-core-input-wrap gdlr-core-full-width gdlr-core-bottom-border gdlr-core-with-column">
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-first-name">
                                                                            <input
                                                                                type="text"
                                                                                name="FIRSTNAME"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="First Name*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <input type="" name ="ClassName" value="<%=ClassName%>" style="display: none"/>
                                                                    <input type="" name ="Duration" id="Duration" value="7" style="display: none"/>
                                                                    <input type="" name ="Price"  id ="paise" value="<%=WeekPrice%>" style="display: none"/>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-last-name">
                                                                            <input
                                                                                type="text"
                                                                                name="LASTNAME"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="Last Name*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-phone">
                                                                            <input
                                                                                type="text"
                                                                                name="PHUN"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="Phone*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-email">
                                                                            <input
                                                                                type="email"
                                                                                name="EMAIL"
                                                                                value="<%=mail%>"
                                                                                style="display: none"
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
                                                                            <input
                                                                                type="date"
                                                                                name="bdate"
                                                                                value=""
                                                                                class="wpcf7-form-control wpcf7-date wpcf7-validates-as-required wpcf7-validates-as-date"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-zipcode">
                                                                            <input
                                                                                type="text"
                                                                                name="zipcode"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="Zip Code*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-30" style="margin-bottom: 35px;">
                                                                        <span class="wpcf7-form-control-wrap your-message">
                                                                            <textarea
                                                                                name="message"
                                                                                cols="40"
                                                                                rows="10"
                                                                                class="wpcf7-form-control wpcf7-textarea"
                                                                                aria-invalid="false"
                                                                                placeholder="Additional Request"
                                                                                ></textarea>
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-60">
                                                                        <span class="wpcf7-form-control-wrap checkbox-528">
                                                                            <span class="wpcf7-form-control wpcf7-checkbox wpcf7-validates-as-required gdlr-core-round-checkbox">
                                                                                <span class="wpcf7-list-item first last">
                                                                                    <label><input type="checkbox" name="checkbox-528[]" value="" /><span class="wpcf7-list-item-label"></span></label>
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                        I've read and agree to the <a href="#" target="_blank">Terms and Data Privacy Policy</a>
                                                                    </div>
                                                                    <div class="clear" style="margin-bottom: 30px;"></div>
                                                                    <div class="gdlr-core-column-60 gdlr-core-left-align">
                                                                        <input type="submit" value="Submit Now" class="wpcf7-form-control has-spinner wpcf7-submit gdlr-core-large" />
                                                                    </div>
                                                                </div>
                                                                <div class="wpcf7-response-output" aria-hidden="true"></div>
                                                            </form>
                                                        </div>
                                                        <div class="gdlr-core-price-plan-selected-back gdlr-core-step1"><i class="ion-ios-arrow-thin-left"></i>Go back to previous step</div>
                                                    </div>
                                                    <div>
                                                        <div class="gdlr-core-price-plan-selected-title">You select : <strong>One Class Plan</strong></div>
                                                        <div role="form" class="wpcf7" id="wpcf7-f15045-p15371-o3" lang="en-US" dir="ltr">
                                                            <div class="screen-reader-response">
                                                                <p role="status" aria-live="polite" aria-atomic="true"></p>
                                                                <ul></ul>
                                                            </div>
                                                            <form action="./BookClass" method="post" class="wpcf7-form init" novalidate="novalidate" data-status="init">

                                                                <p>Please fill your information</p>
                                                                <div class="gdlr-core-input-wrap gdlr-core-full-width gdlr-core-bottom-border gdlr-core-with-column">
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-first-name">
                                                                            <input
                                                                                type="text"
                                                                                name="FIRSTNAME"
                                                                                id="FIRSTNAME"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="First Name*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <input type="" name ="ClassName" id="ClassName" value="<%=ClassName%>" style="display: none"/>
                                                                    <input type="" name ="Duration" id="Duration" value="1" style="display: none"/>
                                                                    <input type="" name ="Price" id="paise" value="<%=SinglePrice%>" style="display: none"/>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-last-name">
                                                                            <input
                                                                                type="text"
                                                                                name="LASTNAME"
                                                                                id="LASTNAME"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="Last Name*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-phone">
                                                                            <input
                                                                                type="text"
                                                                                name="PHUN"
                                                                                id="PHUN"
                                                                                value=""
                                                                                size="40"
                                                                                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                placeholder="Phone*"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-email">
                                                                            <input
                                                                                type="email"
                                                                                name="EMAIL"
                                                                                id="EMAIL"
                                                                                value="<%=mail%>"
                                                                                style="display: none"
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
                                                                            <input
                                                                                type="date"
                                                                                name="bdate"
                                                                                id="bdate"
                                                                                value=""
                                                                                class="wpcf7-form-control wpcf7-date wpcf7-validates-as-required wpcf7-validates-as-date"
                                                                                aria-required="true"
                                                                                aria-invalid="false"
                                                                                />
                                                                        </span>
                                                                    </div>
                                                                    <div class="gdlr-core-column-30">
                                                                        <span class="wpcf7-form-control-wrap your-zipcode">
                                                                            <input type="text"  name="zipcode" id="zipcode"  value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Zip Code*"/>
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-30" style="margin-bottom: 35px;">
                                                                        <span class="wpcf7-form-control-wrap your-message">
                                                                            <textarea
                                                                                name="message"
                                                                                id="message"
                                                                                cols="40"
                                                                                rows="10"
                                                                                class="wpcf7-form-control wpcf7-textarea"
                                                                                aria-invalid="false"
                                                                                placeholder="Additional Request"
                                                                                ></textarea>
                                                                        </span>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <div class="gdlr-core-column-60">
                                                                        <span class="wpcf7-form-control-wrap checkbox-528">
                                                                            <span class="wpcf7-form-control wpcf7-checkbox wpcf7-validates-as-required gdlr-core-round-checkbox">
                                                                                <span class="wpcf7-list-item first last">
                                                                                    <label><input type="checkbox" name="checkbox-528[]" value="" /><span class="wpcf7-list-item-label"></span></label>
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                        I've read and agree to the <a href="#" target="_blank">Terms and Data Privacy Policy</a>
                                                                    </div>
                                                                    <div class="clear" style="margin-bottom: 30px;"></div>
                                                                    <div class="gdlr-core-column-60 gdlr-core-left-align">
                                                                        <input type="submit" value="Submit Now" class="wpcf7-form-control has-spinner wpcf7-submit gdlr-core-large" onclick="doe()" />
                                                                    </div>
                                                                </div>
                                                                <div class="wpcf7-response-output" aria-hidden="true"></div>
                                                            </form>
                                                        </div>
                                                        <div class="gdlr-core-price-plan-selected-back gdlr-core-step1"><i class="ion-ios-arrow-thin-left"></i>Go back to previous step</div>
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
                <%
                                                                            
                }
}
catch(Exception e)
{
e.printStackTrace();
}     
                %>   
                <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" data-skin="White Text" id="gdlr-core-column-16587" id="TABLE">
                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="margin: -65px 0px 0px 0px;">
                        <div class="gdlr-core-pbf-background-wrap"></div>
                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                            <div class="gdlr-core-pbf-element">
                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                    <div class="gdlr-core-text-box-item-content" style="text-transform: none;">
                                        <div class="mptt-shortcode-wrapper mptt-table-responsive">
                                            <ul class="mptt-menu mptt-navigation-tabs">
                                                <li style="">
                                                    <a title="All Events" href="#all" onclick="event.preventDefault();">All Events </a>
                                                </li>
                                            </ul>
                                            <table class="mptt-shortcode-table mptt-theme-mode" id="#all" style="display: none;" data-hide_empty_row="1">
                                                <thead>
                                                    <tr class="mptt-shortcode-row">
                                                        <th data-index="0" data-column-id=""></th>
                                                        <th data-index="1" data-column-id="14941">Monday</th>
                                                        <th data-index="2" data-column-id="14942">Tuesday</th>
                                                        <th data-index="3" data-column-id="14943">Wednesday</th>
                                                        <th data-index="4" data-column-id="14944">Thursday</th>
                                                        <th data-index="5" data-column-id="14945">Friday</th>
                                                        <th data-index="6" data-column-id="14946">Saturday</th>
                                                        <th data-index="7" data-column-id="14947">Sunday</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                    try{
                                                    int x = 71, y = 19, z =193;
                                                    ResultSet rs3= DBLoader.executeQuery("select * from zyth.class where status='approve'");
                                                         while(rs3.next())
                                                        {
                                                            
                                                            String nam = rs3.getString("ClassName");
                                                            String S= rs3.getString("StartTime");
                                                            String E= rs3.getString("EndTime");                                                    
                                                    %>
                                                    <tr class="mptt-shortcode-row-8" data-index="8">
                                                        <td class="mptt-shortcode-hours" style="height: 45px;" id="td1"><%=S%></td>
                                                        <td class="mptt-shortcode-event mptt-event-vertical-default" data-column-id="14942" colspan="7" data-row_height="45" style="height: 45px;">
                                                            <div
                                                                data-event-id="14949"
                                                                data-start="8"
                                                                data-start-item="8"
                                                                data-end="10"
                                                                class="mptt-event-container id-5 mptt-colorized"
                                                                data-type="event"
                                                                data-bg_hover_color=""
                                                                data-bg_color="rgb(71, 19, 193)"
                                                                data-hover_color="" data-color="rgb(255, 255, 255)" data-min-height="" style="text-align: center; background-color: rgb(<%=x%>, <%=y%>, <%=z%>); color: rgb(255, 255, 255); height: 100%;">
                                                                <div class="mptt-inner-event-content">
                                                                    <a title="Pilates" href="MainClass.jsp?ClassName=<%=nam%>" class="event-title" target="_blank"><%=nam%></a>
                                                                    <p class="timeslot">
                                                                        <time datetime="13:00" class="timeslot-start"><%=S%></time>
                                                                        <span class="timeslot-delimiter"> - </span>
                                                                        <time datetime="14:00" class="timeslot-end"><%=E%></time>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <%
                                                                        x+=18; y+=5; z=z+10;    
                                                            }
                                               }
                                               catch(Exception e)
                                               {
                                               e.printStackTrace();
                                               }     
                                                    %>  

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                     
                <div class="gdlr-core-pbf-wrapper" style="padding: 40px 40px 80px 40px;" id="gdlr-core-wrapper-4">
                    <div class="gdlr-core-pbf-background-wrap"></div>
                    <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                        <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                            <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" id="gdlr-core-column-14960">
                                <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 0px 0px 0px 0px;">
                                    <div class="gdlr-core-pbf-background-wrap"></div>
                                    <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-gallery-item gdlr-core-item-pdb clearfix gdlr-core-gallery-item-style-grid-no-space gdlr-core-item-pdlr" style="padding-bottom: 40px;">
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
        <!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>
        <%@include file="Bottom.jsp" %>