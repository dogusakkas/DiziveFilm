using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.AdminSayfalar
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request["BlogID"]);


            if (Page.IsPostBack == false)
            {
                var turler = (from x in db.Tbl_Tur
                              select new
                              {
                                  x.TurID,
                                  x.TurAd
                              }).ToList();

                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();


                var kategoriler = (from x in db.Tbl_Kategori
                                   select new
                                   {
                                       x.KategoriID,
                                       x.KategoriAd
                                   }).ToList();

                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();

                var deger = db.Tbl_Blog.Find(y);
                Txt_Baslik.Text = deger.BlogBaslik;
                Txt_Tarih.Text = deger.BlogTarih.ToString();
                Txt_Gorsel.Text = deger.BlogGorsel;
                Txt_Icerik.Text = deger.BlogIcerik;
                Txt_Fragman.Text = deger.BlogFragman;
                DropDownList1.SelectedValue = deger.BlogTur.ToString();
                DropDownList2.SelectedValue = deger.BlogKategori.ToString();
            }

        }

        protected void Btn_Guncelle_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["BlogID"]);
            var blog = db.Tbl_Blog.Find(x);
            blog.BlogBaslik = Txt_Baslik.Text;
            blog.BlogTarih = DateTime.Parse(Txt_Tarih.Text);
            blog.BlogGorsel = Txt_Gorsel.Text;
            blog.BlogIcerik = Txt_Icerik.Text;
            blog.BlogFragman = Txt_Fragman.Text;
            blog.BlogTur = byte.Parse(DropDownList1.SelectedValue);
            blog.BlogKategori = byte.Parse(DropDownList2.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Bloglar.aspx");
        }
    }
}