using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Qlthuvien
{
    public class quanlynhanvien
    {
        dangnhap dn = new dangnhap();
        chucnang cn = new chucnang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i < 12; i++)
                {
                    ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
                for (int i = 1; i < 31; i++)
                {
                    ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
                for (int i = 1990; i < 2020; i++)
                {
                    ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }

        protected void ddlThang_SelectedIndexChanged(object sender, EventArgs e)
        {
            int thang = int.Parse(ddlThang.SelectedValue.ToString());
            switch (thang)
            {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                    ddlNgay.Items.Clear();
                    for (int i = 1; i <= 31; i++)
                    {
                        ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    }
                    break;
                case 2:
                    ddlNgay.Items.Clear();
                    for (int i = 1; i <= 28; i++)
                    {
                        ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    }
                    break;
                case 4:
                case 6:
                case 9:
                case 11:
                    ddlNgay.Items.Clear();
                    for (int i = 1; i <= 30; i++)
                    {
                        ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    }
                    break;
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            cn = new chucnang();
            {
                lblThongBao.Text = "Tác Giả này đã có";

                {
                    lblThongBao.Text = "Thêm thành công";
                }
            }


        }
    }
}