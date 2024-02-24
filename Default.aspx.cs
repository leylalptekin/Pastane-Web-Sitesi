using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource sorgu = Baglan.Sec("select * from anasayfa"); /*tüm kayıtları anasayfa tablosundan al*/
        rptAnasayfa.DataSource = sorgu;
        rptAnasayfa.DataBind(); /*anasayfa tablosu repeater'a bağlandı. ordada eval ile alan içerikleri alınacak*/
             

    }
}