<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="amagazaSaat.aspx.cs" Inherits="admin_MagazaSaat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <a href="amagazaSaatEkle.aspx" class="btn btn-primary">Yeni Mağaza Saati Ekle</a>
    <h2 class="sub-header">Mağaza Saatleri</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Günler</th>
                    <th>Saatler</th>
                    <th>İşlemler</th>
                </tr>
            </thead>
            <tbody>

                <asp:Repeater ID="RptGunler" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("gun") %></td>
                            <td><%# Eval("saat") %></td>
                            <td>
                                <a href="amagazaSaatDuzenle.aspx?veri=<%# Eval("id") %>">
                                    <img src="image/duzenle.png" /></a> &nbsp &nbsp

                                    <a data-toggle="modal" href="#" data-target="#myModal<%# Eval("id") %>">
                                        <img src="image/sil.png" /></a>
                                <!-- Button trigger modal -->


                                <!-- Modal -->
                                <div class="modal fade" id="myModal<%# Eval("id") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Mağaza saat sil</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h3><%# Eval("gun") %> bilgisini silmek istediğinize emin misiniz?</h3>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Vazgeç</button>
                                                <a href="amagazaSaatSil.aspx?veri=<%# Eval("id") %>" class="btn btn-danger">Sil</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </tbody>
        </table>

    </div>
</asp:Content>

