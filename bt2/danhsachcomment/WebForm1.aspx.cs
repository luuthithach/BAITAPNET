using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace danhsachcomment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadComment();
        }

        protected void btnNoidung_Click(object sender, EventArgs e)
        {

            string sfile = Server.MapPath(@"\") + "data.txt";
            using (StreamWriter writer = new StreamWriter(sfile, true))
            {
                writer.WriteLine(txtTd.Text);
                writer.WriteLine(txtHoten.Text);
                writer.WriteLine(txtEmail.Text);
                writer.WriteLine(txtNoidung.Text);
                writer.WriteLine("#END");
                writer.Close();

            }
        }
        private void ReadComment()
        {

            string sfile=Server.MapPath(@"\")+"data.txt";
            using(StreamReader reader=new StreamReader(sfile))
            {
                string snoidung = reader.ReadToEnd();
                string[] delmiter = { "#END" };
                string[] sArr = snoidung.Split(delmiter, StringSplitOptions.RemoveEmptyEntries);
                foreach(string s in sArr)
            {
                string stemp;
                stemp = Regex.Replace(s, @"\r\n", @"<br />");
                string entry=string.Format("<tr><td colspan=\"2\">{0} </td></tr>",stemp);
                 EntryComment.InnerHtml += entry;
                                
             }
            }
         }

        protected void btnDs_Click(object sender, EventArgs e)
        {

        }
    }
}
