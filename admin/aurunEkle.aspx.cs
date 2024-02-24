using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_aurunekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack) //ilk açılışta çalışır // butonla tetiklenmez
        {
            SqlDataSource kategori = Baglan.Sec("select * from urunkategori order by kbaslik");
            ddlKategori.DataSource = kategori;
            ddlKategori.DataTextField = "kbaslik";
            ddlKategori.DataValueField = "kid";
            ddlKategori.DataBind();
        }
    }
    protected void btnEkle_Click(object sender, EventArgs e)
    {


        SqlDataSource ekle = Baglan.Ekle("INSERT INTO urunler (baslik, altbaslik, aciklama, sira, aktif, foto, katid) VALUES (@p1, @p2, @p3, @p4, @p5, @p6, @p7)");
        ekle.InsertParameters.Add("p1", txtBaslik.Text);
        ekle.InsertParameters.Add("p2", txtAltBaslik.Text);
        ekle.InsertParameters.Add("p3", txtAciklama.Text);
        ekle.InsertParameters.Add("p4", txtSira.Text);

        int aktif = 0;
        if (cbAktif.Checked == true)
        {
            aktif = 1;
        }
        ekle.InsertParameters.Add("p5", aktif.ToString());

        if (fuFoto.HasFile)
        {
            string dosyaAdi = Path.GetFileNameWithoutExtension(fuFoto.FileName);
            string uzanti = Path.GetExtension(fuFoto.FileName);
            string duzgunDosya = Baglan.AdresDuzenle(dosyaAdi) + uzanti;

            ekle.InsertParameters.Add("p6", duzgunDosya);
            fuFoto.SaveAs(Server.MapPath("../img/") + duzgunDosya);

        }
        else
        {
            ekle.InsertParameters.Add("p6", "varsayilan.jpg");
        }

        ekle.InsertParameters.Add("p7", ddlKategori.SelectedValue.ToString());
        ekle.Insert();
        ltrmesaj.Text = "<script>AdreseGit('aurunler.aspx');</script>";
    }



}
