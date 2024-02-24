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
       if(!IsPostBack)
       {
        string id = Request.QueryString.Get("urunNo");
        SqlDataSource urun = Baglan.Sec("select * from hakkimda where id=@p1");
        urun.SelectParameters.Add("p1", id);

        DataView veri = (DataView)urun.Select(DataSourceSelectArguments.Empty);
        imgFoto.Src = "../img/"+veri[0].Row["foto"].ToString();
        txtBaslik.Text = veri[0].Row["baslik"].ToString();
        txtAltBaslik.Text = veri[0].Row["altbaslik"].ToString();
        txtAciklama.Text = veri[0].Row["aciklama"].ToString();
        lblFoto.Text = veri[0].Row["foto"].ToString();
        lblID.Text = veri[0].Row["id"].ToString();
       }
    }




    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("ahakkimda.aspx");
    }
    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlDataSource duzenle = Baglan.Duzenle("update hakkimda set baslik=@p1,altbaslik=@p2,aciklama=@p3,foto=@p4 where id=@p5");
        duzenle.UpdateParameters.Add("p1", txtBaslik.Text);
        duzenle.UpdateParameters.Add("p2", txtAltBaslik.Text);
        duzenle.UpdateParameters.Add("p3", txtAciklama.Text);

        if (fuFoto.HasFile)
        {
            string dosyaAdi = Path.GetFileNameWithoutExtension(fuFoto.FileName);
            string uzanti = Path.GetExtension(fuFoto.FileName);
            string duzgunDosya = Baglan.AdresDuzenle(dosyaAdi) + uzanti;

            duzenle.UpdateParameters.Add("p4", duzgunDosya);
            fuFoto.SaveAs(Server.MapPath("../img/") + duzgunDosya);

        }
        else
        {
            duzenle.UpdateParameters.Add("p4",lblFoto.Text);
        }

        

        duzenle.UpdateParameters.Add("p5", lblID.Text);
        duzenle.Update();

        Response.Redirect("ahakkimda.aspx");
    }
}
