<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="BlogSitesi.admin.Duyurular" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            padding: 10px 0 10px 0;
            background-color: #3A5F62;
            height: 30px;
        }

        .auto-style3 {
            color: #66FFFF;
            font-size: x-large;
            line-height: 30px;
        }

        .auto-style4 {
            background-color: #669999;
        }

        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            width: 194px;
            height: 21px;
        }

        .auto-style7 {
            width: 194px;
            color: #FFFFFF;
        }

        .auto-style8 {
            height: 21px;
        }

        .auto-style9 {
            background-color: #2a595c;
            width: 100px;
            height: 30px;
            line-height: 30px;
            cursor: pointer;
            color: #FFFFFF;
        }

        .auto-style10 {
            background-color: #FFFFFF;
            width: 100px;
            height: 30px;
            line-height: 30px;
            cursor: pointer;
        }

        .auto-style11 {
            text-align: center;
            background-color: #3A5F62;
            padding: 10px 0 10px 10px;
        }

        .auto-style12 {
            color: #58FFFF;
            font-size: x-large;
        }

        .auto-style13 {
            width: 80px;
            height: 64px;
        }

        .auto-style14 {
            width: 303px;
        }

        .auto-style15 {
            width: 318px;
            color: #FFFFFF;
        }

        .auto-style16 {
            width: 206px;
        }

        .auto-style17 {
            width: 80px;
            height: 64px;
            margin-left: 19;
        }

        .auto-style18 {
            width: 221px;
            color: #FFFFFF;
        }
        .auto-style19 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        
        <strong>
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Panel Aç" Width="91px" OnClick="Button1_Click" CssClass="auto-style10" />
        </strong>&nbsp;<strong><asp:Button ID="Button2" runat="server" Height="31px" Width="91px" Text="Panel Kapat" OnClick="Button2_Click" CssClass="auto-style10" />
        </strong>&nbsp;<span class="auto-style3">Duyuru Ekleme Paneli</span>
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: right">Başlık:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: right">İçerik:</td>
                    <td>
                        <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style9" OnClick="Button3_Click" Text="Ekle" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div style="height: 15px"></div>
    <div class="auto-style11">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Height="30px" Text="Panel Aç" Width="91px" CssClass="auto-style10" OnClick="Button4_Click" />
            &nbsp;<asp:Button ID="Button5" runat="server" Height="31px" Width="91px" Text="Panel Kapat" CssClass="auto-style10" OnClick="Button5_Click" />
            &nbsp;</strong><span class="auto-style12">Duyuru Düzenleme Paneli</span>
    </div>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style4">

        <asp:DataList ID="DataList1" runat="server" Width="698px">
            <HeaderTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style15">Duyuru Başlık</td>
                        <td class="auto-style18">Güncelle</td>
                        <td class="auto-style19">Sil</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style14">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyuruBaslik") %>'></asp:Literal>
                        </td>
                        <td class="auto-style16">
                            <a href="duyuruGuncelle.aspx?duyuruid=<%#Eval("duyuruID") %>"><img class="auto-style13" src="tema/update.jpg" /></a>
                        </td>
                        <td>
                            <a href="Duyurular.aspx?duyuruid=<%#Eval("duyuruID") %>&eylem=sil"><img class="auto-style17" src="tema/delete.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
