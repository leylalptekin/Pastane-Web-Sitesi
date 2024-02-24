using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGonder_Click(object sender, EventArgs e)
    {
        
        SqlDataSource ekle = Baglan.Ekle("insert into iletisim (adSoyad, mail, mesaj) values (@p1,@p2,@p3)");
        ekle.InsertParameters.Add("p1", txtAdSoyad.Text);
        ekle.InsertParameters.Add("p2", txtMail.Text);
        ekle.InsertParameters.Add("p3", txtMesaj.Text);
        ekle.Insert();

        txtAdSoyad.Text = "";
        txtMail.Text = "";
        txtMesaj.Text = "";
        lblSonuc.Text = "<script>swal('Mesajınız alınmıştır.', 'En kısa sürede sizinle iletişime geçilecektir.', 'success',{ button: 'Tamam',});</script>";

    }
}