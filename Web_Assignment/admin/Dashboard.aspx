<%@ Page Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Web_Assignment.admin.Dashboard" %>



<asp:Content ID="Content1" ContentPlaceHolderID="Dashboard" runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">

    <title>Dashboard</title>
    <body>
        <div class="p-4 sm:ml-64 bg-zinc-900">
            <div class="p-4 border-2 border-neutral-100 border rounded-lg dark:border-neutral-400 mt-14">
                <div class="overflow-hidden rounded-lg shadow-lg">
                    <div
                        class="bg-zinc-900 text-xl py-3 px-5 dark:bg-zinc-900 dark:text-neutral-200">
                        Revenue
                    </div>
                    <canvas class="p-10" id="chartBar"></canvas>
                </div>

                <!-- Required chart.js -->
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                <!-- Chart bar -->
                <script>
                    const labelsBarChart = [
                        "January",
                        "February",
                        "March",
                        "April",
                        "May",
                        "June",
                    ];
                    const dataBarChart = {
                        labels: labelsBarChart,
                        datasets: [
                            {
                                label: "Games",
                                backgroundColor: "hsl(217, 57%, 51%)",
                                borderColor: "hsl(217, 57%, 51%)",
                                data: [0, 10, 5, 2, 20, 30, 45],
                            },
                        ],
                    };

                    const configBarChart = {
                        type: "bar",
                        data: dataBarChart,
                        options: {},
                    };

                    var chartBar = new Chart(
                        document.getElementById("chartBar"),
                        configBarChart
                    );
                </script>
            </div>
        </div>
        <div class="p-4 sm:ml-64 bg-zinc-900">
            <div class="p-4 border-2 border-neutral-100 border rounded-lg dark:border-neutral-400 mt-14">
                <div class="overflow-hidden rounded-lg shadow-lg">
                    <div
                        class="bg-neutral-50 text py-3 px-5 dark:bg-zinc-900 dark:text-neutral-200">
                        Category
                    </div>
                    <canvas class="p-10 w-7/12" id="chartDoughnut"></canvas>
                </div>

                <!-- Required chart.js -->
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                <!-- Chart doughnut -->
                <script>
                    const dataDoughnut = {
                        labels: ["JavaScript", "Python", "Ruby"],
                        datasets: [
                            {
                                label: "My First Dataset",
                                data: [300, 50, 100],
                                backgroundColor: [
                                    "rgb(133, 105, 241)",
                                    "rgb(164, 101, 241)",
                                    "rgb(101, 143, 241)",
                                ],
                                hoverOffset: 4,
                            },
                        ],
                    };

                    const configDoughnut = {
                        type: "doughnut",
                        data: dataDoughnut,
                        options: {},
                    };

                    var chartBar = new Chart(
                        document.getElementById("chartDoughnut"),
                        configDoughnut
                    );
                </script>
            </div>
            <br />
            <div class="overflow-hidden rounded-lg shadow-lg">
                <div
                    class="p-4 border-2 border-neutral-100 border rounded-lg dark:border-neutral-400 mt-14">
                    Expenses
                    <canvas class="p-10" id="chartLine"></canvas>
                    <!-- Required chart.js -->
                    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                    <!-- Chart line -->
                    <script>
                        const labels = ["January", "February", "March", "April", "May", "June"];
                        const data = {
                            labels: labels,
                            datasets: [
                                {
                                    label: "My First dataset",
                                    backgroundColor: "hsl(217, 57%, 51%)",
                                    borderColor: "hsl(217, 57%, 51%)",
                                    data: [0, 10, 5, 2, 20, 30, 45],
                                },
                            ],
                        };

                        const configLineChart = {
                            type: "line",
                            data,
                            options: {},
                        };

                        var chartLine = new Chart(
                            document.getElementById("chartLine"),
                            configLineChart
                        );
                    </script>
                </div>

            </div>

        </div>

    </body>
    </html>
</asp:Content>
