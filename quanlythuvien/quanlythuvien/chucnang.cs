using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace quanlythuvien
{
    public class chucnang
    {
        string connect = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        int sl;
        public bool DangNhap(string tdn, string mk)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "select * from NHANVIEN where MaNV=@ma and MatKhau=@mk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@tdn", tdn);
                cmd.Parameters.AddWithValue("@mk", mk);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                return dr.Read();
            }
        }
    }
}
