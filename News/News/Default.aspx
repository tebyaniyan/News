<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
	<title>اخبار</title>
</head>
<body dir="rtl">
    <form id="form1" runat="server">
    <div class="footer">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" BorderStyle="None" Height="16px" Width="204px">
            <Columns>
                <asp:TemplateField HeaderText="آخرین اخبار">
                    <ItemTemplate>
                        <a href="<%# Eval("Link") %>"><%# Eval("Topic") %></a>
                    </ItemTemplate>
                    <ControlStyle BorderStyle="None" />
                    <FooterStyle BorderStyle="None" />
                    <HeaderStyle BorderStyle="None" />
                    <ItemStyle BorderStyle="None" Wrap="True" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BorderStyle="Solid" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
