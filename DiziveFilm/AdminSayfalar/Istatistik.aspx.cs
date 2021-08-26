using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.AdminSayfalar
{
    public partial class Istatistik : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Lbl_Toplam_Blog.Text = db.Tbl_Blog.Count().ToString();
            Lbl_Toplam_Yorum.Text = db.Tbl_Yorum.Count().ToString();
            Lbl_Film_Sayısı.Text = db.Tbl_Blog.Where(x => x.BlogTur == 2).Count().ToString();
            Lbl_Dizi_Sayısı.Text = db.Tbl_Blog.Where(x => x.BlogTur == 1).Count().ToString();
            Lbl_Macera_Sayısı.Text = db.Tbl_Blog.Where(x => x.BlogKategori == 1).Count().ToString();
            Lbl_En_Fazla_Yorumlu_Blog.Text = db.Tbl_Blog.Where(y => y.BlogID == (db.Tbl_Yorum.GroupBy(x => x.YorumBlog).OrderByDescending(x => x.Count()).Select(z => z.Key).FirstOrDefault())).Select(k => k.BlogBaslik).FirstOrDefault();

        }
    }
}