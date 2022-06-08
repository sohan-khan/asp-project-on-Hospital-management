<%@ Page Title="" Language="C#" MasterPageFile="~/Mypage.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="asp_project_demo.patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 122px;
    }
    .auto-style3 {
        width: 97px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DataObjectTypeName="asp_project_demo.categories" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Getcategories" TypeName="asp_project_demo.DAL_CTG" UpdateMethod="Update"></asp:ObjectDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource2" DefaultMode="Insert" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <InsertItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Id</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ctid") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage=" Id Field Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Category</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("category") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage=" category Field Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton3" runat="server"   CssClass="btn btn-primary fa fa-plus-circle"  CommandName="Insert" Text="Insert" >Insert</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-warning fa fa-times-circle"  CommandName="Cancel" Text="Cancel"  >Cancel</asp:LinkButton>
                       
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Id</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ctid") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Category</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
</asp:FormView>
     <a class="active" href="catrgoryview.aspx">Back to list</a>
    <br />
   
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
