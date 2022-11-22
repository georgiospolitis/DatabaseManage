<%@ Page Title="Advanced DBase Issues" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Companies.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><%: Title %>.</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="4">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" ReadOnly="True" SortExpression="CompanyId" />
            <asp:BoundField DataField="Name" HeaderText="Επωνυμία" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Περιγραφή" SortExpression="Description" />
            <asp:TemplateField> 
                <ItemTemplate> 
                   <asp:LinkButton ID="LinkButton1" Runat="server"  
                        OnClientClick="return confirm('Είσαι σίγουρος;');"  
                      CommandName="Delete">Διαγραφή</asp:LinkButton> 
                     </ItemTemplate> 
            </asp:TemplateField> 
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="Πρώτη" LastPageText="Τελευταία" NextPageText="Επόμενη" PreviousPageText="Προηγούμενη" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringComp %>" DeleteCommand="DELETE FROM [Company] WHERE [CompanyId] = @original_CompanyId AND [Name] = @original_Name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [Company] ([CompanyId], [Name], [Description]) VALUES (@CompanyId, @Name, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CompanyId], [Name], [Description] FROM [Company]" UpdateCommand="UPDATE [Company] SET [Name] = @Name, [Description] = @Description WHERE [CompanyId] = @original_CompanyId AND [Name] = @original_Name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CompanyId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CompanyId" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_CompanyId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>

