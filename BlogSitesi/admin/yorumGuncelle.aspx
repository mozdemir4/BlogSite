<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumGuncelle.aspx.cs" Inherits="BlogSitesi.admin.yorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 235px;
            text-align: right;
            background-color: #669999;
        }
        .auto-style4 {
            background-color: #669999;
        }
        .auto-style5 {
            color: #FFFFFF;
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
            <td class="auto-style3">Gönderen Kişi:</td>
            <td class="auto-style4">
                <asp:TextBox ID="tbxAd" runat="server" CssClass="textboxGorsel" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">İçerik:</td>
            <td class="auto-style4">
                <asp:TextBox ID="tbxIcerik" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Onay:</td>
            <td class="auto-style4">
                <asp:CheckBox ID="CheckBox1" runat="server"  Text="Onayla" CssClass="auto-style5"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="buttonGorsel" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
