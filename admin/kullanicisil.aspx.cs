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
            string userid = Request.QueryString.Get("id");
            SqlDataSource sil = Baglan.Sil("delete from kullanici where id=@p1");
            sil.DeleteParameters.Add("p1", userid);
            sil.Delete();
            Response.Redirect("kullanici.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
            
        }
        
    }
}