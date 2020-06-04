CREATE TABLE  "SERVICIOS" 
   (	"SECCION_FK" NUMBER(4,0), 
	"SERVICIO" NUMBER(4,0), 
	"NOMBRE_SERVICIO" VARCHAR2(100), 
	 CONSTRAINT "SERVICIOS_PK" PRIMARY KEY ("SECCION_FK", "SERVICIO")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PROGRAMAS" 
   (	"PROGRAMA" VARCHAR2(5), 
	"NOMBRE_PROGRAMA" VARCHAR2(100) NOT NULL ENABLE, 
	"DESCRIPCION" VARCHAR2(2000), 
	 CONSTRAINT "PROGRAMAS_PK" PRIMARY KEY ("PROGRAMA")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PROYECTOS_INVERSION" 
   (	"PROYECTO_INVERSION" VARCHAR2(15), 
	"DESCRIPCION" VARCHAR2(100) NOT NULL ENABLE, 
	"SECCION_FK" NUMBER(4,0) NOT NULL ENABLE, 
	"SERVICIO_FK" NUMBER(4,0) NOT NULL ENABLE, 
	"PROGRAMA_FK" VARCHAR2(5) NOT NULL ENABLE, 
	 CONSTRAINT "PROYECTOS_INVERSION_PK" PRIMARY KEY ("PROYECTO_INVERSION")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TIPOS_EVENTO_CONTRATACION" 
   (	"TIPO_EVENTO" VARCHAR2(20), 
	"DESCRIPCION" VARCHAR2(100), 
	 CONSTRAINT "TIPOS_EVENTO_CONTRATACION_PK" PRIMARY KEY ("TIPO_EVENTO")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PROCEDIMIENTOS_CONTRATACION" 
   (	"PROC_CONTRATACION" VARCHAR2(100), 
	"DESCRIPCION" VARCHAR2(400), 
	 CONSTRAINT "PROCEDIMIENTOS_CONTRATACION_PK" PRIMARY KEY ("PROC_CONTRATACION")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "EVENTOS_PROCEDIMIENTOS_CONTRATACION" 
   (	"TIPO_EVENTO_FK" VARCHAR2(20), 
	"PROC_CONTRATACION_FK" VARCHAR2(100), 
	 CONSTRAINT "EVENTOS_PROCEDIMIENTOS_CONTRATACION_PK" PRIMARY KEY ("TIPO_EVENTO_FK", "PROC_CONTRATACION_FK")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "DESTINATARIOS" 
   (	"DESTINATARIO" VARCHAR2(15), 
	"NOMBRE" VARCHAR2(200), 
	 CONSTRAINT "DESTINATARIOS_PK" PRIMARY KEY ("DESTINATARIO")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TIPOS_CONTRATACION" 
   (	"TIPO_CONTRATACION" VARCHAR2(25), 
	"DESCRIPCION" VARCHAR2(100) NOT NULL ENABLE, 
	 CONSTRAINT "TIPOS_CONTRATACION_PK" PRIMARY KEY ("TIPO_CONTRATACION")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PRIORIDADES" 
   (	"PRIORIDAD" NUMBER(2,0), 
	"DESCRIPCION" VARCHAR2(100), 
	 CONSTRAINT "PRIORIDADES_PK" PRIMARY KEY ("PRIORIDAD")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "UNIDADES_PROPONENTES" 
   (	"ALIAS_UNIDAD" VARCHAR2(10) NOT NULL ENABLE, 
	"NOMBRE_UNIDAD" VARCHAR2(100) NOT NULL ENABLE, 
	 CONSTRAINT "UNIDADES_PROPONENTES_PK" PRIMARY KEY ("ALIAS_UNIDAD")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "INDS_IGAE" 
   (	"ALIAS_INDICADOR" VARCHAR2(15), 
	"DESCRIPCION" VARCHAR2(200), 
	 CONSTRAINT "INDS_IGAE_PK" PRIMARY KEY ("ALIAS_INDICADOR")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "ESTADOS_PREVISION" 
   (	"ESTADO_PREVISION" VARCHAR2(10), 
	"DESCRIPCION" VARCHAR2(100), 
	 CONSTRAINT "ESTADOS_PREVISION_PK" PRIMARY KEY ("ESTADO_PREVISION")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "VINCULANTES" 
   (	"VINCULANTE" NUMBER(5,0), 
	"DESCRIPCION" VARCHAR2(100), 
	 CONSTRAINT "VINCULANTES_PK" PRIMARY KEY ("VINCULANTE")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "CONCEPTOS" 
   (	"CONCEPTO" NUMBER(10,0), 
	"VINCULANTE_FK" NUMBER(5,0) NOT NULL ENABLE, 
	"DESCRIPCION" VARCHAR2(100) NOT NULL ENABLE, 
	 CONSTRAINT "CONCEPTOS_PK" PRIMARY KEY ("CONCEPTO")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "ORGANOS_CONTRATACION" 
   (	"ALIAS_ORGANO_CONTRATACION" VARCHAR2(6), 
	"NOMBRE" VARCHAR2(100), 
	 CONSTRAINT "ORGANOS_CONTRATACION_PK" PRIMARY KEY ("ALIAS_ORGANO_CONTRATACION")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "EJERCICIOS_FUTUROS" 
   (	"TIPO_EJERCICIOS_FUTUROS" VARCHAR2(3), 
	"DESCRIPCION" VARCHAR2(30), 
	 CONSTRAINT "EJERCICIOS_FUTUROS_PK" PRIMARY KEY ("TIPO_EJERCICIOS_FUTUROS")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "SECCIONES" 
   (	"SECCION" NUMBER(4,0), 
	"NOMBRE_SECCION" VARCHAR2(200), 
	 CONSTRAINT "SECCIONES_PK" PRIMARY KEY ("SECCION")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TRAMITADORES" 
   (	"ID_TRAMITADOR" VARCHAR2(6), 
	"NOMBRE" VARCHAR2(50) NOT NULL ENABLE, 
	"APELLIDO1" VARCHAR2(50) NOT NULL ENABLE, 
	"APELLIDO2" VARCHAR2(50) NOT NULL ENABLE, 
	 CONSTRAINT "TRAMITADORES_PK" PRIMARY KEY ("ID_TRAMITADOR")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "JEFES_DE_PROYECTO" 
   (	"ID_JP" VARCHAR2(6) NOT NULL ENABLE, 
	"NOMBRE" VARCHAR2(50) NOT NULL ENABLE, 
	"APELLIDO1" VARCHAR2(50) NOT NULL ENABLE, 
	"APELLIDO2" VARCHAR2(50) NOT NULL ENABLE, 
	"COMENTARIOS" VARCHAR2(4000), 
	 CONSTRAINT "JEFES_DE_PROYECTO_PK" PRIMARY KEY ("ID_JP")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PROVEEDORES" 
   (	"ID_PROVEEDOR" NUMBER NOT NULL ENABLE, 
	"NIF" VARCHAR2(15), 
	"NOMBRE_PROVEEDOR" VARCHAR2(100), 
	"CONTACTO" VARCHAR2(200), 
	"EMAIL" VARCHAR2(30), 
	"TELEFONO1" VARCHAR2(15), 
	"TELEFONO2" VARCHAR2(15), 
	"DIRECCION" VARCHAR2(200), 
	"CP" VARCHAR2(10), 
	"POBLACION" VARCHAR2(50), 
	"PROVINCIA" VARCHAR2(20), 
	"FAX" VARCHAR2(15), 
	"COMENTARIOS" VARCHAR2(4000), 
	 CONSTRAINT "PROVEEDORES_PK" PRIMARY KEY ("ID_PROVEEDOR")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TIPOS_ATRIBUTO_PREVISION" 
   (	"TIPO_ATRIBUTO_PREVISION" VARCHAR2(20), 
	"DESCRIPCION" VARCHAR2(100) NOT NULL ENABLE, 
	"ACTIVO" CHAR(1), 
	 CONSTRAINT "TIPOS_ATRIBUTO_PREVISION_PK" PRIMARY KEY ("TIPO_ATRIBUTO_PREVISION")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "FUNCIONES" 
   (	"ALIAS_FUNCION" VARCHAR2(15), 
	"NOMBRE_FUNCION" VARCHAR2(50) NOT NULL ENABLE, 
	"DESCRIPCION" VARCHAR2(1000), 
	 CONSTRAINT "FUNCIONES_PK" PRIMARY KEY ("ALIAS_FUNCION")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "PROYECTOS_INVERSION" ADD CONSTRAINT "PROYECTOS_INVERSION_SERVICIO_FK" FOREIGN KEY ("SECCION_FK", "SERVICIO_FK")
	  REFERENCES  "SERVICIOS" ("SECCION_FK", "SERVICIO") ENABLE
/
ALTER TABLE  "PROYECTOS_INVERSION" ADD CONSTRAINT "PROYECTOS_INVERSION_PROGRAMA" FOREIGN KEY ("PROGRAMA_FK")
	  REFERENCES  "PROGRAMAS" ("PROGRAMA") ENABLE
/
ALTER TABLE  "EVENTOS_PROCEDIMIENTOS_CONTRATACION" ADD CONSTRAINT "EVENTOS_PROCEDIMIENTOS_CONTRATACION_TIPO_EVENTO_FK" FOREIGN KEY ("TIPO_EVENTO_FK")
	  REFERENCES  "TIPOS_EVENTO_CONTRATACION" ("TIPO_EVENTO") ENABLE
/
ALTER TABLE  "EVENTOS_PROCEDIMIENTOS_CONTRATACION" ADD CONSTRAINT "EVENTOS_PROCEDIMIENTOS_CONTRATACION_PROC_CONTRATACION_FK" FOREIGN KEY ("PROC_CONTRATACION_FK")
	  REFERENCES  "PROCEDIMIENTOS_CONTRATACION" ("PROC_CONTRATACION") ENABLE
/
CREATE UNIQUE INDEX  "CONCEPTOS_PK" ON  "CONCEPTOS" ("CONCEPTO")
/
CREATE UNIQUE INDEX  "DESTINATARIOS_PK" ON  "DESTINATARIOS" ("DESTINATARIO")
/
CREATE UNIQUE INDEX  "EJERCICIOS_FUTUROS_PK" ON  "EJERCICIOS_FUTUROS" ("TIPO_EJERCICIOS_FUTUROS")
/
CREATE UNIQUE INDEX  "ESTADOS_PREVISION_PK" ON  "ESTADOS_PREVISION" ("ESTADO_PREVISION")
/
CREATE UNIQUE INDEX  "EVENTOS_PROCEDIMIENTOS_CONTRATACION_PK" ON  "EVENTOS_PROCEDIMIENTOS_CONTRATACION" ("TIPO_EVENTO_FK", "PROC_CONTRATACION_FK")
/
CREATE UNIQUE INDEX  "FUNCIONES_PK" ON  "FUNCIONES" ("ALIAS_FUNCION")
/
CREATE UNIQUE INDEX  "INDS_IGAE_PK" ON  "INDS_IGAE" ("ALIAS_INDICADOR")
/
CREATE UNIQUE INDEX  "JEFES_DE_PROYECTO_PK" ON  "JEFES_DE_PROYECTO" ("ID_JP")
/
CREATE UNIQUE INDEX  "ORGANOS_CONTRATACION_PK" ON  "ORGANOS_CONTRATACION" ("ALIAS_ORGANO_CONTRATACION")
/
CREATE UNIQUE INDEX  "PRIORIDADES_PK" ON  "PRIORIDADES" ("PRIORIDAD")
/
CREATE UNIQUE INDEX  "PROCEDIMIENTOS_CONTRATACION_PK" ON  "PROCEDIMIENTOS_CONTRATACION" ("PROC_CONTRATACION")
/
CREATE UNIQUE INDEX  "PROGRAMAS_PK" ON  "PROGRAMAS" ("PROGRAMA")
/
CREATE UNIQUE INDEX  "PROVEEDORES_PK" ON  "PROVEEDORES" ("ID_PROVEEDOR")
/
CREATE UNIQUE INDEX  "PROYECTOS_INVERSION_PK" ON  "PROYECTOS_INVERSION" ("PROYECTO_INVERSION")
/
CREATE UNIQUE INDEX  "SECCIONES_PK" ON  "SECCIONES" ("SECCION")
/
CREATE UNIQUE INDEX  "SERVICIOS_PK" ON  "SERVICIOS" ("SECCION_FK", "SERVICIO")
/
CREATE UNIQUE INDEX  "TIPOS_ATRIBUTO_PREVISION_PK" ON  "TIPOS_ATRIBUTO_PREVISION" ("TIPO_ATRIBUTO_PREVISION")
/
CREATE UNIQUE INDEX  "TIPOS_CONTRATACION_PK" ON  "TIPOS_CONTRATACION" ("TIPO_CONTRATACION")
/
CREATE UNIQUE INDEX  "TIPOS_EVENTO_CONTRATACION_PK" ON  "TIPOS_EVENTO_CONTRATACION" ("TIPO_EVENTO")
/
CREATE UNIQUE INDEX  "TRAMITADORES_PK" ON  "TRAMITADORES" ("ID_TRAMITADOR")
/
CREATE UNIQUE INDEX  "UNIDADES_PROPONENTES_PK" ON  "UNIDADES_PROPONENTES" ("ALIAS_UNIDAD")
/
CREATE UNIQUE INDEX  "VINCULANTES_PK" ON  "VINCULANTES" ("VINCULANTE")
/
 CREATE SEQUENCE   "PRUEBA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "PROVEEDORES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_PROVEEDORES" 
  before insert on "PROVEEDORES"               
  for each row  
begin   
  if :NEW."ID_PROVEEDOR" is null then 
    select "PROVEEDORES_SEQ".nextval into :NEW."ID_PROVEEDOR" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PROVEEDORES" ENABLE
/
