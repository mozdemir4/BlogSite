<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriGuncelle.aspx.cs" Inherits="BlogSitesi.admin.kategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            background-color: #669999;
        }
        .auto-style3 {
            width: 191px;
            background-color: #669999;
        }
        .auto-style5 {
            width: 191px;
            height: 24px;
            color: #FFFFFF;
            background-color: #669999;
            text-align: right;
        }
        .auto-style10 {
            width: 191px;
            height: 21px;
            background-color: #669999;
        }
        .auto-style11 {
            width: 191px;
            color: #FFFFFF;
            background-color: #669999;
            text-align: right;
        }
        .auto-style12 {
            border: 1px dotted #2a595c;
        }
        .auto-style13 {
            height: 21px;
            background-color: #669999;
            width: 261px;
        }
        .auto-style14 {
            width: 261px;
        }
        .auto-style15 {
            height: 24px;
            text-align: left;
            width: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right">Kategori Adı:</td>
            <td class="auto-style14">
                <asp:TextBox ID="tbxKAd" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right">Sırası:</td>
            <td class="auto-style14">
                <asp:TextBox ID="tbxKSira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right">Adeti:</td>
            <td class="auto-style14">
                <asp:TextBox ID="tbxKAdet" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align: right">Resimi:</td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style12" Height="25px" Width="251px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="Button1" runat="server" CssClass="buttonGorsel" Text="Güncelle" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
