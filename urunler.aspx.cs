using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class urunler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource kategori = Baglan.Sec("select * from urunkategori order by ksira desc");
        rptKategoriler.DataSource = kategori;
        rptKategoriler.DataBind();

       

        
        if(Page.RouteData.Values["kategori_id"]!=null)
        {
           

            SqlDataSource urunler = Baglan.Sec("select * from urunler inner join urunkategori on urunler.katid= urunkategori.kid where kid=@p1 and aktif=1 order by urunler.sira desc");
            urunler.SelectParameters.Add("p1", Page.RouteData.Values["kategori_id"].ToString());
            rptUrunler.DataSource = urunler;
            rptUrunler.DataBind();

            DataView veri = (DataView)urunler.Select(DataSourceSelectArguments.Empty);
            if (veri.Count>0)
            lblKategori.Text = veri[0].Row["kbaslik"] + " Kategorisi";

        }
        else
        {
            SqlDataSource urunler = Baglan.Sec("select * from urunler where aktif=1  order by sira desc");
          
            rptUrunler.DataSource = urunler;
            rptUrunler.DataBind();
            lblKategori.Text = "";
        }

    }
}