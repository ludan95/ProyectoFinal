using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
	public class artesania { 
		public int id_artesania { get; set; }
		public string nombre { get; set; }
		public string material { get; set; }
		public string color_predominante { get; set; }
		public int precio { get; set; }
		public int cantidad_vender { get; set; }
		public string categoria { get; set; }
		public string img { get; set; }
		public string descripcion { get; set; }
		public int oferta { get; set; }
	}
}
