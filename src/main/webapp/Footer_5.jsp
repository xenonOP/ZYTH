<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="zyth.database.*" %>
<%@include file="Header.jsp" %>
<!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>
<div class="zyth-page-wrapper" id="zyth-page-wrapper">
    <div class="gdlr-core-page-builder-body">
        <div class="gdlr-core-pbf-wrapper" style="padding: 120px 0px 100px 0px;" id="gdlr-core-wrapper-1">
            <div class="gdlr-core-pbf-background-wrap" style="background-color: #191919;"></div>
            <div class="gdlr-core-pbf-background-wrap" style="top: -70px;">
                <div
                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                    style="background-image: url(upload/SCHEDULE00.jpg); background-repeat: no-repeat; background-position: top center;"
                    data-parallax-speed="0"
                    ></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" id="gdlr-core-column-41217">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js">
                            <div class="gdlr-core-pbf-background-wrap"></div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 38px; font-weight: 700; letter-spacing: 0px; text-transform: none; color: #ffffff;">
                                               Our classes<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" data-skin="White Text" id="gdlr-core-column-16587">
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
                                                        <tr class="mptt-shortcode-row-8" data-index="8">
                                                            <td class="mptt-shortcode-hours" style="height: 45px;">07:30</td>
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
                                                                    data-hover_color="" data-color="rgb(255, 255, 255)" data-min-height="" style="text-align: center; background-color: rgb(71, 19, 193); color: rgb(255, 255, 255); height: 100%;">
                                                                    <div class="mptt-inner-event-content">
                                                                        <a title="Pilates" href="hiit.html" class="event-title">Yoga</a>
                                                                        <p class="timeslot">
                                                                            <time datetime="13:00" class="timeslot-start">06:30</time>
                                                                            <span class="timeslot-delimiter"> - </span>
                                                                            <time datetime="14:00" class="timeslot-end">8:00</time>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="mptt-shortcode-row-9" data-index="9">
                                                            <td class="mptt-shortcode-hours" style="height: 60px;">09:30</td>
                                                            <td class="mptt-shortcode-event mptt-event-vertical-default" data-column-id="14941" colspan="7" data-row_height="45" style="height: 45px;">
                                                                <div
                                                                    data-event-id="15085"
                                                                    data-start="9"
                                                                    data-start-item="9"
                                                                    data-end="10"
                                                                    class="mptt-event-container id-14 mptt-colorized"
                                                                    data-type="event"
                                                                    data-bg_hover_color=""
                                                                    data-bg_color="rgb(67, 155, 235)"
                                                                    data-hover_color=""
                                                                    data-color="rgb(255, 255, 255)"
                                                                    data-min-height=""
                                                                    style="text-align: center; background-color: rgb(67, 155, 235); color: rgb(255, 255, 255); height: 100%;"
                                                                    >
                                                                    <div class="mptt-inner-event-content">
                                                                        <a title="Gym Ball" href="hiit.html" class="event-title">HIIT</a>
                                                                        <p class="timeslot">
                                                                            <time datetime="09:00" class="timeslot-start">09:00</time>
                                                                            <span class="timeslot-delimiter"> - </span>
                                                                            <time datetime="10:00" class="timeslot-end">11:30</time>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="mptt-shortcode-row-10" data-index="10">
                                                            <td class="mptt-shortcode-hours" style="height: 60px;">12:00</td>
                                                                <td class="mptt-shortcode-event mptt-event-vertical-default" data-column-id="14947" colspan="7" data-row_height="45" style="height: 45px;">
                                                                <div
                                                                    data-event-id="15083"
                                                                    data-start="10"
                                                                    data-start-item="10"
                                                                    data-end="11"
                                                                    class="mptt-event-container id-11 mptt-colorized"
                                                                    data-type="event"
                                                                    data-bg_hover_color=""
                                                                    data-bg_color="rgb(11, 83, 231)"
                                                                    data-hover_color=""
                                                                    data-color="rgb(255, 255, 255)"
                                                                    data-min-height=""
                                                                    style="text-align: center; background-color: rgb(11, 83, 231); color: rgb(255, 255, 255); height: 100%;">
                                                                    <div class="mptt-inner-event-content">
                                                                        <a title="Surge" href="hiit.html" class="event-title">Boxing</a>
                                                                        <p class="timeslot">
                                                                            <time datetime="10:00" class="timeslot-start">12:00</time>
                                                                            <span class="timeslot-delimiter"> - </span>
                                                                            <time datetime="11:00" class="timeslot-end">2:30</time>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="mptt-shortcode-row-14" data-index="14">
                                                            <td class="mptt-shortcode-hours" style="height: 85px;">3:00</td>
                                                            <td class="mptt-shortcode-event mptt-event-vertical-default" data-column-id="14941" colspan="7" data-row_height="45" style="height: 85px;">
                                                                <div
                                                                    data-event-id="15085"
                                                                    data-start="14"
                                                                    data-start-item="14"
                                                                    data-end="15"
                                                                    class="mptt-event-container id-15 mptt-colorized"
                                                                    data-type="event"
                                                                    data-bg_hover_color=""
                                                                    data-bg_color="rgb(67, 155, 235)"
                                                                    data-hover_color=""
                                                                    data-color="rgb(255, 255, 255)"
                                                                    data-min-height=""
                                                                    style="text-align: center; background-color: rgb(67, 155, 235); color: rgb(255, 255, 255); height: 100%;"
                                                                    >
                                                                    <div class="mptt-inner-event-content">
                                                                        <a title="Gym Ball" href="hiit.html" class="event-title">Dance</a>
                                                                        <p class="timeslot">
                                                                            <time datetime="14:00" class="timeslot-start">3:00</time>
                                                                            <span class="timeslot-delimiter"> - </span>
                                                                            <time datetime="15:00" class="timeslot-end">6:00</time>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="mptt-shortcode-row-17" data-index="17">
                                                            <td class="mptt-shortcode-hours" style="height: 45px;">7:00</td>
                                                            <td class="mptt-shortcode-event mptt-event-vertical-default" data-column-id="14941" colspan="7" data-row_height="45" style="height: 45px;">
                                                                <div
                                                                    data-event-id="14949"
                                                                    data-start="17"
                                                                    data-start-item="17"
                                                                    data-end="19"
                                                                    class="mptt-event-container id-6 mptt-colorized"
                                                                    data-type="event"
                                                                    data-bg_hover_color=""
                                                                    data-bg_color="rgb(71, 19, 193)"
                                                                    data-hover_color=""
                                                                    data-color="rgb(255, 255, 255)"
                                                                    data-min-height=""
                                                                    style="text-align: center; background-color: rgb(71, 19, 193); color: rgb(255, 255, 255); height: 100%;"
                                                                    >
                                                                    <div class="mptt-inner-event-content">
                                                                        <a title="Pilates" href="hiit.html" class="event-title">GYM</a>
                                                                        <p class="timeslot">
                                                                            <time datetime="17:00" class="timeslot-start">7:00</time>
                                                                            <span class="timeslot-delimiter"> - </span>
                                                                            <time datetime="19:00" class="timeslot-end">8:00</time>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="mptt-shortcode-row-18" data-index="18">
                                                            <td class="mptt-shortcode-hours" style="height: 35px;">8:00</td>
                                                            <td class="mptt-shortcode-event mptt-event-vertical-default" data-column-id="14941" rowspan="2" colspan="7" data-row_height="45" style="height: 45px;">
                                                                <div
                                                                    data-event-id="14948"
                                                                    data-start="19"
                                                                    data-start-item="19"
                                                                    data-end="20"
                                                                    class="mptt-event-container id-1 mptt-colorized"
                                                                    data-type="event"
                                                                    data-bg_hover_color=""
                                                                    data-bg_color="rgb(76, 0, 255)"
                                                                    data-hover_color=""
                                                                    data-color="rgb(255, 255, 255)"
                                                                    data-min-height=""
                                                                    style="text-align: center; background-color: rgb(76, 0, 255); color: rgb(255, 255, 255); height: 100%;"
                                                                    >
                                                                    <div class="mptt-inner-event-content">
                                                                        <a title="Core Flow Yoga" href="hiit.html" class="event-title">Core Flow Yoga</a>
                                                                        <p class="timeslot">
                                                                            <time datetime="19:00" class="timeslot-start">8:00</time>
                                                                            <span class="timeslot-delimiter"> - </span>
                                                                            <time datetime="20:00" class="timeslot-end">10:30</time>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="mptt-shortcode-row-19" data-index="19">
                                                            <td class="mptt-shortcode-hours" style="height: 15px;">11:00</td>
                                                            
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                
                                                
                                                
                                                
                                                
                                                
                                                <div class="mptt-shortcode-list">
                                                    <div class="mptt-column">
                                                        <h3 class="mptt-column-title">Monday</h3>
                                                        <ul class="mptt-events-list">
                                                            <li class="mptt-list-event" data-event-id="x-blast-2" style="border-left-color: rgb(67, 155, 235);">
                                                                <a title="Gym Ball" href="hiit.html" class="mptt-event-title"> Gym Ball </a>
                                                                <p class="timeslot">
                                                                    <time datetime="09:00" class="timeslot-start">09:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="10:00" class="timeslot-end">10:00</time>
                                                                </p>
                                                            </li>
                                                            <li class="mptt-list-event" data-event-id="core-flow-yoga" style="border-left-color: rgb(76, 0, 255);">
                                                                <a title="Core Flow Yoga" href="hiit.html" class="mptt-event-title"> Core Flow Yoga </a>
                                                                <p class="timeslot">
                                                                    <time datetime="19:00" class="timeslot-start">19:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="20:00" class="timeslot-end">20:00</time>
                                                                </p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mptt-column">
                                                        <h3 class="mptt-column-title">Tuesday</h3>
                                                        <ul class="mptt-events-list">
                                                            <li class="mptt-list-event" data-event-id="pilates" style="border-left-color: rgb(71, 19, 193);">
                                                                <a title="Pilates" href="hiit.html" class="mptt-event-title"> Pilates </a>
                                                                <p class="timeslot">
                                                                    <time datetime="08:00" class="timeslot-start">08:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="10:00" class="timeslot-end">10:00</time>
                                                                </p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mptt-column">
                                                        <h3 class="mptt-column-title">Wednesday</h3>
                                                        <ul class="mptt-events-list">
                                                            <li class="mptt-list-event" data-event-id="yoga" style="border-left-color: rgb(57, 114, 233);">
                                                                <a title="Yoga" href="hiit.html" class="mptt-event-title"> Yoga </a>
                                                                <p class="timeslot">
                                                                    <time datetime="09:00" class="timeslot-start">09:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="11:00" class="timeslot-end">11:00</time>
                                                                </p>
                                                            </li>
                                                            <li class="mptt-list-event" data-event-id="x-blast-2" style="border-left-color: rgb(67, 155, 235);">
                                                                <a title="Gym Ball" href="hiit.html" class="mptt-event-title"> Gym Ball </a>
                                                                <p class="timeslot">
                                                                    <time datetime="14:00" class="timeslot-start">14:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="15:00" class="timeslot-end">15:00</time>
                                                                </p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mptt-column">
                                                        <h3 class="mptt-column-title">Thursday</h3>
                                                        <ul class="mptt-events-list">
                                                            <li class="mptt-list-event" data-event-id="x-blast" style="border-left-color: rgb(67, 155, 235);">
                                                                <a title="X-Blast" href="hiit.html" class="mptt-event-title"> X-Blast </a>
                                                                <p class="timeslot">
                                                                    <time datetime="08:00" class="timeslot-start">08:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="10:00" class="timeslot-end">10:00</time>
                                                                </p>
                                                            </li>
                                                            <li class="mptt-list-event" data-event-id="pilates" style="border-left-color: rgb(71, 19, 193);">
                                                                <a title="Pilates" href="hiit.html" class="mptt-event-title"> Pilates </a>
                                                                <p class="timeslot">
                                                                    <time datetime="17:00" class="timeslot-start">17:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="19:00" class="timeslot-end">19:00</time>
                                                                </p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mptt-column">
                                                        <h3 class="mptt-column-title">Friday</h3>
                                                        <ul class="mptt-events-list">
                                                            <li class="mptt-list-event" data-event-id="yoga-2" style="border-left-color: rgb(11, 83, 231);">
                                                                <a title="Surge" href="hiit.html" class="mptt-event-title"> Surge </a>
                                                                <p class="timeslot">
                                                                    <time datetime="14:00" class="timeslot-start">14:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="15:00" class="timeslot-end">15:00</time>
                                                                </p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mptt-column">
                                                        <h3 class="mptt-column-title">Saturday</h3>
                                                        <ul class="mptt-events-list">
                                                            <li class="mptt-list-event" data-event-id="core-flow-yoga" style="border-left-color: rgb(76, 0, 255);">
                                                                <a title="Core Flow Yoga" href="hiit.html" class="mptt-event-title"> Core Flow Yoga </a>
                                                                <p class="timeslot">
                                                                    <time datetime="14:00" class="timeslot-start">14:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="15:00" class="timeslot-end">15:00</time>
                                                                </p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mptt-column">
                                                        <h3 class="mptt-column-title">Sunday</h3>
                                                        <ul class="mptt-events-list">
                                                            <li class="mptt-list-event" data-event-id="yoga-2" style="border-left-color: rgb(11, 83, 231);">
                                                                <a title="Surge" href="hiit.html" class="mptt-event-title"> Surge </a>
                                                                <p class="timeslot">
                                                                    <time datetime="10:00" class="timeslot-start">10:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="11:00" class="timeslot-end">11:00</time>
                                                                </p>
                                                            </li>
                                                            <li class="mptt-list-event" data-event-id="yoga-2" style="border-left-color: rgb(11, 83, 231);">
                                                                <a title="Surge" href="hiit.html" class="mptt-event-title"> Surge </a>
                                                                <p class="timeslot">
                                                                    <time datetime="10:00" class="timeslot-start">10:00</time>
                                                                    <span class="timeslot-delimiter"> - </span>
                                                                    <time datetime="11:00" class="timeslot-end">11:00</time>
                                                                </p>
                                                            </li>
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
    </div>
</div>
<!----------------------------------------------------------------------------------------------------------------------BODY STARTS HERE------------------------------------------------------------------------------------------------------------>
<%@include file="Bottom.jsp" %>