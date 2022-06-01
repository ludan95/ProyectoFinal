using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ecommerceArtesanias.ModelsDatos
{
    public class tarjeta
    {
		public int id_tarjeta { get; set; }
		public string numero_tarjeta { get; set; }
		public string nombre_titular { get; set; }
		public string fecha_caducidad_mes { get; set; }
		public string fecha_caducidad_anio { get; set; }
		public string numero_seguridad { get; set; }
		public string entidad_bancaria { get; set; }
		public string tipo_tarjeta { get; set; }
	}
}
