using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["oturum"] == "56789")
        {
            Response.Redirect("default.aspx");
        }
        HttpCookie cerezOku = Request.Cookies["cerez"];
        if (cerezOku != null && cerezOku["11U"] == "Bilisim")
        {
            Session["oturum"] = "56789"; //oturum açıldı
            Session["kadi"] = cerezOku["kadi"];
            Response.Redirect("default.aspx");
        }
    }
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        HttpCookie cerezYaz = new HttpCookie("cerez");
        string kAdi = txtKadi.Text;
        string parola = txtParola.Text;
        SqlDataSource kullanici = Baglan.Sec("select * from kullanici where Kadi=@p1 and Parola=@p2");
        kullanici.SelectParameters.Add("p1", kAdi);
        kullanici.SelectParameters.Add("p2", parola);

        if (Baglan.SatirSayisi(kullanici) > 0)
        {
            Session["oturum"] = "56789"; //oturum açıldı
            Session["kadi"] = kAdi;
            if (ckbHatirla.Checked == true)
            {
                cerezYaz["11U"] = "Bilisim";
                cerezYaz["kadi"] = kAdi;
                cerezYaz.Expires = DateTime.Now.AddDays(17);
                Response.Cookies.Add(cerezYaz);

            }

            Response.Redirect("default.aspx"); //sayfa yönlendirildi
        }
        else
        {
            lblHata.Text = "Kullanıcı adı veya parola geçersiz";
        }
    }
}