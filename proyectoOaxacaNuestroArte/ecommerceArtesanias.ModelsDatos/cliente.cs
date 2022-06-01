using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
    public class cliente
    {
		public int id_cliente { get; set; }
		public string nombre_cliente { get; set; }
		public string apellidos_cliente { get; set; }
		public string correo_electronico { get; set; }
		public string img { get; set; }
		public string contrasenia_usuario { get; set; }
		public int id_direccion { get; set; }
	}
}
