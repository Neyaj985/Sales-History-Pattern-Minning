<%@ Page Title="" Language="C#" MasterPageFile="~/adminutility.master" AutoEventWireup="true" CodeFile="utilitymining.aspx.cs" Inherits="utilitymining" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 185px;
        }
        .auto-style2 {
            width: 172px;
        }
        .auto-style3 {
            width: 250px;
        }
        .auto-style4 {
            width: 194px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 115px; width: 372px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Customerwise Details View:" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Select Cus Id"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cusid" DataValueField="cusid" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [cusid] FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="View" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" Width="67px" />
            </td>
            <td class="auto-style1">
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="798px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                        <asp:BoundField DataField="categ" HeaderText="categ" SortExpression="categ" />
                        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="ptype" HeaderText="ptype" SortExpression="ptype" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="proprice" HeaderText="proprice" SortExpression="proprice" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [datasetdet] WHERE ([cusid] = @cusid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="cusid" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
     <table style="height: 115px; width: 372px">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Product Details View:" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Select Product"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="pname" DataValueField="pname" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [pname] FROM [datasetdet]"></asp:SqlDataSource>
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="798px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                        <asp:BoundField DataField="categ" HeaderText="categ" SortExpression="categ" />
                        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="ptype" HeaderText="ptype" SortExpression="ptype" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="proprice" HeaderText="proprice" SortExpression="proprice" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [datasetdet] WHERE ([pname] = @pname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="pname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
     <table style="height: 115px; width: 371px">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Datewise Details View:" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Select Date"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropdate" runat="server" DataSourceID="SqlDataSource5" DataTextField="purdate" DataValueField="purdate" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [purdate] FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
             <td class="auto-style2">
                 <asp:Button ID="Button5" runat="server" Text="View" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" Width="69px" />
             </td>
             <td>
                 <asp:Button ID="Button6" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
             </td>
         </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="#333333" GridLines="None" Width="798px">
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
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [datasetdet] WHERE ([purdate] = @purdate)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dropdate" Name="purdate" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
     <table style="height: 115px; width: 424px">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Genderwise Purchase Details View:" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="Select Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource6" DataTextField="gender" DataValueField="gender" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [gender] FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
             <td class="auto-style3">
                 <asp:Button ID="Button7" runat="server" Text="View" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" Width="69px" />
             </td>
             <td>
                 <asp:Button ID="Button8" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
             </td>
         </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" CellPadding="4" ForeColor="#333333" GridLines="None" Width="798px">
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
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [datasetdet] WHERE ([gender] = @gender)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="gender" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
     <table style="height: 115px; width: 372px">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Text="Monthwise Details View:" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label10" runat="server" Text="Select Month"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource7" DataTextField="purmonth" DataValueField="purmonth" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [purmonth] FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
             <td class="auto-style4">
                 <asp:Button ID="Button9" runat="server" Text="View" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" Width="69px" />
             </td>
             <td>
                 <asp:Button ID="Button10" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
             </td>
         </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource10" ForeColor="#333333" GridLines="None" Width="798px">
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
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [datasetdet] WHERE ([purmonth] = @purmonth)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList4" Name="purmonth" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

