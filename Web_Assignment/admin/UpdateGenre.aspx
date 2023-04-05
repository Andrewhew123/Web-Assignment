<%@ Page Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateGenre.aspx.cs" Inherits="Web_Assignment.admin.UpdateGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UpdateGenre" runat="Server">
    
    <div class="container mx-auto px-5 bg-zinc-900">

        <h1 class="text-white text-3xl mb-3">Update Genre</h1>
        <hr />

        <br />

        <!---------- Update Genre Form ---------->
        <div class="text-white">

            <!----- Genre Name ----->
            <div class="mb-6">
                <label class="block mb-2 text-sm font-medium" runat="server">Genre</label>
                <asp:TextBox ID="txtGenre" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Genre"></asp:TextBox>
            </div>

            <br />

            <asp:Button ID="btnUpdateGenre" runat="server" Text="Add" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" />
        </div>

    </div>

</asp:Content>