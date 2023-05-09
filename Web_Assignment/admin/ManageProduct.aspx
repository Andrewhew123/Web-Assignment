<%@ Page Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="Web_Assignment.admin.ManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ManageProduct" runat="Server">
    
    <div class="container mx-auto px-5">
            
        <!----- Display Genre Data ----->
        
        <h1 class="text-white text-3xl mb-3">Manage Product</h1>
        <hr />
        <br />

        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">

            <asp:GridView ID="GridViewProduct" runat="server" AutoGenerateColumns="False" CssClass="table w-full text-sm text-left text-gray-500 dark:text-gray-400 hover:bg-gray-50 dark:hover:bg-gray-600" DataKeyNames="productId" OnRowDeleting="GridViewProduct_RowDeleting" OnRowEditing="GridViewProduct_RowEditing" >
                <Columns>
                    <asp:BoundField DataField="productId" HeaderText="Id" ReadOnly="True" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="description" HeaderText="Description" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="genreName" HeaderText="Genre" />
                    <asp:BoundField DataField="os" HeaderText="System" />
                    <asp:BoundField DataField="processor" HeaderText="Processor" />
                    <asp:BoundField DataField="storage" HeaderText="Storage" />
                   
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ControlStyle-CssClass="btn btn-success btn-sm rounded-0 border-green-500 hover:border-green-500 bg-white hover:bg-green-500" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-damage btn-sm rounded-0 border-red-500 hover:border-red-500 bg-white hover:bg-red-500 text-black" />
                    
                </Columns>
            </asp:GridView>

            
        </div>


    </div>

</asp:Content>
