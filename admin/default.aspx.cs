﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Anasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource hakkimda = Baglan.Sec("select * from anasayfa");
        rptHakkimda.DataSource = hakkimda;
        rptHakkimda.DataBind();
    }
}