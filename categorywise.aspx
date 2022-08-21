<%@ Page Title="" Language="C#" MasterPageFile="~/adminutility.master" AutoEventWireup="true" CodeFile="categorywise.aspx.cs" Inherits="categorywise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
        .auto-style2 {
            width: 353px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 115px; width: 372px">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Product Details View:" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Select Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="categ" DataValueField="categ" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [categ] FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
             <td>
                 <asp:Button ID="Button3" runat="server" Text="View" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" Width="69px" />
             </td>
             <td>
                 <asp:Button ID="Button4" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
             </td>
         </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="982px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="categ" HeaderText="categ" SortExpression="categ" />
                        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="ptype" HeaderText="ptype" SortExpression="ptype" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="proprice" HeaderText="proprice" SortExpression="proprice" />
                        <asp:BoundField DataField="purdate" HeaderText="purdate" SortExpression="purdate" />
                        <asp:BoundField DataField="purmonth" HeaderText="purmonth" SortExpression="purmonth" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [datasetdet] WHERE ([categ] = @categ)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="categ" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <div style="background-color: #666666"></div>
    <table style="width: 741px">
        <tr>
            <td class="auto-style2" style="color: #FF0000">
                Gender Wise 
                Chart</td>
            <td style="color: #FF0000"></td>
            <td class="auto-style1" style="color: #FF0000">
                Month Wise
                Chart</td>
        </tr>
        <tr>
            <td class="auto-style2" style="vertical-align: top">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" BackColor="DarkCyan">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="gender" YValueMembers="count"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [genderwise]"></asp:SqlDataSource>
            </td>
            <td></td>
            <td class="auto-style1" style="vertical-align: top">
                <asp:Chart ID="Chart2" runat="server" BackColor="Violet" DataSourceID="SqlDataSource4">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="monname" YValueMembers="count"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Interval="1">
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [monthwise]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

