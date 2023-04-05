<%@ Page Language="C#" MasterPageFile="~/client/ClientMaster.Master" AutoEventWireup="true" CodeBehind="OrderCart.aspx.cs" Inherits="Web_Assignment.client.OrderCart" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cart" runat="server">

    <div class="container mb-5">
        <div class="row ms-5 me-5">
            <h1 style="color:white; margin-bottom:25px">My Cart</h1>
            <div class="col-md-8">
                <div class="col cart-layout h-auto">
                    <%-- In this area, all the element will be flex in 1 row to handle --%>
                    <div class="d-flex flex-row">

                        <div class="d-flex flex-row align-items-center">
                            <a href="#"><img src="../img/product/cyberpunk.jpg" alt="cyberpunk" class="img-fluid" 
                                style="border-radius:10px; width:180px; height:210px"/></a>
                        </div>

                        <div class="d-flex flex-col flex-wrap w-100 ms-4 mt-2">
                            <div class="d-flex flex-row w-100 justify-content-between" style="color:white">
                                <h4 class="mb-0">Cyberpunk 2077</h4>
                                <p class="mb-0 fw-bold">RM 213.99</p>
                            </div>

                            <div class="d-flex flex-row w-100 align-items-center mt-5">
                                <img alt="iarc 18" class="img-fluid" src="../img/product/iarc_18.jpg"/>
                                <p class="fw-bolder fs-6 lh-lg mb-0 ps-3 w-100" style="color:white">
                                    18+ <br/> 
                                    Extreme Violence, Sex, Strong Language
                                </p>
                            </div>

                            <div class="d-flex flex-row w-100 mt-5 align-bottom">
                                <img alt="windows OS" class="img-fluid" src="../img/product/windows10.png" style="width:22px; height:24px"/>
                                <img alt="mac OS" class="img-fluid ms-2" src="../img/product/macOS.png" style="width:24px; height:24px"/>
                                <div class="ms-auto">
                                    <a href="#" style="color:#F5F5F5; opacity:0.6; text-decoration:none">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                        &nbsp;Remove
                                    </a>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>

                <%--<div class="col cart-layout">
                    
                    
                </div>--%>
            </div>

            <div class="col-md-4 ps-3">
                <h3 style="color:white; margin-bottom:35px;" class="d-inline-block">
                    Game Prices Summary
                </h3>

                <div class="row g-2 ms-0 mb-5">
                    <div class="col-md-auto">
                        <label for="inputPromo" class="form-label mb-0 pb-0 small" style="color:white">
                            ENTER PROMO CODE
                        </label>
                        <asp:TextBox ID="txtPromo" placeholder="Promo Code" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-auto">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-info mt-4" Text="Submit" />
                    </div>
                </div>
               
                <div class="d-flex justify-content-between" style="color:white">
                      <p class="mb-2">Subtotal</p>
                      <p class="mb-2">RM 213.99</p>
                </div>

                <div class="d-flex justify-content-between" style="color:white">
                      <p class="mb-2">Sale Discount</p>
                      <p class="mb-2">-RM 0.00</p>
                </div>

                <hr class="mb-4" style="height: 2px; background-color: #FFFFFF; opacity: 0.6;">

                <div class="d-flex justify-content-between" style="color:white">
                      <p class="mb-4">Total Price</p>
                      <p class="mb-4 fw-bolder">RM 213.99</p>
                </div>

                <div class="d-grid">
                    <asp:Button ID="btnCheckout" runat="server" CssClass="btn btn-primary btn-lg" Text="Checkout"
                        PostBackUrl="~/client/Payment.aspx" />
                </div>

            </div>

        </div>
    </div>

</asp:Content>
