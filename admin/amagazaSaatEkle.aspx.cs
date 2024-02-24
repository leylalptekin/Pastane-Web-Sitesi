using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MagazaSaatEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnGunSaatEkle_Click(object sender, EventArgs e)
    {
        SqlDataSource vt = Baglan.Ekle("insert into magazasaat(gun,saat) values(@p1,@p2)");
        vt.InsertParameters.Add("@p1",TxtGun.Text);
        vt.InsertParameters.Add("@p2",TxtSaat.Text);
        vt.Insert();
        Response.Redirect("amagazaSaat.aspx");
    }
}