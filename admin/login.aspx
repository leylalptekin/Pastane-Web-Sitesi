<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap4.min.css" rel="stylesheet" />
    <title>Giriş</title>
    <style>
      .kutu{ margin-top:50px}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row align-content-center justify-content-center">
            <div class="col-md-3 kutu">
                <h2 class="text-center">Giriş Ekranı</h2>

                <table class="table">
                    <tr>

                        <td>

                            <asp:TextBox ID="txtKadi" class="form-control" placeholder="Kullanıcı adı" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKadi" CssClass="text-danger" Display="Dynamic" ErrorMessage="Kullanıcı adı giriniz."></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:TextBox ID="txtParola" class="form-control" placeholder="Parola" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtParola" CssClass="text-danger" Display="Dynamic" ErrorMessage="Parola giriniz."></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <label>
                                <asp:CheckBox ID="ckbHatirla" runat="server" />
                                Beni hatırla
                            </label>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Button class="btn btn-lg btn-primary btn-block" ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" />
                            <asp:Label ID="lblHata" runat="server" CssClass="text-danger"></asp:Label>
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </form>
</body>
</html>
