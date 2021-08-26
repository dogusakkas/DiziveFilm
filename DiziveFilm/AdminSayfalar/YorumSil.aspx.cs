using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.AdminSayfalar
{
    public partial class YorumSil : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["YorumID"]);
            var yorum = db.Tbl_Yorum.Find(x);
            db.Tbl_Yorum.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}