using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_aurunekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnEkle_Click(object sender, EventArgs e)
    {


        SqlDataSource ekle = Baglan.Ekle("INSERT INTO kullanici (Kadi, Parola) VALUES (@p1, @p2)");
        ekle.InsertParameters.Add("p1", txtKAdi.Text);
        ekle.InsertParameters.Add("p2", txtParola.Text);
       
                     
        ekle.Insert();
        ltrmesaj.Text = "<script>AdreseGit('kullanici.aspx');</script>";
    }

    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("kullanici.aspx");
    }

}
