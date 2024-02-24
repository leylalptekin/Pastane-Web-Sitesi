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
            SqlDataSource urunler = Baglan.Sec("select * from urunler inner join urunkategori on urunkategori.kid=urunler.katid order by sira desc");
            rptUrunler.DataSource = urunler;
            rptUrunler.DataBind();
        }
    }
    protected void btnSil_Click(object sender, EventArgs e)
    {
        foreach (RepeaterItem urun in rptUrunler.Items)
        {
            CheckBox cbSil = urun.FindControl("cbSil") as CheckBox;
            if(cbSil.Checked==true)
            {
                Label lblId = urun.FindControl("lblId") as Label;
                SqlDataSource sil = Baglan.Sil("delete from urunler where id=@p1");
                sil.DeleteParameters.Add("p1", lblId.Text);
                sil.Delete();
            }
            
        }
        Response.Redirect("aurunler.aspx");
    }
    protected void btnAra_Click(object sender, EventArgs e)
    {

        SqlDataSource urunler = Baglan.Sec("select * from urunler inner join urunkategori on urunkategori.kid=urunler.katid where baslik like @p1 or kbaslik like @p1 or altbaslik like @p1 order by sira desc");
        urunler.SelectParameters.Add("p1", "%"+txtAra.Text+"%");
        rptUrunler.DataSource = urunler;
        rptUrunler.DataBind();
    }
}