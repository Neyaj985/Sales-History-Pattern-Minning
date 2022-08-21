<%@ Page Title="" Language="C#" MasterPageFile="~/adminutility.master" AutoEventWireup="true" CodeFile="viewdataset.aspx.cs" Inherits="viewdataset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1157px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="Cus id" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="Name" SortExpression="cusname" />
                          <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="categ" HeaderText="Category" SortExpression="categ" />
                        <asp:BoundField DataField="pid" HeaderText="Product id" SortExpression="pid" />
                        <asp:BoundField DataField="pname" HeaderText="Product name" SortExpression="pname" />
                        <asp:BoundField DataField="ptype" HeaderText="Type" SortExpression="ptype" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="proprice" HeaderText="Price" SortExpression="proprice" />
                          <asp:BoundField DataField="purdate" HeaderText="Purchase Date" SortExpression="purdate" />
                        <asp:BoundField DataField="purmonth" HeaderText="Month" SortExpression="purmonth" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

