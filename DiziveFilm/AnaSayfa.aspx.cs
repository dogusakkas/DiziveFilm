using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.NewFolder1
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["Kullanici"].ToString());
            if (Session["Kullanici"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz : " + Session["Kullanici"].ToString());
            }

            var bloglar = db.Tbl_Blog.ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();


            var kategoriler = db.Tbl_Kategori.ToList();
            Repeater2.DataSource = kategoriler;
            Repeater2.DataBind();

            var songonderiler = db.Tbl_Blog.Take(5).ToList();
            Repeater3.DataSource = songonderiler;
            Repeater3.DataBind();

            var sonyorumlar = db.Tbl_Yorum.Take(5).ToList();
            Repeater4.DataSource = sonyorumlar;
            Repeater4.DataBind();
        }
    }
}