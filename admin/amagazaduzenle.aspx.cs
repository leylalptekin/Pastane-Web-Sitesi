using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_aurunekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataSource magaza = Baglan.Sec("select * from magaza where id=1");


            DataView veri = (DataView)magaza.Select(DataSourceSelectArguments.Empty);

            txtUstBaslik.Text = veri[0].Row["ustBaslik"].ToString();
            txtAnaBaslik.Text = veri[0].Row["anaBaslik"].ToString();
            txtAdres.Text = veri[0].Row["adres"].ToString();
            txtTelefon.Text = veri[0].Row["telefon"].ToString();

        }
    }




    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("amagaza.aspx");
    }
    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlDataSource duzenle = Baglan.Duzenle("update magaza set ustBaslik=@p1,anaBaslik=@p2,adres=@p3,telefon=@p4 where id=1");
        duzenle.UpdateParameters.Add("p1", txtUstBaslik.Text);
        duzenle.UpdateParameters.Add("p2", txtAnaBaslik.Text);
        duzenle.UpdateParameters.Add("p3", txtAdres.Text);
        duzenle.UpdateParameters.Add("p4", txtTelefon.Text);
        duzenle.Update();

        Response.Redirect("amagaza.aspx");
    }
}
