using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_aurunSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["oturum"] == "56789")
        {
            string id = Request.QueryString.Get("veri");
            SqlDataSource urunSil = Baglan.Sil("delete from iletisim where id=@p1");
            urunSil.DeleteParameters.Add("p1", id);
            urunSil.Delete();
            Response.Redirect("ailetisimFormu.aspx");
        }
        else
        {
            Response.Redirect("/admin/login.aspx");
            
        }
        
    }
}