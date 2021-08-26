using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziveFilm.Entity;

namespace DiziveFilm
{
    public partial class Iletisim : System.Web.UI.Page
    {
        DiziveFilmEntities db = new DiziveFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Gonder_Click1(object sender, EventArgs e)
        {
            Tbl_Iletisim t = new Tbl_Iletisim();
            t.AdSoyad = Txt_AdSoyad.Text;
            t.Konu = Txt_Konu.Text;
            t.Mail = Txt_Mail.Text;
            t.Telefon = Txt_Telefon.Text;
            t.MesajIcerik = Txt_Mesaj.Text;
            db.Tbl_Iletisim.Add(t);
            db.SaveChanges();

            //foreach(Control item in Controls)
            //{
            //    if (item is TextBox)
            //    {
            //        TextBox tbox = (TextBox)item;
            //        tbox.Clear();
            //    }
            //}
            
        }
    }
}