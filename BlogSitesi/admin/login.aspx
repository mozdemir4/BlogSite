<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BlogSitesi.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 126px;
            text-align: center;
        }

        * {
            margin: 0;
            padding: 0;
            border: 0;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FF6666;
        }
    </style>
</head>
<body style="background-color: #e1e1e1; height: 127px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-color: #2a595c; color: #fff">
            <p class="auto-style3"><strong>Kullanıcı Adı:</strong></p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <p class="auto-style3"><strong>Şifre</strong></p>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
           
            <p style="margin:10px 0 0 0"><asp:Button ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" /></p>
            <p>
                <asp:Label ID="lbl_info" runat="server" Text="" CssClass="auto-style4"></asp:Label></p>
        </div>
    </form>
</body>
</html>
