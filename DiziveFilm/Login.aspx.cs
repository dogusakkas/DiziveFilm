using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm
{
    public partial class Login : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.Tbl_Uye
                        where x.Kullanici == Txt_Kullanici_Adi.Text && x.Sifre == Txt_Sifre.Text
                        select x;

            if (sorgu.Any())
            {
                Session.Add("Kullanici", Txt_Kullanici_Adi.Text);
                Response.Redirect("AnaSayfa.aspx");
            }
            else
            {
                Response.Write("Hata");
            }
        }
    }
}