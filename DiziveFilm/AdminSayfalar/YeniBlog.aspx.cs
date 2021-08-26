using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm.AdminSayfalar
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {



                var turler = (from x in db.Tbl_Tur
                              select new
                              {
                                  x.TurAd,
                                  x.TurID
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
            }
        }

        protected void Btn_Kaydet_Click(object sender, EventArgs e)
        {
            Tbl_Blog t = new Tbl_Blog();
            t.BlogBaslik = Txt_Baslik.Text;
            t.BlogGorsel = Txt_Gorsel.Text;
            t.BlogIcerik = Txt_Icerik.Text;
            t.BlogFragman = Txt_Fragman.Text;
            t.BlogTarih = DateTime.Parse(Txt_Tarih.Text);
            t.BlogTur = byte.Parse(DropDownList1.SelectedValue);
            t.BlogKategori = byte.Parse(DropDownList2.SelectedValue);
            db.Tbl_Blog.Add(t);
            db.SaveChanges();
            Response.Redirect("Bloglar.aspx");

        }
    }
}