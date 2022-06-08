<%@ Page Title="" Language="C#" MasterPageFile="~/Mypage.Master" AutoEventWireup="true" CodeBehind="PatinetsView.aspx.cs" Inherits="asp_project_demo.PatinetsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center><h1>Patient List</h1></center>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton3" CssClass="btn btn-primary fa fa-plus-circle" href="patients.aspx"  runat="server"></asp:LinkButton>
   <div class="table table-bordered table-striped table-responsive-xl" >
       <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" Width="1335px"   AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Pid" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" PageSize="5" >
        <Columns>
            <asp:TemplateField HeaderText="Id" SortExpression="Pid">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pid") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Pid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" CssClass="text-danger"  ErrorMessage="name Field Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="text-danger" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email is invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date" SortExpression="date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" Text='<%# Bind("date","{0:dd-MM-yyyy}") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("date","{0:dd-MM-yyyy}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Isadmitted" HeaderText="Admission Status" SortExpression="Isadmitted" />
            <asp:TemplateField HeaderText="CId" SortExpression="ctid">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource2" runat="server" DataTextField="category" DataValueField="ctid" SelectedValue='<%# Bind("ctid") %>'></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hmdbCon %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage=" ctid Field Required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ctid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                <EditItemTemplate>
                      <asp:Image ID="Image1" ImageUrl='<%# Eval("Picture","~/Images/{0}") %>' Width="50" runat="server" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:HiddenField ID="HiddenField1" Value='<%# Bind("Picture") %>' Visible="false" runat="server" />
                   
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" ImageUrl='<%# Eval("Picture","~/Images/{0}") %>' Width="50" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="true" HeaderText="Action" >
                <EditItemTemplate >
                    <asp:LinkButton ID="LinkButton1" runat="server"  CausesValidation="True"   CssClass="btn btn-info fa fa-refresh"        CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-secondary fa fa-remove"   CommandName ="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>                                                                     
                <ItemTemplate >                                                                       
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="btn btn-info fa fa-pencil-square" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"  CssClass="btn btn-danger fa fa-trash" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
   </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hmdbCon %>" DeleteCommand="DELETE FROM [patient] WHERE [Pid] = @Pid" InsertCommand="INSERT INTO [patient] ([Pid], [name], [email], [date],  [Picture], [Isadmitted], [ctid]) VALUES (@Pid, @name, @email, @date, @Picture, @Isadmitted, @ctid)" SelectCommand="select c.category,* from patient p,categories c where p.ctid=c.ctid" UpdateCommand="UPDATE [patient] SET [name] = @name, [email] = @email, [date] = @date, [Picture] = @Picture, [Isadmitted] = @Isadmitted, [ctid] = @ctid WHERE [Pid] = @Pid">
        <DeleteParameters>
            <asp:Parameter Name="Pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pid" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
            
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Isadmitted" Type="Boolean" />
            <asp:Parameter Name="ctid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
           
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Isadmitted" Type="Boolean" />
            <asp:Parameter Name="ctid" Type="Int32" />
            <asp:Parameter Name="Pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap-datepicker.js"></script>
  <script>
      $(document).ready(function () {
          $("input[name$='TextBox1']").datepicker({format:"dd-MM-yyyy"})
      })
  </script>

</asp:Content>
