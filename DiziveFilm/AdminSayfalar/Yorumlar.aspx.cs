using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.AdminSayfalar
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var yorumlar = (from x in db.Tbl_Yorum
                            select new
                            {
                                x.YorumID,
                                x.KullaniciAdSoyad,
                                x.Tbl_Blog.BlogBaslik,
                                x.YorumIcerik
                            }).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();

        }
    }
}