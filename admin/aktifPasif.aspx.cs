using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static void AktifPasif(string id, string durum, string tablo)
    {
        if (tablo == "urunler")
        {
            SqlDataSource duzenle = Baglan.Duzenle("update urunler set aktif=@p1 where id=@p2");
            duzenle.UpdateParameters.Add("p1", durum);
            duzenle.UpdateParameters.Add("p2", id);
            duzenle.Update();

        }

    }
}