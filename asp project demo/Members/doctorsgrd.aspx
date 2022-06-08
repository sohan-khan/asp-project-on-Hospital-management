<%@ Page Title="" Language="C#" MasterPageFile="~/Mypage.Master" AutoEventWireup="true" CodeBehind="doctorsgrd.aspx.cs" Inherits="asp_project_demo.doctorsgrd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="doctorId" DataSourceID="SqlDataSource1" PageSize="5" ShowFooter="True">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Insert" OnClick="LinkButton3_Click" ValidationGroup="Insert" CssClass="btn btn-primary fa fa-plus">Insert</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="doctorId" SortExpression="doctorId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("doctorId") %>'></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%#Bind("doctorId") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox12" ValidationGroup="Insert" Text="*" ErrorMessage=" Id Field Required"></asp:RequiredFieldValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("doctorId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="doctorname" SortExpression="doctorname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("doctorname") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox1" runat="server" Text="*" ValidationGroup="Insert" ErrorMessage="Name Field Required"></asp:RequiredFieldValidator>

                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("doctorname") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox7" runat="server" ValidationGroup="Insert" Text="*" ErrorMessage="Name Field Required"></asp:RequiredFieldValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("doctorname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="doctorfee" SortExpression="doctorfee">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("doctorfee") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" MinimumValue="500" MaximumValue="2000" Type="Integer" ValidationGroup="Insert" Text="*" ControlToValidate="TextBox3" ErrorMessage=" fee must be  equal or greater than  500"></asp:RangeValidator>

                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("doctorfee") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" MinimumValue="500" MaximumValue="2000" Type="Integer" ValidationGroup="Insert" Text="*" ControlToValidate="TextBox10" ErrorMessage=" fee must be equal or greater than 500  "></asp:RangeValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("doctorfee") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="deptId" SortExpression="deptId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("deptId") %>'></asp:TextBox>
                    <asp:DropDownList ID="ddlDept" CssClass="form-control" runat="server" SelectedValue='<%# Bind("deptId") %>'></asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox4" runat="server" ValidationGroup="Insert" Text="*" ErrorMessage=" depId Field Required"></asp:RequiredFieldValidator>

                </EditItemTemplate>
            
                <FooterTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("deptId") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox11" runat="server" ValidationGroup="Insert" Text="*" ErrorMessage=" depId Field Required"></asp:RequiredFieldValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("deptId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False"></asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
   <%-- <div class="row">
        <div class="col">
             <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
        <tr>
            <td style="width: 150px">
                Name:<br />
                <asp:TextBox ID="txtName" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Country:<br />
                <asp:TextBox ID="txtCountry" runat="server" Width="140" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnAdd" runat="server" Text="Add"  OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>

        </div>--%>

    <%--</div>--%>
    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Insert" CssClass="text-danger" runat="server" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hmdbCon %>" 
        DeleteCommand="DELETE FROM [doctors] WHERE [doctorId] = @doctorId" 
        InsertCommand="INSERT INTO [doctors] ([doctorId], [doctorname], [deptname], [doctorfee], [deptId]) VALUES (@doctorId, @doctorname, @deptname, @doctorfee, @deptId)" SelectCommand="select ds.deptname,d.* from doctors d inner join departments ds on d.deptId=ds.deptId" UpdateCommand="UPDATE [doctors] SET [doctorname] = @doctorname, [deptname] = @deptname, [doctorfee] = @doctorfee, [deptId] = @deptId WHERE [doctorId] = @doctorId">
        <DeleteParameters>
            <asp:Parameter Name="doctorId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="doctorId" Type="Int32" />
            <asp:Parameter Name="doctorname" Type="String" />
            <asp:Parameter Name="deptname" Type="String" />
            <asp:Parameter Name="doctorfee" Type="Double" />
            <asp:Parameter Name="deptId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="doctorname" Type="String" />
            <asp:Parameter Name="deptname" Type="String" />
            <asp:Parameter Name="doctorfee" Type="Double" />
            <asp:Parameter Name="deptId" Type="Int32" />
            <asp:Parameter Name="doctorId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
