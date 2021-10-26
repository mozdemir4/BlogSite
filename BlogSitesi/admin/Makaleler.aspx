<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Makaleler.aspx.cs" Inherits="BlogSitesi.admin.Makaleler" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            margin:15px 0 0 0;
        }

        .auto-style3 {
            background-color: #3A5F62;
        }

        .auto-style4 {
            color: #00FFFF;
            font-size: x-large;
        }

        .auto-style5 {
            text-align: center;
        }

        .auto-style6 {
            text-align: left;
        }

        .auto-style7 {
            color: #FFFFFF;
        }

        .auto-style8 {
            width: 225px;
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
            width: 225px;
            height: 21px;
        }

        .auto-style11 {
            height: 21px;
        }

        .auto-style12 {
            background-color: #FFFFFF;
            width: 100px;
            height: 30px;
            line-height: 30px;
            cursor: pointer;
        }

        .auto-style13 {
            text-align: center;
            background-color: #3A5F62;
            line-height: 30px;
        }

        .auto-style14 {
            background-color: #669999;
        }

        .auto-style15 {
            width: 80px;
            height: 64px;
        }

        .auto-style17 {
            width: 311px;
            font-size: x-large;
            text-align: right;
        }

        .auto-style18 {
            width: 212px;
            font-size: x-large;
        }

        .auto-style19 {
            font-size: x-large;
            padding-right: 15px;
        }

        .auto-style20 {
            width: 80px;
            height: 64px;
            margin-left: 0;
        }

        .auto-style21 {
            width: 265px;
            text-align: right;
        }

        .auto-style22 {
            width: 259px;
        }

        .auto-style23 {
            text-align: right;
            padding-right: 15px;
        }
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            width: 226px;
        }
        .auto-style26 {
            width: 226px;
            color: #FFFFFF;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style2">
        <tbody class="auto-style3">
            <tr>
                <td class="auto-style5" style="color: #00FFFF">&nbsp;&nbsp;
                                 
            <strong>
                <asp:Button ID="btnAc" runat="server" Text="Panel Aç" Height="30px" OnClick="btnAc_Click" CssClass="auto-style12" />
                &nbsp;<asp:Button ID="btnKapa" runat="server" Text="Panel Kapat" Height="30px" OnClick="btnKapa_Click" CssClass="auto-style12" />
            </strong>&nbsp; <span class="auto-style4">Makale Ekleme Paneli</span>
                    <asp:Panel ID="Panel1" runat="server" BackColor="#669999" CssClass="auto-style7">
                        <div class="auto-style6">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style8" style="text-align: right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style10" style="text-align: right">Kategori:</td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="text-align: right">Başlık:</td>
                                    <td>
                                        <asp:TextBox ID="tbxMBaslik" runat="server" CssClass="textboxGorsel" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="text-align: right">Özet:</td>
                                    <td>
                                        <asp:TextBox ID="tbxMOzet" runat="server" CssClass="textboxGorsel" Height="175px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="text-align: right">İçerik:</td>
                                    <td>
                                        <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="text-align: right">Resim:</td>
                                    <td>
                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textboxGorsel" Width="250px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="text-align: right">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Text="Ekle" OnClick="Button1_Click" />
                                        &nbsp;
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                    </asp:Panel>
                </td>
    </table>
  
   
        <table class="auto-style2">
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style12" Text="Panel Aç" OnClick="Button2_Click" />
                    &nbsp;<asp:Button ID="Button3" runat="server" CssClass="auto-style12" Text="Panel Kapat" OnClick="Button3_Click" />
                    &nbsp;<span class="auto-style4">Makale Düzenleme Paneli</span></td>
            </tr>
        </table>

        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14">
            <asp:DataList ID="DataList1" runat="server" Width="703px">
                <HeaderTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style18">Makale Adı:</td>
                            <td class="auto-style17">Güncelle</td>
                            <td class="auto-style23"><span class="auto-style19">Sil&nbsp; </span></td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style22">&nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style21">
                                <a href="makaleGuncelle.aspx?makaleid=<%#Eval("makaleID") %>">
                                    <img class="auto-style20" src="tema/update.jpg" /></a>
                            </td>
                            <td class="auto-style23">
                                <a href="Makaleler.aspx?makaleid=<%#Eval("makaleID") %>&islem=sil&">
                                    <img class="auto-style15" src="tema/delete.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
      <div>

        <table class="auto-style2">
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" CssClass="auto-style12" Text="Panel Aç" OnClick="Button4_Click" />
                    &nbsp;<asp:Button ID="Button5" runat="server" CssClass="auto-style12" Text="Panel Kapat" OnClick="Button5_Click"  />
                    &nbsp;<span class="auto-style4">&nbsp;&nbsp;&nbsp; Makale Dosya Ekleme Paneli</span></td>
            </tr>
        </table>
        </div>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14">
        <table class="auto-style24">
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">Dosya Seç:</td>
                <td>
                    <asp:FileUpload ID="FileUpload2" runat="server" Height="26px" Width="216px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDosya" runat="server" CssClass="auto-style9" OnClick="btnDosya_Click" Text="Ekle" />
                    &nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
