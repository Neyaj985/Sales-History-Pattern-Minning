<%@ Page Title="" Language="C#" MasterPageFile="~/adminutility.master" AutoEventWireup="true" CodeFile="promocodegeneration.aspx.cs" Inherits="promocodegeneration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 481px;
        }
    </style>
    <script type="text/javascript" src="jquer.js">

    </script>
    <script type="text/javascript">
        function ShowProgress() {
            setTimeout(function () {
                var modal = $('<div />');
                modal.addClass("modal");
                $('body').append(modal);
                var loading = $(".loading");
                loading.show();
                var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
                var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
                loading.css({ top: top, left: left });
            }, 200);
        }
        $('form').live("submit", function () {
            ShowProgress();
        });
</script>
    <style type="text/css">
    .modal
    {
        position: fixed;
        top: 0;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family:Cambria;
        font-size: 10pt;
        border: 5px solid #67CFF5;
        width: 200px;
        height: 100px;
        display: none;
        position: fixed;
        background-color: White;
        z-index: 999;
    }
</style>
    <style type="text/css">
    .modal
    {
        position: fixed;
        top: 0;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family:Cambria;
        font-size: 10pt;
        border: 5px solid #67CFF5;
        width: 200px;
        height: 100px;
        display: none;
        position: fixed;
        background-color: White;
        z-index: 999;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="loading" align="center">
     Under Processing. Please wait.<br />
    <br />
    <img src="loader.gif" alt="" height="50px" width="50px" />
</div>
    <br />
    <div style="background-color: #9933FF">
            Promotion Code For Maximum Price Purchase and Maximum Quantity Purchase
   </div>
    <table style="height: 42px; width: 507px; background-color: #CCCCCC;">
        
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Generate Promotion Code"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Price wise generation" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Quantity wise generation" />
            </td>
        </tr>
    </table>
    <br />
    <div style="background-color: #FF6600">
            Promotion Code For Least Price Purchase and Least Quantity Purchase
   </div>
     <table style="height: 42px; width: 507px; background-color: #CCCCCC;">
        
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Generate Promotion Code"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Price wise generation" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Quantity wise generation" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Enter No  of Users"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnouser" runat="server" Width="59px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Generate" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Visible="false" Height="425px" Width="929px">
    <table>
        <tr>
            <td>
                Promo code For Top Price wise Purchase:
            </td>
            <td>
                Promo code For Maximum Quantity wise Purchase:
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                        <asp:BoundField DataField="totprice" HeaderText="totprice" SortExpression="totprice" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                        <asp:BoundField DataField="promocode" HeaderText="promocode" SortExpression="promocode" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [promoprice] WHERE ([status] = @status) ORDER BY [totprice] DESC ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="top" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                        <asp:BoundField DataField="promocode" HeaderText="promocode" SortExpression="promocode" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [promoquantity] WHERE ([status] = @status) ORDER BY [quantity] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="top" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
          <tr>
              <td class="auto-style1"></td>
          </tr>
        <tr>
            <td>
                Promo code For Least Price wise Purchase:
            </td>
            <td>
                Promo code For Minimum Quantity wise Purchase:
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                        <asp:BoundField DataField="totprice" HeaderText="totprice" SortExpression="totprice" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                        <asp:BoundField DataField="promocode" HeaderText="promocode" SortExpression="promocode" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [promoprice] WHERE ([status] = @status) ORDER BY [totprice]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="least" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
             <td style="vertical-align: top">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cusid" HeaderText="cusid" SortExpression="cusid" />
                        <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                        <asp:BoundField DataField="promocode" HeaderText="promocode" SortExpression="promocode" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [promoquantity] WHERE ([status] = @status) ORDER BY [quantity]">
                     <SelectParameters>
                         <asp:Parameter DefaultValue="least" Name="status" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
            </td>
        </tr>
      </table>
        <table style="width: 864px">
            <tr>
                <td class="auto-style2">

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Send Promo code"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine" Height="98px" Width="444px">Kindly use this PROMOTION CODE for your Purchase...</asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Inform customer" Font-Bold="True" Font-Names="Cambria" OnClick="Button2_Click" style="height: 26px" />
                </td>
                <td>
                    <asp:Label ID="lblack" runat="server" Text="Information Given!!!" Visible="False" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        </asp:Panel>
</asp:Content>

