using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MagazaSaatEkle : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString.Get("veri");
            SqlDataSource magazasaat = Baglan.Sec("select * from magazasaat where id=@p1");
            magazasaat.SelectParameters.Add("p1", id);

            DataView veri = (DataView)magazasaat.Select(DataSourceSelectArguments.Empty);
            TxtGun.Text = veri[0].Row["gun"].ToString();
            TxtSaat.Text = veri[0].Row["saat"].ToString();
            lblID.Text = veri[0].Row["id"].ToString();
        }


    }

    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("amagazasaat.aspx");
    }
    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlDataSource duzenle = Baglan.Duzenle("update magazasaat set gun=@p1, saat=@p2 where id=@p3");
        duzenle.UpdateParameters.Add("p1", TxtGun.Text);
        duzenle.UpdateParameters.Add("p2", TxtSaat.Text);
        duzenle.UpdateParameters.Add("p3", lblID.Text);
        duzenle.Update();

        Response.Redirect("amagazasaat.aspx");
    }


}