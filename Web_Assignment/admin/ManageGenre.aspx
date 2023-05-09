﻿<%@ Page Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageGenre.aspx.cs" Inherits="Web_Assignment.admin.AddGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AddGenre" runat="Server">
    
    <div class="container mx-auto px-5">
        

        <!---------- Add Genre Form ---------->
        <h1 class="text-white text-3xl mb-3">Add Genre</h1>
        <hr />

        <br />

        <div class="text-white">

            <!----- Genre Name ----->
            <div class="auto-style1">
                <label class="block mb-2 text-sm font-medium" runat="server">Genre</label>
                <asp:TextBox ID="txtGenre" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Genre"></asp:TextBox>
                 <!--- Genre Dropdown Validator --->
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorGenre" runat="server" ErrorMessage="Genre is required" ControlToValidate="txtGenre" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>

            <br />

            <asp:Button ID="btnAddGenre" runat="server" Text="Add" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" OnClick="btnAddGenre_Click" />
        </div>


        <!----- Display Genre Data ----->
        <br /><br />
        <h1 class="text-white text-3xl mb-3">Manage Genre</h1>
        <hr />
        <br />

        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">

            <asp:GridView ID="GridViewGenre" runat="server" AutoGenerateColumns="False" CssClass="table w-full text-sm text-left text-gray-500 dark:text-gray-400 hover:bg-gray-50 dark:hover:bg-gray-600" DataKeyNames="genreId" OnRowEditing="GridViewGenre_RowEditing" OnRowCancelingEdit="GridViewGenre_RowCancelingEdit" OnRowUpdating="GridViewGenre_RowUpdating" OnRowDeleting="GridViewGenre_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="genreId" HeaderText="Id" ReadOnly="True" />
                    <asp:BoundField DataField="genreName" HeaderText="Genre" />
                   
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ControlStyle-CssClass="btn btn-success btn-sm rounded-0 border-green-500 hover:border-green-500 bg-white hover:bg-green-500" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-damage btn-sm rounded-0 border-red-500 hover:border-red-500 bg-white hover:bg-red-500 text-black" />
                    
                </Columns>
            </asp:GridView>

            
        </div>
        
        

        <!----- Manage Genre Table ----->
        <!--
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            No
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Genre Name
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Edit
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Remove
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                        <td class="px-6 py-4">
                            1
                        </td>
                        <td class="px-6 py-4">
                            Survival
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton1" PostBackUrl="~/admin/UpdateGenre.aspx" runat="server" class="btn btn-success btn-sm rounded-0 border-green-500 hover:border-green-500 bg-white hover:bg-green-500" data-toggle="tooltip" data-placement="top" title="Edit">
                                <i class="fa fa-edit"></i>
                            </asp:LinkButton>
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-damage btn-sm rounded-0 border-red-500 hover:border-red-500 bg-white hover:bg-red-500 text-black" data-toggle="tooltip" data-placement="top" title="Remove">
                                <i class="fa fa-trash"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>

                </tbody>
            </table>

        </div>
        -->
       
        
    </div>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 1.5rem;
            text-align: left;
        }
    </style>
</asp:Content>

