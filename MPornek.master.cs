using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MPornek : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
           

           string urlAdresi = Request.RawUrl.ToLower();
           string sinif = "nav-item active px-lg-4";

           if (urlAdresi == "/anasayfa" || urlAdresi == "/")
           {
               anasayfa.Attributes["class"] = sinif;

           }
           else if (urlAdresi == "/hakkimda")
           {
               hakkimda.Attributes["class"] = sinif;

           }
        
           else if (urlAdresi == "/magaza")
           {
               magaza.Attributes["class"] = sinif;

           }
           else if (urlAdresi == "/iletisim")
           {
               iletisim.Attributes["class"] = sinif;

           }
           else if (urlAdresi.Contains("/urun") || urlAdresi.Contains("/kategori"))
           {
               urunler.Attributes["class"] = sinif;

           }
        
        ltrYil.Text=DateTime.Now.Year.ToString();
        
        
        
       
    }
    protected void btnCikis_Click(object sender, EventArgs e)
    {
        Session.Remove("oturum");
        if (Request.Cookies["cerez"]!=null)
        {
            Response.Cookies["cerez"].Expires = DateTime.Now.AddDays(-1);
        }
        
        Response.Redirect("giris");
    }
}
