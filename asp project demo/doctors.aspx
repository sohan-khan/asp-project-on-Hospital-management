<%@ Page Title="" Language="C#" MasterPageFile="~/Mypage.Master" AutoEventWireup="true" CodeBehind="doctors.aspx.cs" Inherits="asp_project_demo.doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6">
            <asp:DataList ID="DataList1" runat="server" BackColor="#CC00FF" RepeatDirection="Horizontal" Width="237px" ForeColor="#FCFCFC" OnItemCommand="DataList1_ItemCommand" DataKeyField="doctorId">
                <HeaderTemplate>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Department</th>
                            <th>Fee</th>
                            <th>DeptId</th>
                            <th>Action</th>
                        </tr>

                   
                </HeaderTemplate>
                
                <ItemTemplate>
                   <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("doctorId") %>'></asp:Label>
                       </td>
                       <td>
                           <asp:Label ID="Label2" runat="server" Text='<%# Eval("doctorname") %>'></asp:Label>
                       </td>
                        <td>
                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("deptname") %>'></asp:Label>
                       </td>
                       <td>
                           <asp:Label ID="Label4" runat="server" Text='<%# Eval("doctorfee") %>'></asp:Label>
                       </td>
                        <td>
                           <asp:Label ID="Label5" runat="server" Text='<%# Eval("deptId") %>'></asp:Label>
                       </td>
                       <td style="width:fit-content">
                           <asp:LinkButton ID="LinkButton1" CssClass=" btn btn-info fa fa-pencil-square-o" CommandName="Edit" runat="server">Edit</asp:LinkButton>
                           <asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger fa fa-times-circle-o" OnClientClick='return confirm("Are you sure to delete?")' CommandName="Delete" runat="server">Delete</asp:LinkButton>
                       </td>
                   </tr>  
                </ItemTemplate>
                
                <EditItemTemplate>
                     <tr>
                     
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("doctorId") %>'></asp:TextBox>
                     </td>

                      <td>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("doctorname") %>'></asp:TextBox>
                     </td>

                      <td>
                         <%-- <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="deptname" DataValueField="deptId" SelectedValue='<%# Eval("deptname") %>'></asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hmdbCon %>" SelectCommand="SELECT * FROM [departments]"></asp:SqlDataSource>--%>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("deptname") %>'></asp:TextBox>
                     </td>

                      <td>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("doctorfee") %>'></asp:TextBox>
                     </td>
                     
                        <td>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("deptId") %>'></asp:TextBox>
                     </td>  

                          <td style="width:fit-content">
                              <asp:LinkButton ID="LinkButton3" CssClass="btn btn-success fa fa-refresh" CommandName="Update" runat="server">Update</asp:LinkButton>
                              <asp:LinkButton ID="LinkButton4" CssClass="btn btn-secondary fa fa-remove"  CommandName="Cancel" runat="server">Cancel</asp:LinkButton>
                     </td> 

                 </tr>

                </EditItemTemplate>
                <FooterTemplate>
                    <tr>
                        <td>
                            <asp:TextBox ID="TxtId" runat="server" Text='<%# Eval("doctorId") %>'></asp:TextBox>
<%--                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtId"    MinimumValue="1" MaximumValue="99" Type="Integer" ErrorMessage="Id must be beteween 1 to 99"></asp:RangeValidator>--%>
                        </td>
                        <td>
                             <asp:TextBox ID="Txtname" runat="server" Text='<%# Eval("doctorname") %>'></asp:TextBox>
<%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtname"      ErrorMessage=" Name Field Required"></asp:RequiredFieldValidator>--%>
                        </td>
                         <td>
                          <%-- <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="deptname" DataValueField="deptId" SelectedValue='<%# Eval("deptname") %>'></asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hmdbCon %>" SelectCommand="SELECT * FROM [departments]"></asp:SqlDataSource>--%>
                             <asp:TextBox ID="Txtdept" runat="server" Text='<%# Eval("deptname") %>'></asp:TextBox>
<%--                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="Txtdept" ErrorMessage=" department Field Required"></asp:RequiredFieldValidator>--%>
                        </td>
                         <td>
                             <asp:TextBox ID="Txtfee" runat="server" Text='<%# Eval("doctorfee") %>'></asp:TextBox>
<%--                             <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Txtfee"  OnServerValidate="CustomValidator1_ServerValidate"  ErrorMessage="Fee must be greater than 500"></asp:CustomValidator>--%>
                        </td>
                         <td>
                             <asp:TextBox ID="TxtdeptId" runat="server" Text='<%# Eval("deptId") %>'></asp:TextBox>
<%--                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtdeptId"  ErrorMessage=" deptId Field Required" ></asp:RequiredFieldValidator>--%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkbtnInsert" CssClass="btn btn-primary fa fa-plus-circle"     CommandName="Insert" runat="server">Insert</asp:LinkButton>
                        </td>
                    </tr>
                    
                </FooterTemplate>
            </asp:DataList>
           
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
