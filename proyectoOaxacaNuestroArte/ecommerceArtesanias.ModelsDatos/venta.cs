using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
	public class venta{
		public int id_venta { get; set; }
		public int id_cliente { get; set; }
		public int id_tarjeta { get; set; }
		public DateTime fecha { get; set; }
	}
}
