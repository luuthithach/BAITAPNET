using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            divinfo.InnerHtml += "Your Email: " + txtemail.Value + "<br> Login in ok! </br>";
        }
    }
}