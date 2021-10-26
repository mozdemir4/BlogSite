<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleGuncelle.aspx.cs" Inherits="BlogSitesi.admin.makaleGuncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            background-color:#669999
        }
        .auto-style3 {
            width: 256px;
            height: 21px;
        }
        .auto-style4 {
            width: 256px;
            text-align: right;
            color: #FFFFFF;
        }
        .auto-style5 {
            width: 256px;
            text-align: right;
            color: #FFFFFF;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
        .auto-style7 {
            border: 1px dotted #2a595c;
        }
        .auto-style8 {
            background-color: #2a595c;
            width: 100px;
            height: 30px;
            line-height: 30px;
            cursor: pointer;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Başlık</strong></td>
            <td>
                <asp:TextBox ID="tbxMBaslik" runat="server" CssClass="textboxGorsel" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Özet:</strong></td>
            <td>
                <asp:TextBox ID="tbxMOzet" runat="server" CssClass="textboxGorsel" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>İçerik:</strong></td>
            <td><CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Resim:</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style7" Width="201px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Yorum Sayısı:</strong></td>
            <td>
                <asp:TextBox ID="tbxMYorum" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Güncelle" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
