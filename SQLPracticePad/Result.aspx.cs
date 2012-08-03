using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLPracticePad
{
    public partial class Result : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs args)
        {
            base.OnInit(args);

            var connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"];
            using (var conn = new SqlConnection(connStr.ConnectionString))
            {
                var sql = Request.Form["sql"];
                var da = new SqlDataAdapter(sql, conn);
                var dt = new DataTable();
                try
                {
                    da.Fill(dt);
                    this.GridView1.DataSource = dt;
                    this.GridView1.DataBind();
                    infomsg.Visible = true;
                }
                catch (SqlException e)
                {
                    RespondSqlError(e);
                }
            }
        }

        private void RespondSqlError(SqlException e)
        {
            errmsgBox.Visible = true;
            errmsg.InnerText = e.Message;
        }
    }
}