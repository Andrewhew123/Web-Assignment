<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GameLibraryTailWind.aspx.cs" Inherits="Web_Assignment.client.GameLibraryTailWind" %>

<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.js"></script>
<script src="https://cdn.tailwindcss.com"></script>
<html lang="en" class="bg-zinc-900">


<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
    <div class="max-w-screen-lg mx-auto px-4">
        <div class="grid grid-cols-12 text-white mb-10">
            <div class="col-span-6">
                <h3 class="text-3xl font-normal">Game Library</h3>
            </div>
        </div>

        <%--<hr class="mb-4 border-0 border-b-2 border-white opacity-30">--%>

        <div class="grid grid-cols-3 gap-4 mt-10">
            <%--Repeat this card--%>
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-span-1">
                    <div class="max-w-sm bg-stone-500 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                        <%--<a href="#">
                            <img class="rounded-t-lg mx-auto" src="../img/product/dead_space.jpg" alt="" style="height: 200px"/>
                        </a>--%>
                        <asp:Image ID="Image1" runat="server" CssClass="rounded-t-lg mx-auto" style="height: 200px" 
                            ImageUrl='<%#"~/img/product/"+Eval("image")%>'/>
                        <div class="p-5">
                            <%--<a href="#">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Dead Space III</h5>
                            </a>--%>
                            <asp:label id="lblGameName" runat="server" text='<%#Eval("name") %>' 
                                cssclass="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                            </asp:label>
                            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                                <%--Description--%>
                                <%#Eval("description")%>
                            </p>
                            <%--<a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 
                                rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 
                                dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                Review
                                <svg aria-hidden="true" class="w-4 h-4 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20" 
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" 
                                        d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 
                                        11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd">
                                    </path>
                                </svg>
                            </a>--%>
                            <%--<asp:LinkButton ID="btnReview" runat="server" CssClass="inline-flex items-center px-3 py-2 text-sm font-medium text-center 
                                text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 
                                dark:hover:bg-blue-700 dark:focus:ring-blue-800" OnClick="btnReview_Click">
                                Review
                                <svg aria-hidden="true" class="w-4 h-4 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20" 
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" 
                                        d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 
                                        11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd">
                                    </path>
                                </svg>
                            </asp:LinkButton>--%>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>

    <%--<div id="modal" tabindex="-1" aria-hidden="true" class="h-screen flex items-center justify-center" runat="server">
    <div class="relative w-full max-w-md max-h-full">
        <!-- Modal content -->
        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">

            <asp:LinkButton ID="btnCloseModal" runat="server" CssClass="absolute top-3 right-2.5 text-gray-400 
                bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto 
                inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" OnClick="btnCloseModal_Click">
                <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" 
                    xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" 
                        d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 
                        1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" 
                        clip-rule="evenodd"></path></svg>
                <span class="sr-only">Close modal</span>
            </asp:LinkButton>

            <div class="px-6 py-6 lg:px-8">
                <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">Sign in to our platform</h3>
                <form class="space-y-6" action="#">
                    <div>
                        <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your email</label>
                        <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="name@company.com" required>
                    </div>
                    <div>
                        <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your password</label>
                        <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                    </div>
                    <div class="flex justify-between">
                        <div class="flex items-start">
                            <div class="flex items-center h-5">
                                <input id="remember" type="checkbox" value="" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-600 dark:border-gray-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800" required>
                            </div>
                            <label for="remember" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Remember me</label>
                        </div>
                        <a href="#" class="text-sm text-blue-700 hover:underline dark:text-blue-500">Lost Password?</a>
                    </div>
                    <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Login to your account</button>
                    <div class="text-sm font-medium text-gray-500 dark:text-gray-300">
                        Not registered? <a href="#" class="text-blue-700 hover:underline dark:text-blue-500">Create account</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    </div> --%>
    </form>
</body>
</html>
