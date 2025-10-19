INSERT INTO Ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Cali', '760001'),
(2, 'Bogotá', '110111'),
(3, 'Medellín', '050021'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Pereira', '660001'),
(7, 'Bucaramanga', '680001'),
(8, 'Manizales', '170001'),
(9, 'Santa Marta', '470001'),
(10, 'Popayán', '190001');



INSERT INTO TipoUsuario (tipo_usuario_id, nombre_tipo) VALUES
(1, 'Empleado'),
(2, 'Cliente'),
(3, 'Proveedor');


INSERT INTO Usuario (usuario_id, nombre, apellido, condicion_especial, ciudad_id, tipo_usuario_id) VALUES
(1, 'Juan', 'Pérez', 'Ninguna', 1, 1),  
(2, 'Ana', 'Gómez', 'Discapacidad visual', 2, 1), 
(3, 'Carlos', 'López', 'Ninguna', 3, 2),  
(4, 'María', 'Rodríguez', 'Ninguna', 4, 2), 
(5, 'Pedro', 'Martínez', 'Adulto mayor', 5, 3), 
(6, 'Luisa', 'Fernández', 'Ninguna', 6, 2), 
(7, 'Andrés', 'Suárez', 'Ninguna', 7, 3),  
(8, 'Camila', 'Ramírez', 'Ninguna', 8, 1), 
(9, 'Jorge', 'Mendoza', 'Movilidad reducida', 9, 3), 
(10, 'Diana', 'Morales', 'Ninguna', 10, 2); 



INSERT INTO Departamento (departamento_id, nombre_departamento) VALUES
(1, 'Recursos Humanos'),
(2, 'Contabilidad'),
(3, 'Ventas'),
(4, 'Marketing');


INSERT INTO Empleado (empleado_id, usuario_id, cargo, departamento_id) VALUES
(1, 1, 'Gerente', 1),
(2, 2, 'Analista', 2),
(3, 8, 'Técnico', 3);

INSERT INTO Servicio (servicio_id, nombre, descripcion, estado) VALUES
(1, 'Consultoría', 'Asesoría profesional personalizada', 'Activo'),
(2, 'Mantenimiento', 'Revisión técnica periódica', 'Activo'),
(3, 'Capacitación', 'Cursos de formación empresarial', 'Activo'),
(4, 'Entrega', 'Distribución de productos', 'Activo'),
(5, 'Instalación', 'Implementación técnica', 'Activo'),
(6, 'Reparación', 'Servicio técnico especializado', 'Activo'),
(7, 'Atención al cliente', 'Soporte posventa', 'Activo'),
(8, 'Transporte', 'Logística de envíos', 'Inactivo'),
(9, 'Publicidad', 'Campañas digitales', 'Activo'),
(10, 'Diseño', 'Creación de material gráfico', 'Activo');


INSERT INTO Turno (empleado_id, usuario_id, servicio_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, '2025-10-20', '08:00', '12:00', 'Activo'),
(2, 2, 2, '2025-10-20', '09:00', '13:00', 'Pendiente'),
(3, 8, 3, '2025-10-20', '10:00', '14:00', 'Cancelado'),
(1, 1, 4, '2025-10-21', '13:00', '17:00', 'Pendiente'),
(2, 2, 5, '2025-10-21', '14:00', '18:00', 'Activo'),
(3, 8, 6, '2025-10-21', '08:00', '12:00', 'Cancelado'),
(1, 1, 7, '2025-10-22', '09:00', '12:00', 'Pendiente'),
(2, 2, 8, '2025-10-22', '10:00', '13:00', 'Cancelado'),
(3, 8, 9, '2025-10-22', '11:00', '14:00', 'Activo'),
(1, 1, 10, '2025-10-23', '08:00', '12:00', 'Cancelado');


INSERT INTO Medio (medio_id, tipo_medio) VALUES
(1, 'Correo'),
(2, 'Teléfono'),
(3, 'SMS'),
(4, 'WhatsApp'),
(5, 'Telegram'),
(6, 'Chat Web'),
(7, 'Notificación Push'),
(8, 'Carta Física'),
(9, 'Fax'),
(10, 'Portal Web');


INSERT INTO Notificacion (notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 1, 'Su turno ha sido asignado', '2025-10-19', 'Enviado'),
(2, 2, 2, 'Recordatorio de servicio', '2025-10-19', 'Pendiente'),
(3, 3, 3, 'Actualización de cuenta', '2025-10-19', 'Enviado'),
(4, 4, 4, 'Promoción especial disponible', '2025-10-19', 'Enviado'),
(5, 5, 5, 'Su factura ha sido generada', '2025-10-19', 'Pendiente'),
(6, 6, 6, 'Confirmación de registro', '2025-10-19', 'Enviado'),
(7, 7, 7, 'Su servicio ha sido completado', '2025-10-19', 'Enviado'),
(8, 8, 8, 'Nuevo mensaje en el portal', '2025-10-19', 'Pendiente'),
(9, 9, 9, 'Revisión programada', '2025-10-19', 'Enviado'),
(10, 10, 10, 'Actualización de políticas', '2025-10-19', 'Enviado');

