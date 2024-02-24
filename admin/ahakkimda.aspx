<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="ahakkimda.aspx.cs" Inherits="admin_urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ürünler</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
 

        <h2 class="sub-header">HAKKIMDA</h2>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Foto</th>
                        <th>Başlık</th>
                        <th>Alt Başlık</th>
                        <th>Açıklama</th>
                        <th>İşlemler</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptHakkimda" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td> <img width="150" src="../img/<%# Eval("foto") %>" /> </td>
                                <td><%# Eval("baslik") %></td>
                                <td><%# Eval("altbaslik") %></td>
                                <td><%# Eval("aciklama") %></td>
                                   
                                
                                <td>
                                    <a href="ahakkimdaDuzenle.aspx?urunNo=<%# Eval("id") %>">
                                        <img src="image/duzenle.png" /></a> &nbsp &nbsp
                                   
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>


                </tbody>
            </table>
        </div>
    
</asp:Content>

