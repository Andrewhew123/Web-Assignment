<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderCartTailWind.aspx.cs" Inherits="Web_Assignment.client.cart" %>

<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
<html lang="en" class="bg-zinc-900">

<head runat="server">
    <title>Cart</title>
    <!---------- Link to cart CSS ----------->
    <link href="../css/cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        
        <br />
        <!------------------------------ Tailwind ------------------------------>
    <div class="container mx-auto px-10">
        <div class="row mx-5">
            <h1 style="color:white; margin-bottom:25px" class="text-3xl">My Cart</h1>

            <!------------------------------ Tailwind sub 1 ------------------------------>
            <div class="col-span-8">
                <div class="grid grid-cols-3 gap-4">

                    <%---------- Column 1 ----------%>
                    <div class="col-span-2 flex flex-row cart-layout h-30 min-h-50">

                        <div class="flex flex-row">
                            <a href="#"><img src="../img/product/cyberpunk.jpg" alt="cyberpunk" class="w-48 h-56 rounded-lg"/></a>
                        </div>

                        <div class="flex flex-col flex-wrap w-full ms-4 mt-2">
                            <div class="flex flex-row w-full justify-between text-white">
                                <h4 class="mb-0">Cyberpunk 2077</h4>
                                <p class="mb-0 font-bold">RM 213.99</p>
                            </div>

                            <div class="flex flex-row w-full items-center mt-5">
                                <img alt="iarc 18" class="w-10 h-12" src="../img/product/iarc_18.jpg"/>
                                <p class="font-bold text-lg mb-0 px-3 w-full text-white">
                                    18+ <br/> 
                                    Extreme Violence, Sex, Strong Language
                                </p>
                            </div>

                            <div class="flex flex-row w-full mt-5 items-end">
                                <img alt="windows OS" class="w-5 h-6" src="../img/product/windows10.png"/>
                                <img alt="mac OS" class="w-6 h-6 ms-2" src="../img/product/macOS.png"/>
                                <div class="ml-auto">
                                    <a href="#" class="text-gray-300 opacity-60 text-decoration-none">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                        &nbsp;Remove
                                    </a>
                                </div>
                            </div>

                        </div>                        
                    </div>
                    <%---------- Column 1 ----------%>


                    <%---------- Column 2 ----------%>
                    <div>
                        <!------------------------------ Tailwind sub 2 ------------------------------>
                        <div class="col-span-4 md:ps-3">
                            <h3 class="text-white mb-7 inline-block">
                                Game Prices Summary
                            </h3>

                            <div class="grid grid-cols-1 md:grid-cols-2 gap-2 md:ms-0 mb-8">
                                <div class="md:col-auto">
                                    <label for="inputPromo" class="block text-white text-sm mb-1 pb-0">
                                        ENTER PROMO CODE
                                    </label>
                                    <asp:TextBox ID="txtPromo" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Promo Code"></asp:TextBox>
                                
                                </div>

                                <div class="md:col-auto">
                                    <button id="btnSubmit" class="btn bg-info text-white mt-5">Submit</button>
                                </div>
                            </div>
   
                            <div class="flex justify-between text-white mb-4">
                                <p class="mb-0">Subtotal</p>
                                <p class="mb-0">RM 213.99</p>
                            </div>

                            <div class="flex justify-between text-white mb-4">
                                <p class="mb-0">Sale Discount</p>
                                <p class="mb-0">-RM 0.00</p>
                            </div>

                            <hr class="mb-4 border-0 border-b-2 border-white opacity-60">

                            <div class="flex justify-between text-white mb-4">
                                <p class="mb-0">Total Price</p>
                                <p class="mb-0 font-bold">RM 213.99</p>
                            </div>

                            <div class="grid">
                                <asp:Button ID="Button2" runat="server" Text="Checkout" class="btn bg-primary text-white py-3 text-lg w-full bg-indigo-600 hover:bg-indigo-700  shadow-sm text-base" />
                            </div>
                        </div>

                        

                        <div class="mt-6 flex justify-center text-center text-sm text-gray-500">
                            <span>or&nbsp&nbsp</span>                       
                            <asp:Button ID="Button1" runat="server" Text="Continue Shopping" class="font-medium text-indigo-600 hover:text-indigo-500" />
                        </div>

                        <!--------------------------------------------------------------------->


                    <%---------- Column 2 ----------%>



                </div>


            </div>
            <!--------------------------------------------------------------------->



            


        </div>
    </div>
     <!--------------------------------------------------------------------->

    </form>
</body>
</html>
