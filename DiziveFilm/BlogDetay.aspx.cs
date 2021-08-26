using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.Sayfalar
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogID"]);
            var BlogIcerikleri = db.Tbl_Blog.Where(x => x.BlogID == id).ToList();
            Repeater1.DataSource = BlogIcerikleri;
            Repeater1.DataBind();

            var yorumlar = db.Tbl_Yorum.Where(x => x.YorumBlog == id).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();


            //Lbl_Toplam_Yorum_Sayisi.Text = db.Tbl_Blog.Where(x=>x.Tbl_Yorum ==).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogID"]);
            Tbl_Yorum t = new Tbl_Yorum();
            t.KullaniciAdSoyad = TextBox1.Text;
            t.Mail = TextBox2.Text;
            t.YorumIcerik = TextBox3.Text;
            t.YorumBlog = id;
            db.Tbl_Yorum.Add(t);
            db.SaveChanges();
            Response.Redirect("BlogDetay.aspx?BlogID="+id);
        }
    }
}