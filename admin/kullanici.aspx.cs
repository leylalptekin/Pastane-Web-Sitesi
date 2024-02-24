using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_urunler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlDataSource user = Baglan.Sec("select * from kullanici");
            rptKullanici.DataSource = user;
            rptKullanici.DataBind();
        }
    }
    protected void btnSil_Click(object sender, EventArgs e)
    {
      
    }
}