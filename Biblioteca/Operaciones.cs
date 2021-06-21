using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Biblioteca
{
    public class Operaciones
    {
        public bool InsertProveedor(int idProveedor, string marcaProveedor, string ProveedorProducto)
        {
            Conexion cn = new Conexion();
            try
            {
                string sql = "insert into Proveedor values ('"+marcaProveedor+ "','" +ProveedorProducto+ "')";
                SqlCommand cmd = new SqlCommand(sql, cn.GetConexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
