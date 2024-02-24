using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class urunler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlDataSource urunler = Baglan.Sec("select * from urunler where aktif=1 and id=@p1");
        urunler.SelectParameters.Add("p1", Page.RouteData.Values["urun_id"].ToString());
        rptUrunler.DataSource = urunler;
        rptUrunler.DataBind();
        Title = "aa";
    }
}