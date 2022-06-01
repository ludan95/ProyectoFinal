using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
    public class direccion
    {
		public int id_direccion { get; set; }
		public string estado { get; set; }
		public string municipio { get; set; }
		public string localidad { get; set; }
		public string calle { get; set; }
		public string numero { get; set; }
		public string codigo_postal { get; set; }
		public string telefono { get; set; }
	}
}
