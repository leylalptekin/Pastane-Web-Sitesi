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
       
        SqlDataSource urun = Baglan.Sec("select * from anasayfa where id=1");

        DataView veri = (DataView)urun.Select(DataSourceSelectArguments.Empty);
        imgFoto.Src = "../img/"+veri[0].Row["foto"].ToString();
        txtBaslik1.Text = veri[0].Row["baslik1"].ToString();
        txtAltBaslik1.Text = veri[0].Row["altbaslik1"].ToString();
        txtAciklama1.Text = veri[0].Row["aciklama1"].ToString();
        txtBaslik2.Text = veri[0].Row["baslik2"].ToString();
        txtAltBaslik2.Text = veri[0].Row["altbaslik2"].ToString();
        txtAciklama2.Text = veri[0].Row["aciklama2"].ToString();
        lblFoto.Text = veri[0].Row["foto"].ToString();
      
       }
    }




    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlDataSource duzenle = Baglan.Duzenle("update anasayfa set baslik1=@p1, altbaslik1=@p2 ,aciklama1=@p3, baslik2=@p4,altbaslik2=@p5,aciklama2=@p6,foto=@p7 where id=1");
        duzenle.UpdateParameters.Add("p1", txtBaslik1.Text);
        duzenle.UpdateParameters.Add("p2", txtAltBaslik1.Text);
        duzenle.UpdateParameters.Add("p3", txtAciklama1.Text);
        duzenle.UpdateParameters.Add("p4", txtBaslik2.Text);
        duzenle.UpdateParameters.Add("p5", txtAltBaslik2.Text);
        duzenle.UpdateParameters.Add("p6", txtAciklama2.Text);

        if (fuFoto.HasFile)
        {
            string dosyaAdi = Path.GetFileNameWithoutExtension(fuFoto.FileName);
            string uzanti = Path.GetExtension(fuFoto.FileName);
            string duzgunDosya = Baglan.AdresDuzenle(dosyaAdi) + uzanti;

            duzenle.UpdateParameters.Add("p7", duzgunDosya);
            fuFoto.SaveAs(Server.MapPath("../img/") + duzgunDosya);

        }
        else
        {
            duzenle.UpdateParameters.Add("p7",lblFoto.Text);
        }

     
        duzenle.Update();

        Response.Redirect("default.aspx");
    }
}
