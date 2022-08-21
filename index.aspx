<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="promocode.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#DDDDDD">
    <form id="form1" runat="server">
    <div>
     <table bgcolor="#006600" 
            style="width: 1340px;">
            <tr>
                <td>

                </td>
            </tr>
        </table>
        <table bgcolor="#333333" 
            style="width: 1340px; height: 70px; font-size: x-large">
            <tr>
                <td align="center" style="color: #FFFFFF">
                   
                SALES HISTORY MINING FOR CUSTOMER LOYALTY PROGRAM</td>
            </tr>
        </table>
        <br />
        <br />
        <CENTER>
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="221px" ImageUrl="~/Images/login.png" Width="266px"></asp:Image>
                    </td>
                    <td>

              <fieldset style="height: 181px; width: 429px">
                            <legend>
                            Login
                            </legend>
                            <table style="height: 151px; width: 363px">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtusername" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" BackColor="#CCCCCC"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                                            Font-Names="Cambria" onclick="Button1_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                                            Font-Names="Cambria" />
                                    &nbsp;
                                        <asp:Label ID="lblack" runat="server" ForeColor="#CC0000" Text="Label" 
                                            Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        
                    </td>
                </tr>
            </table>
        </CENTER>
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="background-color: #006600; height: 8px;"></div>
    </form>
</body>
</html>
