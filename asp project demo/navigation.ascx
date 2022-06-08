<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navigation.ascx.cs" Inherits="asp_project_demo.navigation" %>
 <nav class="navbar navbar-light navbar-expand-lg  navbar-dark bg-primary  text-uppercase">
            <a class="navbar-brand" href="/">IsDB-BISEW</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="nav navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="default.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="catrgoryview.aspx">categorylist</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="department.aspx">departmentlist</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="PatinetsView.aspx">ptientslist</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="doctorsgrd.aspx">doctorslilst</a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link" href="patientreport.aspx">crystal report</a>
                    </li>
                    
                </ul>
                <ul class="nav navbar-nav ml-auto">
                    <%
                        if (Request.IsAuthenticated)
                        {
                    %>
                        <li class="navbar-text">Hi <%= Page.User.Identity.Name %></li>
                        <li class="nav-item">
                            <asp:LinkButton ID="signOut" CssClass="nav-link"  OnClick="signOut_Click" runat="server">Log Out</asp:LinkButton>
                        </li>
                    <%
                        }
                        else
                        { 
                    %>
                        <li class="nav-item"><a class="nav-link" href="register.aspx">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a></li>
                    <%

                        }
                    %>
                </ul>
            </div>
        </nav>