using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.AdminSayfalar
{
    public partial class Bloglar : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = (from x in db.Tbl_Blog
                            select new
                            {
                                x.BlogID,
                                x.BlogBaslik,
                                x.BlogTarih,
                                x.Tbl_Tur.TurAd,
                                x.Tbl_Kategori.KategoriAd
                            }).ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }
    }
}