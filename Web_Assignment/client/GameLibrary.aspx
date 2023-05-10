<%@ Page Language="C#" MasterPageFile="ClientMaster.Master" AutoEventWireup="true" CodeBehind="GameLibrary.aspx.cs" Inherits="Web_Assignment.client.GameLibrary" %>

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
                        <p class="card-text" style="font-size: 12px;">
                            Some quick example text to build on the card title and make up the bulk of the card's content.
                        </p>
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="btnReview" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
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
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="Button1" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
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
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="Button2" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
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
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="Button3" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
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
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="Button4" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
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
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="Button5" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
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
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="Button6" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
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
                        
                        <label style="font-size: 14px;">Genres: </label>
                        <label class="card-text" style="font-size: 13px;">Survival</label>

                        <br />

                        <asp:Button ID="Button7" runat="server" Text="Review" CssClass="btn btn-info" OnClick="LinkButtonEditReview_Click" style="text-align: center;" />
                        
                    </div>
                </div>

            </div>
            <!---------- Game ---------->
  
        </div>

    </div>

    <!---------- The Modal ---------->
    <div id="reviewModal" class="modal modalShadowReviews" runat="server">
	    <div class="modalReviews">

            <div class="modal-header">
                <h4 class="modal-title">Dead Space Review</h4>

                <asp:LinkButton ID="LinkButtonClose" runat="server" CssClass="close btnCloseReview" style="text-decoration: none;" onclick="btnCloseReview_Click">
                    <span aria-hidden="true">&times;</span>
                </asp:LinkButton>

            </div>

            <div class="modal-body" style="color: black; text-align: left;">

                <div class="form-group">
                    <label>Rating Star</label>
                    
                    <select id="reviewRating" class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>

                    <small class="form-text text-muted">From worst to best rating in the range from 1 to 5</small>
                </div>

                <br />

                <div class="form-group">
                    <label>Comment</label>
                    <textarea id="txtReviewComment" cols="20" rows="2" class="form-control" runat="server"></textarea>

                </div>

                <br />

                <asp:Button ID="btnSubmitReview" runat="server" Text="Submit" CssClass="btn btn-success btn-block" />
   

            </div>
                    
        </div>

    </div>
    <!---------- The Modal ---------->

</asp:Content>

