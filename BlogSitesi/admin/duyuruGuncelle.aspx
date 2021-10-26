<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyuruGuncelle.aspx.cs" Inherits="BlogSitesi.admin.duyuruGuncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            background-color: #669999;
        }
        .auto-style3 {
            text-align: right;
            color: #FFFFFF;
            width: 228px;
        }
        .auto-style4 {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Başlık:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>İçerik:</strong></td>
            <td>  <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
        </tr>
           <tr>
               <td class="auto-style4"></td>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="buttonGorsel" OnClick="Button1_Click" /></td>
           </tr>     
    </table>
</asp:Content>
