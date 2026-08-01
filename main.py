from extract import extraccion
from transform import transform
from validate import validacion
from load import enviar_carpeta, cargua_servidor, preperar_datos, envio, consulta
from report import reporte

#Extraccion del Datos Normal
df = extraccion()

#Datos Normalizados
df, duplicados, nulls = transform(df)

#Cargua de Datos en la Carpeta
cargua_de_datos = enviar_carpeta(df)

#Errores detectados
errores = validacion(df)

#Reporte
report = reporte(df, duplicados, nulls, errores)

#Servicio SQL
conexion, cursor = cargua_servidor()
datos, columnas, placeholders = preperar_datos(df)
consulta = consulta(columnas, placeholders)
envio = envio(consulta, datos, cursor)

if len(errores) > 0:
    for error in errores:
        print(error)

print(envio)