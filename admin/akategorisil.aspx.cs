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
            string kategoriid = Request.QueryString.Get("kategoriNo");
            SqlDataSource kategoriSil = Baglan.Sil("delete from urunkategori where kid=@p1");
            kategoriSil.DeleteParameters.Add("p1", kategoriid);
            kategoriSil.Delete();
            Response.Redirect("akategori.aspx");
        }
        else
        {
            Response.Redirect("/admin/login.aspx");
            
        }
        
    }
}