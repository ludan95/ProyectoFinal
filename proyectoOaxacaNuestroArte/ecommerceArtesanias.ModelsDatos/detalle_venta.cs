using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
	public class detalle_venta{
		public int id_venta { get; set; }
		public int id_artesania { get; set; }
		public int cantidad { get; set; }
	}
}
