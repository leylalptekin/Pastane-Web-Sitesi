using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hakkimda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource hakkimda = Baglan.Sec("select * from hakkimda");
        rptHakkimda.DataSource = hakkimda;
        rptHakkimda.DataBind();
              
    }
}