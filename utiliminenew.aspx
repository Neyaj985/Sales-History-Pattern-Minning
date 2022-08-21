<%@ Page Title="" Language="C#" MasterPageFile="~/adminutility.master" AutoEventWireup="true" CodeFile="utiliminenew.aspx.cs" Inherits="utiliminenew" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 21px;
        }
        .auto-style2 {
            width: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Process" OnClick="Button1_Click" Width="80px" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
    
    <asp:Panel ID="Panel1" runat="server" Visible="false" Height="222px">
        <table style="height: 206px; width: 1060px">
            <tr>
                <td>
                    PRICE WISE LIST
                </td>
                <td class="auto-style2"></td>
                <td>
                    QUANTITY WISE LIST
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="331px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                            <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                            <asp:BoundField DataField="totprice" HeaderText="totprice" SortExpression="totprice" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [pricewise] ORDER BY [totprice] DESC"></asp:SqlDataSource>
                </td>
                <td class="auto-style2"></td>
                <td style="vertical-align: top">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="331px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                            <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [quantitywise] ORDER BY [quantity] DESC"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    CUSTOMER PURCHASED PRICE CHART
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource3" Width="994px" BackColor="Silver" Palette="Berry">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="cusid" YValueMembers="totprice"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY Title="Purchased Amount">
                                </AxisY>
                                <AxisX Interval="1" Title="Customet ID">
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [cusid], [totprice] FROM [pricewise]"></asp:SqlDataSource>
                </td>
            </tr>
             <tr>
                <td>
                    QUANTITY PURCHASED CHART
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart2" runat="server" BackColor="Silver" DataSourceID="SqlDataSource4" Palette="EarthTones" Width="994px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="cusid" YValueMembers="quantity"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY Title="Quantity Purchased">
                                </AxisY>
                                <AxisX Interval="1" Title="Customer ID">
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [cusid], [quantity] FROM [quantitywise]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

