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
        
    }
    protected void btnEkle_Click(object sender, EventArgs e)
    {


        SqlDataSource ekle = Baglan.Ekle("INSERT INTO urunkategori (kbaslik, ksira) VALUES (@p1, @p2)");
        ekle.InsertParameters.Add("p1", txtBaslik.Text);
        ekle.InsertParameters.Add("p2", txtSira.Text);
       

       

       
        ekle.Insert();
        ltrmesaj.Text = "<script>AdreseGit('akategori.aspx');</script>";
    }



}
