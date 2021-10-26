<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="BlogSitesi.admin.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 183px;
        }
        .auto-style5 {
            width: 183px;
            text-align: right;
        }
      
        .auto-style6 {
            color: #66FFCC;
            font-size:22pt;
        }
        .auto-style7 {
            font-weight: bold;
            cursor:pointer;
        }
      
        .auto-style8 {
            font-weight: bold;
            background-color: #2A595A;
        }
      
      
      
       
        .auto-style9 {
            color: #FFFFFF;
            font-size: large;
            text-align: center;
        }
        .auto-style10 {
            width: 80px;
            height: 64px;
        }
        .auto-style11 {
            color: #FFFFFF;
            width: 219px;
            font-size: large;
        }
        .auto-style13 {
            color: #FFFFFF;
            width: 211px;
            font-size: large;
            text-align: center;
        }
        .auto-style14 {
            color: #FFFFFF;
            font-size: large;
            width: 286px;
        }
        .auto-style15 {
            color: #FFFFFF;
            font-size: large;
            width: 172px;
        }
        .auto-style16 {
            text-align: center;
        }
      
      
      
       
        .auto-style17 {
            width: 150px;
            height: 25px;
            border: 1px dotted #2a595c;
            color: #669999;
        }
      
      
      
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:40px;;background-color:#2a595a; color:#00FFFF; font-weight:bolder; text-align:center;">
          
            <strong>
            <asp:Button ID="btnAc" runat="server" Text="Panel Aç" CssClass="auto-style7" Height="30px" OnClick="btnAc_Click" />
            </strong>&nbsp;<strong><asp:Button ID="btnKapa" runat="server" Text="Panel Kapat" CssClass="auto-style7" Height="30px" OnClick="btnKapa_Click" />
            </strong>&nbsp;<span class="auto-style6">Kategori Ekleme Paneli</span>

        </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#669999">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Adı:</strong></td>
                    <td>
                        <asp:TextBox ID="tbxKAD" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Sırası:</strong></td>
                    <td>
                        <asp:TextBox ID="tbxKSIRA" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Resimi:</strong></td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style17" Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td>
                        <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="buttonGorsel" Height="27px" OnClick="Button1_Click" Text="Ekle" Width="129px" />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div>
        <div style="height:40px;padding-top:10px;padding-left:50px;background-color:#2a595a; color:#00FFFF; font-weight:bolder; " class="auto-style16">
          
            <strong>
            <asp:Button ID="Button2" runat="server" Text="Panel Aç" CssClass="auto-style7" Height="30px" OnClick="Button2_Click"/>
            </strong>&nbsp;<strong><asp:Button ID="Button3" runat="server" Text="Panel Kapat" CssClass="auto-style7" Height="30px" OnClick="Button3_Click"  />
            </strong>&nbsp;<span class="auto-style6">Kategori Güncelleme Paneli</span>

        </div>
        <asp:Panel ID="Panel2" runat="server" BackColor="#669999">
            <asp:DataList ID="DataList1" runat="server" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style11"><strong>Kategori Adı:</strong></td>
                            <td class="auto-style13"><strong>Güncelle</strong></td>
                            <td class="auto-style9"><strong>&nbsp;&nbsp;&nbsp; Sil</strong></td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style14">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                            </td>
                            <td class="auto-style15">
                                <a href="kategoriGuncelle.aspx?kategoriid=<%#Eval("kategoriID") %>"><img class="auto-style10" src="tema/update.jpg" /></a>
                            </td>
                            <td class="auto-style9">
                                <a href="kategoriler.aspx?kategoriid=<%# Eval("kategoriID") %>&islem=sil"><img class="auto-style10" src="tema/delete.png" /></a>
                            </td>
                        </tr>
                        <tr>
                           
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
          
        </asp:Panel>
    </div>
    </asp:Content>
