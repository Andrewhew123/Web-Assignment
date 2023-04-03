<%@ Page Language="C#" MasterPageFile="ClientMaster.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Web_Assignment.client.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="GameLibrary" runat="Server">

    <div class="container">

        <div class="row" style="color: white;">
            <div class="col-sm-6">
                <h3>Game Library</h3>
            </div>

            <div class="col-sm-6">
                <div class="dropdown" style="text-align: right;">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Filter
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Adventure</a>
                        <a class="dropdown-item" href="#">Horror</a>
                        <a class="dropdown-item" href="#">Survival</a>
                    </div>
                </div>
            </div>

        </div>
            
        <hr style="color: white;"/>
            
        <br />

        <div class="row">


            <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="btnPlay" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButtonReview" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->

             <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="Button1" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButton17" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->

             <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="Button2" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButton18" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->

             <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="Button3" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButton19" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->



            <!---------------------------------------------------------------->


            <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="Button4" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButton1" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->

             <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="Button5" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButton2" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->

             <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="Button6" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButton3" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->

             <!---------- Game ---------->
            <div class="col-md-3 colGame">

                <div class="card text-white bg-dark mb-3 cardGame" style="max-width: 18rem;">
                    <img class="cardImgGame" src="../img/product/dead_space.jpg" alt="Card image cap" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                    
                        <h5 class="card-title">Dead Space</h5>
                        <hr />
                        <p class="card-text" style="font-size: 12px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button ID="Button7" runat="server" Text="Play" CssClass="btn btn-info"/>
                        &nbsp&nbsp
                        <asp:LinkButton ID="LinkButton4" runat="server" style="color: white; font-size: 15px;">Review</asp:LinkButton>
                    </div>
                </div>

            </div>
            <!---------- Game ---------->
                


        </div>


    </div>
</asp:Content>


        

