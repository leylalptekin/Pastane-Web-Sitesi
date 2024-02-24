using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_magazaSaatSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["oturum"] == "56789")
        {
            string veri = Request.QueryString.Get("veri");
            SqlDataSource sil = Baglan.Sil("delete from magazasaat where id=@p1");
            sil.DeleteParameters.Add("p1",veri);
            sil.Delete();
            Response.Redirect("/admin/amagazaSaat.aspx");
        }
        else
        {
            Response.Redirect("/admin/login.aspx");
        }
    }
}