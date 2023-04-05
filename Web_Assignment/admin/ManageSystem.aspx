<%@ Page Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageSystem.aspx.cs" Inherits="Web_Assignment.admin.ManageSystem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ManageSystem" runat="Server">
    
    <div class="container mx-auto px-5">

        <h1 class="text-white text-3xl">Manage System Requirement</h1>

        <hr />

        <br />

        <!----- Manage Game Table ----->
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            No
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Operating System
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Processor
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Storage
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
                            Window OS
                        </td>
                        <td class="px-6 py-4">
                            AMD Processor
                        </td>
                        <td class="px-6 py-4">
                            50GB
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton1" PostBackUrl="~/admin/UpdateSystem.aspx" runat="server" class="btn btn-success btn-sm rounded-0 border-green-500 hover:border-green-500 bg-white hover:bg-green-500" data-toggle="tooltip" data-placement="top" title="Edit">
                                <i class="fa fa-edit"></i>
                            </asp:LinkButton>
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-damage btn-sm rounded-0 border-red-500 hover:border-red-500 bg-white hover:bg-red-500 text-black" data-toggle="tooltip" data-placement="top" title="Remove">
                                <i class="fa fa-trash"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>

                    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                        <td class="px-6 py-4">
                            2
                        </td>
                        <td class="px-6 py-4">
                            Window OS
                        </td>
                        <td class="px-6 py-4">
                            AMD Processor
                        </td>
                        <td class="px-6 py-4">
                            50GB
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton3" PostBackUrl="~/admin/UpdateSystem.aspx" runat="server" class="btn btn-success btn-sm rounded-0 border-green-500 hover:border-green-500 bg-white hover:bg-green-500" data-toggle="tooltip" data-placement="top" title="Edit">
                                <i class="fa fa-edit"></i>
                            </asp:LinkButton>
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton4" runat="server" class="btn btn-damage btn-sm rounded-0 border-red-500 hover:border-red-500 bg-white hover:bg-red-500 text-black" data-toggle="tooltip" data-placement="top" title="Remove">
                                <i class="fa fa-trash"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>

                    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                        <td class="px-6 py-4">
                            3
                        </td>
                        <td class="px-6 py-4">
                            Window OS.
                        </td>
                        <td class="px-6 py-4">
                            AMD Processor
                        </td>
                        <td class="px-6 py-4">
                            50GB
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton5" PostBackUrl="~/admin/UpdateSystem.aspx" runat="server" class="btn btn-success btn-sm rounded-0 border-green-500 hover:border-green-500 bg-white hover:bg-green-500" data-toggle="tooltip" data-placement="top" title="Edit">
                                <i class="fa fa-edit"></i>
                            </asp:LinkButton>
                        </td>
                        <td class="px-6 py-4">
                            <asp:LinkButton ID="LinkButton6" runat="server" class="btn btn-damage btn-sm rounded-0 border-red-500 hover:border-red-500 bg-white hover:bg-red-500 text-black" data-toggle="tooltip" data-placement="top" title="Remove">
                                <i class="fa fa-trash"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

</asp:Content>
