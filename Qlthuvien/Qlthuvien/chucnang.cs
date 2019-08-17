using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Qlthuvien
{
    public class chucnang
    {
        string connect = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        public bool DangNhap(string tk, string mk)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {
                string sql = "select * from NHANVIEN where Manv=@ma and MatKhau=@mk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ma", tk);
                cmd.Parameters.AddWithValue("@mk", mk);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                return dr.Read();
            }
        }
    }
}