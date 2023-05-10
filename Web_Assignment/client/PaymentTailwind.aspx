﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentTailwind.aspx.cs" Inherits="Web_Assignment.client.PaymentTailwind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <!---------- Link to cart CSS ----------->
    <!--<link href="../css/payment.css" rel="stylesheet" type="text/css" />-->
</head>
<body style="background-image: url('../img/bg-image.jpg'); background-size: cover; background-attachment: fixed;">
    <form id="form1" runat="server">
        
        <br /><br />

        <div class="container mx-auto px-20 text-white">
            
            <div class="grid grid-cols-3 gap-8" style="background-color: #1a1a1a; padding: 30px 30px 30px 30px; border-radius: 20px;">

                <div class="grid col-span-2 mb-8">
                    
                    <!---------- Payment Methods ---------->
                    <div>

                        <!----- Payment Methods - Online Banking ----->
                        <div id="onlineBanking" runat="server">
                    
                            <h3>Online Banking Payment</h3>
                            <hr />

                            <small>Please enter your online banking details.</small>
                            <br /><br />

                            <div class="form-group">
                        
                                <label>Bank Type</label>
                                <asp:DropDownList ID="ddlBankType" runat="server" CssClass="text-black focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 inline-flex items-center flex w-full">
                                    <asp:ListItem>Maybank</asp:ListItem>
                                    <asp:ListItem>Public Bank</asp:ListItem>
                                    <asp:ListItem>Hong Leong</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <br />

                            <div class="form-group">
                                <label>Account Number</label>
                                <asp:TextBox ID="txtAccountNumber" runat="server" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="Account Number"></asp:TextBox>
                            </div>

                            <br />

                            <div class="form-group">
                                <label>Account Password</label>
                                <asp:TextBox ID="txtAccountPassword" runat="server" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>

                        </div> 

                    </div>

                </div>


                <!---------- Payment Details ---------->
                <div class="container mb-5">
                    <div class="grid grid-cols-1 mb-8">
                        <div class="md:col-auto">
                            <div class="card bg-gray-900 text-white border-2 border-white rounded-lg">
                                <div class="card-body">
                                    <h3 class="text-xl font-bold mb-4">Your Order</h3>
                                    <hr class="border-white">
                                    <div class="border-2 border-white rounded-lg p-2">
                                        <div class="inline-block align-middle">
                                            <img src="../img/product/dead_space.jpg" alt="Alternate Text" class="w-16 h-20">
                                        </div>
                                        <div class="inline-block ml-2 align-middle">
                                            <span class="font-semibold block">Dead Space III</span>
                                            <span class="block">RM 100.00</span>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="flex justify-between">
                                        <p class="font-semibold">Price:</p>
                                        <p class="text-right">RM 100.00</p>
                                    </div>
                                    <div class="flex justify-between">
                                        <p class="font-semibold">Taxes:</p>
                                        <p class="text-right">Calculate at checkout</p>
                                    </div>
                                    <div class="flex justify-between">
                                        <h5 class="font-bold">Subtotal:</h5>
                                        <h5 class="text-right">RM 100.00</h5>
                                    </div>
                                    <br>

                                    <div class="text-center">
                                        <asp:LinkButton ID="btnPay" runat="server" class="btn bg-primary text-white py-3 text-lg w-full bg-indigo-600 hover:bg-indigo-700  shadow-sm text-base" onClick="btnPay_Click">Pay Now</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>

       
                

       




    </form>
</body>
</html>
