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
                string kid = Request.QueryString.Get("kategoriNo");
                SqlDataSource kategori = Baglan.Sec("select * from urunkategori where kid=@p1");
                kategori.SelectParameters.Add("p1", kid);

                DataView veri = (DataView)kategori.Select(DataSourceSelectArguments.Empty);
                txtBaslik.Text = veri[0].Row["kbaslik"].ToString();
                txtSira.Text = veri[0].Row["ksira"].ToString();
                lblID.Text = veri[0].Row["kid"].ToString();
            }
        
    }




    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("akategori.aspx");
    }
    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlDataSource duzenle = Baglan.Duzenle("update urunkategori set kbaslik=@p1, ksira=@p2 where kid=@p3");
        duzenle.UpdateParameters.Add("p1", txtBaslik.Text);
        duzenle.UpdateParameters.Add("p2", txtSira.Text);
        duzenle.UpdateParameters.Add("p3", lblID.Text);
        duzenle.Update();

        Response.Redirect("akategori.aspx");
    }
}
