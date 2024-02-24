using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ailetisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource iletisim = Baglan.Sec("select * from iletisim order by id desc");

        Session["sayfa"] = Baglan.Tablo(iletisim);
        DataTable dt = new DataTable();
        dt = (DataTable)Session["sayfa"];

        sayfalama.DataSource = dt.DefaultView;
        sayfalama.BindToControl = rptIletisim;
        rptIletisim.DataSource = sayfalama.DataSourcePaged;
        rptIletisim.DataBind();
    }
}