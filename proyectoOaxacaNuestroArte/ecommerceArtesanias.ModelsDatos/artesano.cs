using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
	public class artesano{
		public int id_artesano { get; set; }
		public string nombre_artesano { get; set; }
		public string apellidos_artesano { get; set; }
		public string correo_electronico { get; set; }
		public string region { get; set; }
		public string img { get; set; }
		public string contrasenia_artesano { get; set; }
		public int id_direccion { get; set; }
		public int id_tarjeta { get; set; }
	}
}
