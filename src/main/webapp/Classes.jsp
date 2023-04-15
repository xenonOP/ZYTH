<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page import = "zyth.database.*"%>
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
                                            Explore the session
                                        </span>
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 95px; font-weight: 700; font-style: italic; letter-spacing: 0px; color: #ffffff;">
                                                Zyth Classes<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
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
                    <div class="gdlr-core-pbf-wrapper" style="padding: 100px 0px 70px 0px;" id="gdlr-core-wrapper-2">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div
                                class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                style="background-image: url(upload/White-Line-BG.jpg); background-repeat: no-repeat; background-position: center;"
                                data-parallax-speed="0"
                            ></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-page-list-item gdlr-core-item-pdb clearfix">
                                                    <div
                                                        class="gdlr-core-flexslider flexslider gdlr-core-js-2 gdlr-core-bullet-style-round gdlr-core-color-bullet"
                                                        data-type="carousel"
                                                        data-column="3"
                                                        data-move="1"
                                                        data-nav="bullet"
                                                        data-nav-parent="gdlr-core-page-list-item"
                                                        data-controls-top-margin="10px"
                                                    >
                                                       <ul class="slides" >
                                                           <%
                                                                    try{
                                                                    ResultSet rs = DBLoader.executeQuery("select * from zyth.class where status='approve'");
                                                                   while(rs.next())
                                                                    {
                                                                        String str = rs.getString("ClassName");
                                                                        String photo = rs.getString("photo");
                                                                   %>
                                                            <li class="gdlr-core-item-mglr">
                                                                <div class="gdlr-core-page-list gdlr-core-style-modern gdlr-core-item-mgb gdlr-core-zoom-on-hover">
                                                                    <div class="gdlr-core-thumbnail gdlr-core-media-image">
                                                                        <a href="hiit.html">
                                                                            <img src="<%=photo%>" alt="11" width="600" height="800" title="iStock-1149242325" style="width: 400px; height: 533.33px"/>
                                                                        </a>
                                                                    </div>
                                                                    <div class="gdlr-core-thumbnail-overlay" style="background-color: #4c00ff;"></div>
                                                                    <div class="gdlr-core-thumbnail-overlay-content">
                                                                        <h3 class="gdlr-core-title gdlr-core-skin-title" style="font-size: 33px; font-weight: 700; font-style: italic; letter-spacing: 0px;">
                                                                            <a href="MainClass.jsp?ClassName=<%=str%>"><%=str%></a>
                                                                        </h3>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <%
                                                                 }
                                                               }
                                                               catch(Exception e)
                                                               {
                                                                    e.printStackTrace();
                                                               }
                                                              %>
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
                    <div class="gdlr-core-pbf-wrapper" style="padding: 120px 0px 100px 0px;" id="gdlr-core-wrapper-3">
                        <div class="gdlr-core-pbf-background-wrap" style="background-color: #0c0c0c;"></div>
                        <div class="gdlr-core-pbf-background-wrap" style="top: 70px;">
                            <div
                                class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                style="background-image: url(upload/TestT.jpg); background-repeat: no-repeat; background-position: top center;"
                                data-parallax-speed="0"
                            ></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" id="gdlr-core-column-50342" style="z-index: 9;">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="margin: 0px 0px -50px 0px;">
                                        <div class="gdlr-core-pbf-background-wrap"></div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-divider-item gdlr-core-divider-item-normal gdlr-core-item-pdlr gdlr-core-left-align" style="margin-bottom: 25px; margin-left: 5px;">
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
                                                                -webkit-border-radius: 0px;
                                                            "
                                                        ></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px;">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 100px; font-weight: 700; font-style: italic; letter-spacing: 0px; line-height: 1; color: #ffffff;">
                                                            WHAT<br />
                                                            CUTOMERS SAY<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                                        </h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" id="gdlr-core-column-49641">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 0px 0px 70px 0px;">
                                        <div class="gdlr-core-pbf-background-wrap"></div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                            <div class="gdlr-core-pbf-element">
                                                <div
                                                    class="gdlr-core-testimonial-item gdlr-core-item-pdb clearfix gdlr-core-testimonial-style-image-left gdlr-core-item-pdlr"
                                                    style="padding-bottom: 0px;"
                                                    id="gdlr-core-testimonial-79520"
                                                >
                                                    <div class="gdlr-core-flexslider flexslider gdlr-core-js-2" data-type="carousel" data-column="1" data-move="1" data-nav="navigation-outer" data-nav-parent="self" data-vcenter-nav="1">
                                                        <div class="gdlr-core-flexslider-custom-nav gdlr-core-style-navigation-outer gdlr-core-center-align" style="margin-top: -55px;">
                                                            <i class="icon-arrow-left flex-prev" style="color: #555555; font-size: 43px; left: -95px;"></i>
                                                            <i class="icon-arrow-right flex-next" style="color: #555555; font-size: 43px; right: -95px;"></i>
                                                        </div>
                                                        <ul class="slides">
                                                            <li class="gdlr-core-item-mglr">
                                                                <div class="gdlr-core-testimonial clearfix">
                                                                    <div class="gdlr-core-testimonial-author-image gdlr-core-media-image">
                                                                        <img src="upload/Jane.jpg" alt="11" width="979" height="816" title="Jane" />
                                                                    </div>
                                                                    <div class="gdlr-core-testimonial-content-wrap" style="padding-top: 150px;">
                                                                        <div class="gdlr-core-testimonial-quote gdlr-core-quote-font gdlr-core-skin-icon" style="font-size: 278px; font-weight: 700; margin-top: 80px; color: #4c00ff;">
                                                                            &#8220;
                                                                        </div>
                                                                        <div
                                                                            class="gdlr-core-testimonial-content gdlr-core-info-font gdlr-core-skin-content"
                                                                            style="font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: 0px; color: #ffffff;"
                                                                        >
                                                                            <p class="p1">
                                                                                This place is fun and challenging and really convenient as you can go to different classes, rather than having to commit to a specific day and time. The
                                                                                teachers are really friendly and they all have their own style of teaching.
                                                                            </p>
                                                                        </div>
                                                                        <div
                                                                            class="gdlr-core-testimonial-title gdlr-core-title-font gdlr-core-skin-title"
                                                                            style="color: #ffffff; font-size: 20px; font-weight: 700; letter-spacing: 0px; text-transform: uppercase;"
                                                                        >
                                                                            Julie Clark
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="gdlr-core-item-mglr">
                                                                <div class="gdlr-core-testimonial clearfix">
                                                                    <div class="gdlr-core-testimonial-author-image gdlr-core-media-image">
                                                                        <img src="upload/P02.jpg" alt="11" width="979" height="816" title="P02" />
                                                                    </div>
                                                                    <div class="gdlr-core-testimonial-content-wrap" style="padding-top: 150px;">
                                                                        <div class="gdlr-core-testimonial-quote gdlr-core-quote-font gdlr-core-skin-icon" style="font-size: 278px; font-weight: 700; margin-top: 80px; color: #4c00ff;">
                                                                            &#8220;
                                                                        </div>
                                                                        <div
                                                                            class="gdlr-core-testimonial-content gdlr-core-info-font gdlr-core-skin-content"
                                                                            style="font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: 0px; color: #ffffff;"
                                                                        >
                                                                            <p>
                                                                                This place is fun and challenging and really convenient as you can go to different classes, rather than having to commit to a specific day and time. The
                                                                                teachers are really friendly and they all have their own style of teaching.
                                                                            </p>
                                                                        </div>
                                                                        <div
                                                                            class="gdlr-core-testimonial-title gdlr-core-title-font gdlr-core-skin-title"
                                                                            style="color: #ffffff; font-size: 20px; font-weight: 700; letter-spacing: 0px; text-transform: uppercase;"
                                                                        >
                                                                            Elizabeth Lewis
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="gdlr-core-item-mglr">
                                                                <div class="gdlr-core-testimonial clearfix">
                                                                    <div class="gdlr-core-testimonial-author-image gdlr-core-media-image">
                                                                        <img src="upload/P03.jpg" alt="11" width="979" height="816" title="P03" />
                                                                    </div>
                                                                    <div class="gdlr-core-testimonial-content-wrap" style="padding-top: 150px;">
                                                                        <div class="gdlr-core-testimonial-quote gdlr-core-quote-font gdlr-core-skin-icon" style="font-size: 278px; font-weight: 700; margin-top: 80px; color: #4c00ff;">
                                                                            &#8220;
                                                                        </div>
                                                                        <div
                                                                            class="gdlr-core-testimonial-content gdlr-core-info-font gdlr-core-skin-content"
                                                                            style="font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: 0px; color: #ffffff;"
                                                                        >
                                                                            <p>
                                                                                This place is fun and challenging and really convenient as you can go to different classes, rather than having to commit to a specific day and time. The
                                                                                teachers are really friendly and they all have their own style of teaching.
                                                                            </p>
                                                                        </div>
                                                                        <div
                                                                            class="gdlr-core-testimonial-title gdlr-core-title-font gdlr-core-skin-title"
                                                                            style="color: #ffffff; font-size: 20px; font-weight: 700; letter-spacing: 0px; text-transform: uppercase;"
                                                                        >
                                                                            Kenneth Wilson
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="gdlr-core-item-mglr">
                                                                <div class="gdlr-core-testimonial clearfix">
                                                                    <div class="gdlr-core-testimonial-author-image gdlr-core-media-image">
                                                                        <img src="upload/P4.jpg" alt="11" width="979" height="816" title="P4" />
                                                                    </div>
                                                                    <div class="gdlr-core-testimonial-content-wrap" style="padding-top: 150px;">
                                                                        <div class="gdlr-core-testimonial-quote gdlr-core-quote-font gdlr-core-skin-icon" style="font-size: 278px; font-weight: 700; margin-top: 80px; color: #4c00ff;">
                                                                            &#8220;
                                                                        </div>
                                                                        <div class="gdlr-core-testimonial-content gdlr-core-info-font gdlr-core-skin-content"
                                                                            style="font-size: 19px; font-style: normal; font-weight: 400; letter-spacing: 0px; color: #ffffff;">
                                                                            <p>
                                                                                This place is fun and challenging and really convenient as you can go to different classes, rather than having to commit to a specific day and time. The
                                                                                teachers are really friendly and they all have their own style of teaching.
                                                                            </p>
                                                                        </div>
                                                                        <div
                                                                            class="gdlr-core-testimonial-title gdlr-core-title-font gdlr-core-skin-title"
                                                                            style="color: #ffffff; font-size: 20px; font-weight: 700; letter-spacing: 0px; text-transform: uppercase;">
                                                                            George Miller
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-20 gdlr-core-column-first" id="gdlr-core-column-55911">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js">
                                        <div class="gdlr-core-pbf-background-wrap"></div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js"></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-20" id="gdlr-core-column-14645">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js">
                                        <div class="gdlr-core-pbf-background-wrap"></div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-button-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align" style="padding-bottom: 0px;">
                                                    <a
                                                        class="gdlr-core-button gdlr-core-button-transparent gdlr-core-center-align gdlr-core-button-no-border"
                                                        href="zyth-review.html"
                                                        style="
                                                            transform: skewX(150deg);
                                                            -webkit-transform: skewX(150deg);
                                                            font-size: 17px;
                                                            font-style: italic;
                                                            font-weight: 700;
                                                            color: #ffffff;
                                                            text-transform: capitalize;
                                                            border-radius: 0px;
                                                            -moz-border-radius: 0px;
                                                            -webkit-border-radius: 0px;
                                                        "
                                                    >
                                                        <span class="gdlr-core-content" style="transform: skewX(-150deg); -webkit-transform: skewX(-150deg);">
                                                            More Reviews<i class="gdlr-core-pos-right gdlr-icon-oblique-arrow" style="color: #ffffff;"></i>
                                                        </span>
                                                    </a>
                                                </div>
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
                                <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" id="gdlr-core-column-41214">
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
                                                        href="https://www.instagram.com/kxnishrajput/"
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