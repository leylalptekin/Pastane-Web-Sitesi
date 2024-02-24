using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MPAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["oturum"] == "56789")
        {
            ltrKullanici.Text = Session["kadi"].ToString();


            //ltrKadi.Text = "Merhaba " + Session["kadi"];

            string urlAdresi = Request.RawUrl.ToLower();
            string sinif = "active";

            if (urlAdresi == "/admin/default.aspx" || urlAdresi == "/admin/")
            {
                anasayfa.Attributes["class"] = sinif;

            }

            else if (urlAdresi == "/admin/ahakkimda.aspx")
            {
                hakkimda.Attributes["class"] = sinif;

            }
            else if (urlAdresi == "/admin/kullanici.aspx")
            {
                kullanici.Attributes["class"] = sinif;

            }
            else if (urlAdresi == "/admin/amagazasaat.aspx")
            {
                magazaSaat.Attributes["class"] = sinif;

            }
            else if (urlAdresi == "/admin/amagaza.aspx")
            {
                magaza.Attributes["class"] = sinif;

            }
            else if (urlAdresi == "/admin/aurunler.aspx" || urlAdresi == "/admin/aurunekle.aspx")
            {
                aurunler.Attributes["class"] = sinif;

            }
            else if (urlAdresi == "/admin/ailetisimformu.aspx")
            {
                ailetisimFormu.Attributes["class"] = sinif;

            }
            else if (urlAdresi == "/admin/akategori.aspx")
            {
                kategori.Attributes["class"] = sinif;

            }
      
        }
        else
        {
            Response.Redirect("login.aspx");


        }
    }
    protected void LBtnCikis_Click(object sender, EventArgs e)
    {
        Session.Remove("oturum"); //Çıkış butonuna basılınca oturumu sonlandırıyoruz.
        if (Request.Cookies["cerez"] != null) //eğer beni hatırla seçilmiş ise çerezi kaldırmak lazım
        {
            Response.Cookies["cerez"].Expires = DateTime.Now.AddDays(-1);
            //çerezin geçerliliğini eksi değer vererek sonlandırıyoruz.
        }
        Response.Redirect("Login.aspx"); //giriş sayfasına geri dönüyoruz.
    }
}
