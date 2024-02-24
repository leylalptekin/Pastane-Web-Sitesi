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
        SqlDataSource magaza = Baglan.Sec("select * from magaza");
        rptMagaza.DataSource = magaza;
        rptMagaza.DataBind();
    }
}