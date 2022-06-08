<%@ Page Title="" Language="C#" MasterPageFile="~/Mypage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="asp_project_demo._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>Welcome to Our Hospoital</h1></center>
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                     <img src="Images/hos3.png"  class="d-block w-100" alt="..." />
                </div>
                <div class="carousel-item">
<%--                    <img src="images/smartphone.png" >--%>
                    <img src="Images/hos4.jpg"  class="d-block w-100" alt="..." />
                </div>
                <div class="carousel-item">
<%--                    <img src="images/fruits.jpg" >--%>
                    <img src="Images/hos5.jpg"  class="d-block w-100" alt="..." />
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </button>
        </div>
    
    <%--<!--cloths catagory-->
    <div class="container">
        <button type="button" class="btn btn-info">Cloths Catagory</button>
        <!--For Page-->
        <div class="page">
            <!--For Row containing all card-->
            <div class="row">
                <!--Card 1-->
                <div class="col-sm">
                    <div class="card card-cascade card-ecommerce wider shadow mb-5 ">
                        <!--Card image-->
                        <div class="view view-cascade overlay text-center">
                            <img class="card-img-top" src="images/women's.jpg" alt=""> <a>
                                <div class="mask rgba-white-slight"></div>
                            </a>
                        </div>
                        <!--Card Body-->
                        <div class="card-body card-body-cascade text-center">
                            <!--Card Title-->
                            <h4 class="card-title"><strong><a href="">Women's jeans</a></strong></h4> <!-- Card Description-->
                            <p class="card-text">Wearing this jeans get feel comfort and buy it at best price. </p>
                            <p class="price">$650</p> <!-- Card Rating-->
                            <ul class="row rating">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <!--Card footer-->
                            <div class="card-footer">
                                <p><strong><a href="product detail1.html" target="_blank">More Info..</a></strong></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Card 2-->
                <div class="col-sm">
                    <div class="card card-cascade card-ecommerce wider shadow mb-5 ">
                        <!--Card image-->
                        <div class="view view-cascade overlay text-center">
                            <img class="card-img-top" src="images/men's shoe.jpg" alt=""> <a>
                                <div class="mask rgba-white-slight"></div>
                            </a>
                        </div>--%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
