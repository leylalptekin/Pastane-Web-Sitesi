using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MagazaSaat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource vt = Baglan.Sec("select * from magazasaat order by id");
        RptGunler.DataSource = vt;
        RptGunler.DataBind();
    }
}