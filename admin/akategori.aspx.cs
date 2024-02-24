using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_urunler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlDataSource urunkategori = Baglan.Sec("select * from urunkategori");
            rptKategori.DataSource = urunkategori;
            rptKategori.DataBind();
        }
    }
    protected void btnSil_Click(object sender, EventArgs e)
    {
        //foreach (RepeaterItem urun in rptUrunler.Items)
        //{
        //    CheckBox cbSil = urun.FindControl("cbSil") as CheckBox;
        //    if(cbSil.Checked==true)
        //    {
        //        Label lblId = urun.FindControl("lblId") as Label;
        //        SqlDataSource sil = Baglan.Sil("delete from urunler where id=@p1");
        //        sil.DeleteParameters.Add("p1", lblId.Text);
        //        sil.Delete();
        //    }
            
        //}
        //Response.Redirect("aurunler.aspx");
    }
}