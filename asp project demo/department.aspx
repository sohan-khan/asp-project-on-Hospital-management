<%@ Page Title="" Language="C#" MasterPageFile="~/Mypage.Master" AutoEventWireup="true" CodeBehind="department.aspx.cs" Inherits="asp_project_demo.department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center><h1>Department List</h1></center>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="asp_project_demo.departments" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetDepts" TypeName="asp_project_demo.DAL_DEPT" UpdateMethod="Update"></asp:ObjectDataSource>
    <div class="row">
        <div class="col-md-12">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="deptId"   DataSourceID="ObjectDataSource1" InsertItemPosition="LastItem">
              
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-info fa fa-refresh" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-secondary fa fa-remove" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="deptIdLabel1" runat="server" Text='<%# Eval("deptId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="deptnameTextBox" runat="server" Text='<%# Bind("deptname") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="deptnameTextBox" ErrorMessage=" deptname Field Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </EditItemTemplate>
             
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CssClass="btn btn-primary fa fa-plus" ValidationGroup="Insert" ForeColor="Red" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-secondary fa fa-remove" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="deptIdTextBox" runat="server" Text='<%# Bind("deptId") %>' />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ValidationGroup="Insert" Display="None" ControlToValidate="deptIdTextBox" MinimumValue="1" MaximumValue="20" Type="Integer" ErrorMessage="Id must be between 1 to 20"></asp:RangeValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="deptnameTextBox" runat="server" Text='<%# Bind("deptname") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Insert" Display="None" ControlToValidate="deptnameTextBox" ErrorMessage=" deptname Field Required"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ValidationGroup="Insert" Display="None" ControlToValidate="deptnameTextBox" OnServerValidate="CustomValidator1_ServerValidate" ErrorMessage="name must be greater than 5 char!!"></asp:CustomValidator>
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                            <asp:Button ID="EditButton" runat="server" CssClass="btn btn-warning fa fa-pencil" CommandName="Edit" Text="Edit" />
                            <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger fa fa-trash" CommandName="Delete" Text="Delete" />
                        </td>
                        <td>
                            <asp:Label ID="deptIdLabel" runat="server" Text='<%# Eval("deptId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="deptnameLabel" runat="server" Text='<%# Eval("deptname") %>' />
                        </td>

                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table class="table table-bordered table-striped table-responsive-xl" >
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Dept ID</th>
                                <th>Department</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="itemPlaceholder" runat="server">

                                <td>

                                    <asp:Button ID="EditButton" runat="server" CssClass="btn btn-warning fa fa-pencil" CommandName="Edit" Text="Edit" />
                                    <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger fa fa-trash" CommandName="Delete" Text="Delete" />
                                </td>
                                <td style="width:10px">
                                    <asp:Label ID="deptIdLabel" runat="server" Text='<%# Eval("deptId") %>' />
                                </td>
                                <td style="width:10px">
                                    <asp:Label ID="deptnameLabel" runat="server" Text='<%# Eval("deptname") %>' />
                                </td>

                            </tr>
                        </tbody>

                        <tfoot>
                            <tr>
                                <td>
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </LayoutTemplate>
              
            </asp:ListView>
            <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Insert" HeaderText="please correct this following Errors:" CssClass="text-danger" runat="server" />
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
