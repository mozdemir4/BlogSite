<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumCevap.aspx.cs" Inherits="BlogSitesi.admin.yorumCevap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 197px;
            text-align: right;
            background-color: #669999;
        }
        .auto-style4 {
            background-color: #669999;
        }
        .auto-style5 {
            width: 197px;
            text-align: right;
            color: #FFFFFF;
            background-color: #669999;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Admin Ad:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxGorsel" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yorum:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxGorsel" Height="125px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Cevabı Gönder" CssClass="buttonGorsel" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
