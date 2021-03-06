﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;
using System.Text;
using System.IO;
using William;

public partial class UpdateBranch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Branch branch = new Branch();
            DataTable dt = branch.GetBranchData();
            GridViewBranch.DataSource = dt;
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddBranch.aspx");
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteBranch.aspx");
    }
    protected void ImageButtonHome_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {

    }
    protected void btn_ok_Click(object sender, EventArgs e)
    {
        Branch updatebr = new Branch();
        int bid = int.Parse(txt_br_id.Text);
        string bname = txt_br_name.Text;
        updatebr.EditBranch(bid, bname);
        Response.Write("<script>alert('Success ');</script>");

    }
}