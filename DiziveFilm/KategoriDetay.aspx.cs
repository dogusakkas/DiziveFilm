using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriID"]);
            var bloglar = db.Tbl_Blog.Where(x=>x.BlogKategori == id).ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();


            var kategoriler = db.Tbl_Kategori.ToList();
            Repeater2.DataSource = kategoriler;
            Repeater2.DataBind();

            var songonderiler = db.Tbl_Blog.ToList();
            Repeater3.DataSource = songonderiler;
            Repeater3.DataBind();
        }
    }
}