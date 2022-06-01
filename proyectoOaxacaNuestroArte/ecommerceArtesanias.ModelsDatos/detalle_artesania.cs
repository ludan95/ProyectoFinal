using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
	public class detalle_artesania{
		public int id_artesano { get; set; }
		public int id_artesania { get; set; }
		public int cantidad_agregar { get; set; }
		public int precio { get; set; }
	}
}
