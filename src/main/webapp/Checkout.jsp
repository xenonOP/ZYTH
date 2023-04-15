<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page import = "zyth.database.*"%>
<%@include file ="Header.jsp" %>
<% 
String email = (String)(session.getAttribute("user"));
%>

<script>
   window.onload= function dem()
    {
        let email = '<%=email%>';
        alert(email);
                                                fetch(`Checkout?email=${email}`).then(data => data.json()).then(resp => {
                                                    let arr = resp.ans;
                                                    let ans = "";
                                                    alert(arr);
                                                    console.log(arr);
                                                    document.getElementById("dd01").innerHTML=ans;
                                                });
    };
</script>
<div id="dd01"> <h1>helooo</h1></div>
 <div class="zyth-page-title-wrap zyth-style-custom zyth-center-align">
                <div class="zyth-header-transparent-substitute"></div>
                <div class="zyth-page-title-overlay"></div>
                <div class="zyth-page-title-top-gradient"></div>
                <div class="zyth-page-title-container zyth-container">
                    <div class="zyth-page-title-content zyth-item-pdlr"><h1 class="zyth-page-title">Class Booking</h1></div>
                </div>
            </div>
            <div class="zyth-page-wrapper" id="zyth-page-wrapper">
                <div class="zyth-content-container zyth-container">
                    <div class="zyth-content-area zyth-item-pdlr zyth-sidebar-style-none clearfix">
                        <div class="woocommerce">
                            <div class="woocommerce-notices-wrapper"></div>
                            <form class="woocommerce-cart-form" action="#" method="post">
                                <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail">Class Name</th>
                                            <th class="product-name">Plan</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Duration</th>
                                            <th class="product-subtotal">Subtotal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="woocommerce-cart-form__cart-item cart_item">
                                            <td></td>
                                            <td class="product-thumbnail">
                                                <a href="#">
                                                    <img
                                                        width="70"
                                                        height="70"
                                                        src="upload/shop-bra-3-300x300.jpg"
                                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                                                        alt=""
                                                        loading="lazy"
                                                    />
                                                </a>
                                            </td>

                                            <td class="product-name" data-title="Product">
                                                <a href="#">Red Supreme Bra</a>
                                            </td>

                                            <td class="product-price" data-title="Price">
                                                <span class="woocommerce-Price-amount amount">
                                                    <bdi><span class="woocommerce-Price-currencySymbol">&#36;</span>69.00</bdi>
                                                </span>
                                            </td>

                                            <td class="product-quantity" data-title="Quantity">
                                                <div class="quantity">
                                                    <label class="screen-reader-text" for="quantity_6183d131b2163">Red Supreme Bra quantity</label>
                                                        
                                                </div>
                                            </td>

                                            <td class="product-subtotal" data-title="Subtotal">
                                                <span class="woocommerce-Price-amount amount">
                                                    <bdi><span class="woocommerce-Price-currencySymbol">&#36;</span>69.00</bdi>
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>

                            <div class="cart-collaterals">
                                <div class="cart_totals">
                                    <h2>CLass Name</h2>

                                    <table cellspacing="0" class="shop_table shop_table_responsive">
                                        <tr class="order-total">
                                            <th>Total</th>
                                            <td data-title="Total">
                                                <strong>
                                                    <span class="woocommerce-Price-amount amount">
                                                        <bdi><span class="woocommerce-Price-currencySymbol">&#36;</span>69.00</bdi>
                                                    </span>
                                                </strong>
                                            </td>
                                        </tr>
                                    </table>

                                    <div class="wc-proceed-to-checkout">
                                        <a href="checkout-2.html" class="checkout-button button alt wc-forward"> Proceed to checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--WPFC_FOOTER_START-->
            </div>


<%@include file="Bottom.jsp" %>