<%@ Page Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Web_Assignment.admin.UpdateProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UpdateProduct" runat="Server">
    
    <div class="container mx-auto px-5">

        <h1 class="text-white text-3xl mb-3">Update Product</h1>
        <hr />

        <br />

        <!---------- Update Product Form ---------->
        <div class="text-white">

            <!----- Image Cover ----->
            <div class="mb-6" style="justify-content: center; display: flex;">
                <img alt="" src="../img/product/dead_space.jpg" class="object-cover h-70 w-60" style="border-radius: 10px;" />
            </div>
            
            <!----- Upload Image ----->
            <div style="text-align: center;" class="mb-6">
                <asp:Button ID="btnProductImageUpload" runat="server" Text="Upload" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" />
            </div>

            <br />

            <!----- Product Name ----->
            <div class="mb-6">
                <label class="block mb-2 text-sm font-medium" runat="server">Name</label>
                <asp:TextBox ID="txtProductName" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Name"></asp:TextBox>
            </div>

            <!----- Product Description ----->
            <div class="mb-6">
                <label class="block mb-2 text-sm font-medium" runat="server">Description</label>
                <textarea id="message" rows="4" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Product Description"></textarea>
            </div>

            <!----- Product Price ----->
            <div class="mb-6">
                <label class="block mb-2 text-sm font-medium" runat="server">Price</label>
                <asp:TextBox ID="TextBox1" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Price"></asp:TextBox>
            </div>

            <!----- Product Genre ----->
            <div class="mb-6">
                <label class="block mb-2 text-sm font-medium" runat="server">Genre</label>
                <asp:DropDownList ID="ddlGenre" runat="server" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                    <asp:ListItem>Survival</asp:ListItem>
                    <asp:ListItem>Adventure</asp:ListItem>
                    <asp:ListItem>Horror</asp:ListItem>
                </asp:DropDownList>
            </div>

            <!----- Product System ----->
            <div class="mb-6">
                <label class="block mb-2 text-sm font-medium" runat="server">System Requirement</label>
                <asp:DropDownList ID="ddlSystem" runat="server" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                    <asp:ListItem>Window OS, AMD Processor, 50GB</asp:ListItem>
                    <asp:ListItem>Window OS, Intel Processor, 20GB</asp:ListItem>
                    <asp:ListItem>Window OS, AMD Processor, 12GB</asp:ListItem>
                </asp:DropDownList>
            </div>

            <br />

            <asp:Button ID="btnUpdateProduct" runat="server" Text="Update" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" />
        </div>

    </div>

</asp:Content>
