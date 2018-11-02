﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div dir="rtl">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            EnableModelValidation="True" GridLines="None">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td rowspan="2" width="10%"><img src="images/<%#Eval("ImageF")%>" width="100" height="100"></td>
                                <td><a href="" style="text-decoration:none; color:Red"><h2><%#Eval("TopicF")%></h2></a></td>
                            </tr>
                            <tr>
                                <td><p><%#Eval("TextF")%></p></td>
                            </tr>
                        </table>
                        <hr color="orange">
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>