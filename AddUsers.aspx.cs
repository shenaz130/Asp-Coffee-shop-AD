﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;
using System.Text;
using William;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        User ur = new User();
        DataTable dt = ur.GetUsersData();
        GridViewUsers.DataSource = dt;
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateUser.aspx");
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteUser.aspx");
    }
    protected void ImageButtonHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btn_ok_Click(object sender, EventArgs e)
    {
        User Adduser = new User();
        int u_Id = int.Parse(txt_user_id.Text);
        string u_name = txt_user_name.Text;
        int u_brid = int.Parse(txt_br_id.Text);
        string privillage = DropDownPrivilage.SelectedItem.ToString();
        string password = txt_password.Text;



        Adduser.AddUser(u_Id,u_name,u_brid,privillage,password);
        Response.Write("<script>alert('Success ');</script>");
    }
}