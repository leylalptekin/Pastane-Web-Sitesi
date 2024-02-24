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
            string id = Request.QueryString.Get("urunNo");
            SqlDataSource urun = Baglan.Sec("select * from urunler where id=@p1");
            urun.SelectParameters.Add("p1", id);

            DataView veri = (DataView)urun.Select(DataSourceSelectArguments.Empty);
            imgFoto.Src = "../img/" + veri[0].Row["foto"].ToString();
            txtBaslik.Text = veri[0].Row["baslik"].ToString();
            txtAltBaslik.Text = veri[0].Row["altbaslik"].ToString();
            txtAciklama.Text = veri[0].Row["aciklama"].ToString();
            txtSira.Text = veri[0].Row["sira"].ToString();
            lblFoto.Text = veri[0].Row["foto"].ToString();
            lblID.Text = veri[0].Row["id"].ToString();

            if (veri[0].Row["aktif"].ToString() == "1")
            {
                cbAktif.Checked = true;

            }

            SqlDataSource kategori = Baglan.Sec("select * from urunkategori order by kbaslik");
            ddlKategori.DataSource = kategori;
            ddlKategori.DataTextField = "kbaslik";
            ddlKategori.DataValueField = "kid";
            ddlKategori.DataBind();
            ddlKategori.SelectedValue = veri[0].Row["katid"].ToString();
        }
    }




    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("aurunler.aspx");
    }
    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlDataSource duzenle = Baglan.Duzenle("update urunler set baslik=@p1,altbaslik=@p2,aciklama=@p3,foto=@p4, aktif=@p5, sira=@p6, katid=@p8 where id=@p7");
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
            duzenle.UpdateParameters.Add("p4", lblFoto.Text);
        }

        if (cbAktif.Checked == true)
        {
            duzenle.UpdateParameters.Add("p5", "1");
        }
        else
        {
            duzenle.UpdateParameters.Add("p5", "0");
        }

        duzenle.UpdateParameters.Add("p6", txtSira.Text);
        duzenle.UpdateParameters.Add("p7", lblID.Text);
        duzenle.UpdateParameters.Add("p8", ddlKategori.SelectedValue.ToString());
        duzenle.Update();

        Response.Redirect("aurunler.aspx");
    }
}
