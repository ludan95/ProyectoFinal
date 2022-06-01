CREATE DATABASE ecommerceArtesanias;

USE ecommerceArtesanias;

CREATE TABLE direccion(
    id_direccion int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    estado varchar(50) not null,
	municipio varchar(50) not null,
	localidad varchar(50) not null,
	calle varchar(50) not null,
	numero varchar(10) not null,
	codigo_postal  varchar(5) not null,
	telefono  varchar(10) not null
);

CREATE TABLE tarjeta(
    id_tarjeta int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    numero_tarjeta varchar(16) not null,
    nombre_titular varchar(50) not null,
    fecha_caducidad_mes varchar(2) not null,
    fecha_caducidad_anio varchar(2) not null,
    numero_seguridad varchar(3) not null,
    entidad_bancaria varchar(50) not null,
    tipo_tarjeta varchar(7) not null
);

CREATE TABLE cliente(
    id_cliente int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    nombre_cliente varchar(50) not null,
    apellidos_cliente varchar(50) not null,
    correo_electronico  varchar(50) not null,
    img  varchar(50) not null,
    contrasenia_usuario varchar(50) not null,
    id_direccion  int not null,
    CONSTRAINT fk_direccionCliente FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
);

CREATE TABLE artesano(
    id_artesano int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    nombre_artesano varchar(50) not null,
    apellidos_artesano varchar(50) not null,
    correo_electronico varchar(50) not null,
    region varchar(50) not null,
    img varchar(50) not null,
    contrasenia_artesano varchar(50) not null,
    id_direccion int not null,
    id_tarjeta int not null,
    CONSTRAINT fk_direccionArtesano FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    CONSTRAINT fk_tarjetaArtesano FOREIGN KEY (id_tarjeta) REFERENCES tarjeta(id_tarjeta)
);

CREATE TABLE artesania(
    id_artesania int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    nombre  varchar(50) not null,
    material varchar(25) not null,
    color_predominante varchar(25) not null,
    precio int not null,
    cantidad_vender int not null,
    categoria varchar(30) not null,
    img  varchar(50) not null,
    descripcion  text,
    oferta int not null
);

CREATE TABLE detalle_artesania(
    id_artesano integer not null,
    id_artesania  integer not null,
    cantidad_agregar  integer not null,
    precio int not null,
    fecha date not null,
    CONSTRAINT fk_artesanoDetalleArtesania FOREIGN KEY (id_artesano) REFERENCES artesano(id_artesano),
    CONSTRAINT fk_artesaniaDEtalleArtesania FOREIGN KEY (id_artesania) REFERENCES artesania(id_artesania)

);

CREATE TABLE venta(
    id_venta int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    id_cliente int not null,
    id_tarjeta int not null,
    fecha date not null,
    CONSTRAINT fk_tarjetaVenta FOREIGN KEY (id_tarjeta) REFERENCES tarjeta(id_tarjeta),
    CONSTRAINT fk_clienteVenta FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE detalle_venta(
    id_venta integer not null,
    id_artesania  integer not null,
    cantidad integer not null,
    precio integer not null,
    CONSTRAINT fk_ventaDetalleVenta FOREIGN KEY (id_venta) REFERENCES venta(id_venta),
    CONSTRAINT fk_artesaniaDetalleVenta FOREIGN KEY (id_artesania) REFERENCES artesania(id_artesania)
);