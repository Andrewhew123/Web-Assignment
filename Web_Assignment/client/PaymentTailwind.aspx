<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentTailwind.aspx.cs" Inherits="Web_Assignment.client.PaymentTailwind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <!---------- Link to cart CSS ----------->
    <link href="../css/payment.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container mx-auto px-10">
            <div class="grid grid-cols-3 gap-4">

                <div class="grid col-span-2 mb-8">
                    
                    <!---------- Payment Methods ---------->
                    <h3>Payment Methods</h3>
                    <hr />

                    <div class="form-group">
                        <small>Please select the payment method.</small>
                        <br /><br />

                        <asp:DropDownList ID="ddlPaymentMethod" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged">
                            <asp:ListItem>Online Banking</asp:ListItem>
                            <asp:ListItem>Touch N Go</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <!----- Payment Methods - Online Banking ----->
                    <div id="olineBanking" runat="server">
                    
                        <h3>Online Banking Payment</h3>
                        <hr />

                        <small>Please enter your online banking details.</small>
                        <br /><br />

                        <div class="form-group">
                        
                            <label>Bank Type</label>
                            <asp:DropDownList ID="ddlBankType" runat="server" CssClass="form-control">
                                <asp:ListItem>Maybank</asp:ListItem>
                                <asp:ListItem>Public Bank</asp:ListItem>
                                <asp:ListItem>Hong Leong</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <br />

                        <div class="form-group">
                            <label>Account Number</label>
                            <asp:TextBox ID="txtAccountNumber" runat="server" CssClass="form-control" placeholder="Account Number"></asp:TextBox>
                        </div>

                        <br />

                        <div class="form-group">
                            <label>Account Password</label>
                            <asp:TextBox ID="txtAccountPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>

                    </div> 

                    <!----- Payment Methods - Touch N Go ----->
                    <div id="touchNGo" class="touchNGo" runat="server" style="display: none;">

                        <h3>Touch N Go Payment</h3>
                        <hr />

                        <small>Please enter your Touch N Go payment details.</small>
                        <br /><br />

                        <div class="form-group">
                            <label>Contact Number</label>
                            <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control" placeholder="xxx-xxxxxxx"></asp:TextBox>
                        </div>

                        <br />

                        <div class="form-group">
                            <label>PIN Number</label>
                            <asp:TextBox ID="txtPin" runat="server" CssClass="form-control" placeholder="Password" TextMode="Number"></asp:TextBox>
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
                                        <div class="inline-block">
                                            <img src="../img/product/dead_space.jpg" alt="Alternate Text" class="w-16 h-20">
                                        </div>
                                        <div class="inline-block ml-2">
                                            <span class="font-semibold block">Dead Space III</span>
                                            <span class="block">RM 100.00</span>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="flex justify-between">
                                        <p class="font-semibold">Price:</p>
                                        <p>RM 100.00</p>
                                    </div>
                                    <div class="flex justify-between">
                                        <p class="font-semibold">Taxes:</p>
                                        <p>Calculate at checkout</p>
                                    </div>
                                    <div class="flex justify-between">
                                        <h5 class="font-bold">Subtotal:</h5>
                                        <h5>RM 100.00</h5>
                                    </div>
                                    <br>
                                    <div class="text-center">
                                        <button id="btnPayNow" class="btn btn-success btn-lg btn-block" type="button" onclick="btnPayNow_Click">Pay Now</button>
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
