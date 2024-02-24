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
                string id = Request.QueryString.Get("id");
                SqlDataSource kullanici = Baglan.Sec("select * from kullanici where id=@p1");
                kullanici.SelectParameters.Add("p1", id);

                DataView veri = (DataView)kullanici.Select(DataSourceSelectArguments.Empty);
                txtKAdi.Text = veri[0].Row["Kadi"].ToString();
               
                lblID.Text = veri[0].Row["id"].ToString();
            }
        
    }




    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("kullanici.aspx");
    }
    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlDataSource duzenle = Baglan.Duzenle("update kullanici set kAdi=@p1, Parola=@p2 where id=@p3");
        duzenle.UpdateParameters.Add("p1", txtKAdi.Text);
        duzenle.UpdateParameters.Add("p2", txtParola.Text);
        duzenle.UpdateParameters.Add("p3", lblID.Text);
        duzenle.Update();

        Response.Redirect("kullanici.aspx");
    }
}
