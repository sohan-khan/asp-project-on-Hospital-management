<%@ Page Title="" Language="C#" MasterPageFile="~/Mypage.Master" AutoEventWireup="true" CodeBehind="patients.aspx.cs" Inherits="asp_project_demo.patients1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center><h1>Patient Insert</h1></center>
     <br />
     <br />
    <div class="table table-bordered table-striped table-responsive-xl">
         <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource2" DefaultMode="Insert" OnItemInserting="DetailsView1_ItemInserting" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" Width="1278px">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:TemplateField HeaderText="Pid" SortExpression="Pid">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pid") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pid") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" ControlToValidate="TextBox1" Display="None" ValidationGroup="Insert"  MinimumValue="1" MaximumValue="99" Type="Integer" runat="server" ErrorMessage="Id must be 1 to 99"></asp:RangeValidator>
                </InsertItemTemplate>
                
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Pid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="name" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ValidationGroup="Insert"  OnServerValidate="CustomValidator1_ServerValidate" ErrorMessage="Name must be greater than 5 char!!"></asp:CustomValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="email" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ValidationGroup="Insert"   ErrorMessage="Email is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="date" SortExpression="date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="None" ValidationGroup="Insert" ErrorMessage="Date is required"></asp:RequiredFieldValidator>
<%--                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" Display="None" ValidationGroup="Insert"   ValueToCompare="05-06-2022" Operator="LessThan" Type="Date" ErrorMessage="Date must be lessthan or equal "></asp:CompareValidator>--%>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:HiddenField ID="HiddenField1" Value='<%#Bind("picture") %>' Visible="false" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FileUpload1"  Display="None" ValidationGroup="Insert" runat="server" ErrorMessage="picture is required"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Picture") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Isadmitted" SortExpression="Isadmitted">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Isadmitted") %>' />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Isadmitted") %>' />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Isadmitted") %>'  Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ctid" SortExpression="ctid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ctid") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource3" runat="server" AutoPostBack="True" DataTextField="category" DataValueField="ctid" SelectedValue='<%# Bind("ctid") %>'></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:hmdbCon %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ctid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" ValidationGroup="Insert" />
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>
    </div>
   
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hmdbCon %>" DeleteCommand="DELETE FROM [patient] WHERE [Pid] = @Pid" InsertCommand="INSERT INTO [patient] ([Pid], [name], [email], [date], [Picture], [Isadmitted], [ctid]) VALUES (@Pid, @name, @email, @date, @Picture, @Isadmitted, @ctid)" SelectCommand="SELECT * FROM [patient]" UpdateCommand="UPDATE [patient] SET [name] = @name, [email] = @email, [date] = @date, [Picture] = @Picture, [Isadmitted] = @Isadmitted, [ctid] = @ctid WHERE [Pid] = @Pid">
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
    <a class=" text-right" href="PatinetsView.aspx">Back to the list</a>
    <asp:ValidationSummary ID="ValidationSummary1"   ValidationGroup="Insert"  CssClass="text-danger text-center" runat="server" />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap-datepicker.js"></script>
  <script>
      $(document).ready(function () {
          $("input[name$='TextBox4']").datepicker({format:"dd-MM-yyyy"})
      })
  </script>

</asp:Content>
