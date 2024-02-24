using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class magza : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource sorgu = Baglan.Sec("select * from magazasaat"); /*tüm kayıtları anasayfa tablosundan al*/
        rptSaat.DataSource = sorgu;
        rptSaat.DataBind();

        SqlDataSource sorgu2 = Baglan.Sec("select * from magaza"); /*tüm kayıtları anasayfa tablosundan al*/
        rptAlt.DataSource = sorgu2;
        rptUst.DataSource = sorgu2;
        rptAlt.DataBind();
        rptUst.DataBind();

    }
}