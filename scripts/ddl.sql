CREATE TABLE Ciudad (
  ciudad_id INT PRIMARY KEY,
  nombre_ciudad VARCHAR(100),
  codigo_postal VARCHAR(20)
);

CREATE TABLE TipoUsuario (
  tipo_usuario_id INT PRIMARY KEY,
  nombre_tipo VARCHAR(50)
);

CREATE TABLE Usuario (
  usuario_id INT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  condicion_especial VARCHAR(100),
  ciudad_id INT,
  tipo_usuario_id INT,
  FOREIGN KEY (ciudad_id) REFERENCES Ciudad(ciudad_id),
  FOREIGN KEY (tipo_usuario_id) REFERENCES TipoUsuario(tipo_usuario_id)
);

CREATE TABLE Departamento (
  departamento_id INT PRIMARY KEY,
  nombre_departamento VARCHAR(100)
);


CREATE TABLE Empleado (
  empleado_id INT PRIMARY KEY,
  usuario_id INT UNIQUE,
  cargo VARCHAR(100),
  departamento_id INT,
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (departamento_id) REFERENCES Departamento(departamento_id)
);

CREATE TABLE Servicio (
  servicio_id INT PRIMARY KEY,
  nombre VARCHAR(100),
  descripcion VARCHAR(200),
  estado VARCHAR(50)
);

CREATE TABLE Turno (
  empleado_id INT,
  usuario_id INT,
  servicio_id INT,
  fecha DATE,
  hora_inicio TIME,
  hora_fin TIME,
  estado VARCHAR(50),
  PRIMARY KEY (empleado_id, usuario_id, servicio_id),
  FOREIGN KEY (empleado_id) REFERENCES Empleado(empleado_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (servicio_id) REFERENCES Servicio(servicio_id)
);

CREATE TABLE Medio (
  medio_id INT PRIMARY KEY,
  tipo_medio VARCHAR(50)
);

CREATE TABLE Notificacion (
  notificacion_id INT PRIMARY KEY,
  usuario_id INT,
  medio_id INT,
  mensaje VARCHAR(255),
  fecha_envio DATE,
  estado VARCHAR(50),
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (medio_id) REFERENCES Medio(medio_id)
);

