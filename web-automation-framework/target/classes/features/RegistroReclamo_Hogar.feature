Feature: Registro Reclamo Modulo Hogar

  @Test_Hogar_Trio_Facturacion_Cobro_Cuento
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Cuento

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción CUENTO CON SERVICIOS ADICIONALES A MI PAQUETE QUE NO CONTRATÉ
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Solicite
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicité un servicio adicional, pero me cobran un monto distinto
    And Selecciono la opcion CONTINUAR
    When Ingresa Importe Ofrecido "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Concepto
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Concepto

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Me están facturando dos veces un mismo concepto en mi recibo
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Costo_Frac
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Costo - Frac

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Costo del traslado
    And Selecciono la opcion CONTINUAR
    When Selecciono Costo de Traslado Fraccionado
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Costo_Cont
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Costo - Cont

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Costo del traslado
    And Selecciono la opcion CONTINUAR
    When Selecciono Costo de Traslado Contado
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Recorrido
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Recorrido

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Recorrido
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Numero
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Numero

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Numero
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Titularidad
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Titularidad

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Titularidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Cobro_Paginas
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Paginas

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No Publicacion en Paginas Blancas
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |
  @Test_Hogar_Trio_Facturacion_Cobro_Sitio
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Cobro - Sitio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Sitio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Suspension_Reconexion
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Suspension - Reconexion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción SUSPENSION BAJA FINAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción COBRO POR RECONEXION
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Suspension_Baja
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Suspension - Baja

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción SUSPENSION BAJA FINAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MI SERVICIO ESTA EN BAJA Y ME HAN FACTURADO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Equipo_Cobro_Distinto
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Equipo - Cobro Distinto

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLICITE UN EQUIPO PERO ME COBRAN UN MONTO DISTINTO A LO ACORDADO
    And Selecciono la opcion CONTINUAR
    When Ingresa Importe Ofrecido "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Equipo_Devolvi_Equipo
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Equipo - Devolvi Equipo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción DEVOLVI EL EQUIPO Y SE SIGUE FACTURANDO
    And Selecciono la opcion CONTINUAR
    When Ingresa Detalle ¿Como lo devolvio? "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Equipo_No_Solicite
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Equipo - No Solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO SOLICITE UN EQUIPO Y ME FACTURAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Equipo_No_LlegoEq
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Equipo - No Llego Equipo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO LLEGO EL EQUIPO QUE SOLICITE Y ME ESTAN FACTURANDO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_Equipo_NoReconozco
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Equipo - No Reconozco Monto

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO RECONOZCO EL MONTO DEL PUNTO ADICIONAL FACTURADO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |
  @Test_Hogar_Trio_Facturacion_Migracion_NoSolicite
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Migracion - No solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción MIGRACION
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO HE SOLICITADO LA MIGRACION Y ME FACTURAN UN IMPORTE DISTINTO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_AltaNueva_Paquete
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Alta Nueva - Paquete

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN PAQUETE DISTINTO AL QUE SOLICITE
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_AltaNueva_Importe
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Alta Nueva - Importe

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN IMPORTE POR INSTALACION DISTINTA A LO ACORDADO
    And Selecciono la opcion CONTINUAR
    When Ingresa Importe Ofrecido "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_AltaNueva_Servicio_Paquete
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Alta Nueva - Servicio - Paquete

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción PAQUETE COMPLETO: DUO/TRIO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_AltaNueva_Servicio_SoloLinea
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Alta Nueva - Servicio - Solo Linea

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLO LINEA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_AltaNueva_Servicio_SoloMTV
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Alta Nueva - Servicio - Solo MTV

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLO MOVISTAR TV
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_AltaNueva_Servicio_SoloMovInternet
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Alta Nueva - Servicio - Solo Movistar Internet

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLO MOVISTAR INTERNET
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_FactLlamadas_Celulares
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Facturacion LLamadas - Celulares

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A CELULARES
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_FactLlamadas_LargaDistancia
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Facturacion LLamadas - Larga Distancia

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción LARGA DISTANCIA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_FactLlamadas_OtrasLlamadas
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Facturacion LLamadas - Otras Llamadas

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción OTRAS LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_FactLlamadas_CostoBloqueo
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Facturacion LLamadas - CostoBloqueo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción COSTO BLOQUEO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Facturacion_FactLlamadas_CostoLlamada
  Scenario Outline: Registro Reclamo Hogar Trío - Facturación - Facturacion LLamadas - CostoLlamada

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción COSTO DE LLAMADA DISTINTA A LO OFRECIDO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Averias_Trio
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Averias - Trio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Trío
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Averias_MT
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Averias - Movistar Total

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Movistar Total
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Averias_MovInternet
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Averias - Movistar Internet

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Movistar Internet
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Averias_SoloLinea
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Averias - Solo Linea

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción AVERIAS SOLO LINEA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Averias_Duo
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Averias - Duo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Averias Duo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Cobro_Tarifa
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Cobro - Tarifa

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Cuestionas el cobro de algun servicio adicional?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ¿Incrementamos tu tarifa?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Cobro_Voucher
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Cobro - Voucher

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Cuestionas el cobro de algun servicio adicional?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ¿Cuentas con tu voucher de pago pero no figura en nuestros sistemas?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Cobro_Contrato
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Cobro - Contrato

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Cuestionas el cobro de algun servicio adicional?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ¿Nunca firmaste un contrato con Movistar?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Recibos_Correo
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Recibos - Correo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Recibos de Pago
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite el envio de recibos a mi correo y no llegan
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Recibos_Domicilio
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Recibos - Domicilio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Recibos de Pago
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite el envio de recibos a mi domicilio y no llegan
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Recibos_DetLlamadas
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Recibos - Detalle de Llamadas

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Recibos de Pago
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite mi detalle de llamadas y no las he recibido
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Ofrecimiento_Promocion
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Ofrecimiento - Promocion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Incumplimos algun ofrecimiento?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Promocion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Ofrecimiento_Retencion
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Ofrecimiento - Retencion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Incumplimos algun ofrecimiento?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Retencion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Ofrecimiento_Condiciones
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Ofrecimiento - Condiciones

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Incumplimos algun ofrecimiento?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Condiciones Contractuales/Derechos Reconocidos Normativa/Reuso de Equipo en Baja
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_InstalReinsta_Instalacion_Nueva
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Instalación Reinstalacion - Nueva

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Instalacion o Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado siete dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Nueva Instalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_InstalReinsta_Reinstalacion
  Scenario Outline: Registro Reclamo Hogar Trío - Otros  - Instalación Reinstalacion - Reinstalacion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Instalacion o Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado siete dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_InstalReinsta_Migracion
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Instalación Reinstalacion - Migracion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Instalacion o Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado siete dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Migracion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Susp_Baja_Suspension
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Suspencion Baja - Suspension

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Suspensión / Baja Final
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite suspender mi servicio y sigue activo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Susp_Baja_Baja
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Suspencion Baja - Baja

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Suspensión / Baja Final
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite cortar mi servicio y sigue activo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Porta_Mov_NoTermina
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Portabilidad - Movistar - No termina

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Movistar
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Aun no terminan de portarme
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Porta_Mov_SinServicio
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Portabilidad - Movistar - Sin Servicio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Movistar
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Me quedé sin servicio mas de tres horas
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Porta_Mov_NoPermiten
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Portabilidad - Movistar - No Permiten

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Movistar
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No me permiten portarme
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Porta_Otro_NoPermiten
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Portabilidad - Otro Operador - No Permiten

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Otro Operador
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No me permiten portarme Otro
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Porta_NoSolicite
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Portabilidad - No Solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No solicite Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |



  @Test_Hogar_Trio_Otros_Corte_SinRazon_Suspension
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Corte Suspension sin razon - Suspension

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Corte/Suspensión sin una razón justificada
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Suspension Temporal
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Corte_SinRazon_Corte_Deuda
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Corte Suspension sin razon - Corte por Deuda

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Corte/Suspensión sin una razón justificada
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Corte por deuda
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Corte_SinRazon_Corte_Total
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Corte Suspension sin razon - Corte Total

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Corte/Suspensión sin una razón justificada
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Corte total de mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Traslado_No_Instalan
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Traslado - Aun no Instalan

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Traslado
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado quince dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Veracidad_LugaresPago
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Veracidad de la informacion - Lugares

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Veracidad de la informacion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Lugares de pago oficinas
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Veracidad_Parrilla
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Veracidad de la informacion - Parrilla

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Veracidad de la informacion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de parrilla TV
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Otros_Tarjetas_Inconvenientes
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Tarjetas - Inconvenientes Tarjeta

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Tengo inconveninetes con mi Tarjeta Hola Perú
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Tarjetas_PlanFijo
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Tarjetas - Plan Fijo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Tengo un Plan Fijo Movil y no puedo usarlo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Tarjetas_PlanMultidestino
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Tarjetas - Plan Multidestino

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Tengo un Plan Multidestino y no puedo usarlo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Tarjetas_CreditoMinutos
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Tarjetas - Credito de minutos

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No puedo utilizar mi Credito de Minutos
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Otros_Tarjetas_Bono
  Scenario Outline: Registro Reclamo Hogar Trío - Otros - Tarjetas - Bono

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No puedo utilizar el Bono
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Apelacion
  Scenario Outline: Registro Reclamo Hogar Trío - Apelación

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    And Selecciono el boton ADJUNTA "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    And Selecciono la FECHA DE EMISION
    And Selecciono FECHA EMISION
    And Selecciono la opcion CERRAR
    And Selecciono la FECHA DE RECEPCION
    And Selecciono FECHA RECEPCION
    And Selecciono la opcion CERRAR RECEPCION
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |



  @Test_Hogar_Trio_Queja_Plazo
  Scenario Outline: Registro Reclamo Hogar Trío - Queja - Plazo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Trio_Queja_Negado
  Scenario Outline: Registro Reclamo Hogar Trío - Queja - Negado

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion EN ALGUN CANAL, TE HAN NEGADO EL REGISTRO DE TU RECLAMO
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Trio_Queja_Resolucion
  Scenario Outline: Registro Reclamo Hogar Trío - Queja - Resolucion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion TRIO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NO HEMOS CUMPLDO CON LA RESOLUCION DE TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Cuento
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Cuento

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción CUENTO CON SERVICIOS ADICIONALES A MI PAQUETE QUE NO CONTRATÉ
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Solicite
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicité un servicio adicional, pero me cobran un monto distinto
    And Selecciono la opcion CONTINUAR
    When Ingresa Importe Ofrecido "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Concepto
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Concepto

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Me están facturando dos veces un mismo concepto en mi recibo
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Costo_Frac
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Costo - Frac

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Costo del traslado
    And Selecciono la opcion CONTINUAR
    When Selecciono Costo de Traslado Fraccionado
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Costo_Cont
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Costo - Cont

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Costo del traslado
    And Selecciono la opcion CONTINUAR
    When Selecciono Costo de Traslado Contado
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Recorrido
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Recorrido

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Recorrido
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Numero
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Numero

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Numero
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Titularidad
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Titularidad

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Titularidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Paginas
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Paginas

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No Publicacion en Paginas Blancas
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Cobro_Sitio
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Cobro - Sitio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de Sitio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Facturacion_Suspension_Reconexion
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Suspension - Reconexion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción SUSPENSION BAJA FINAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción COBRO POR RECONEXION
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Suspension_Baja
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Suspension - Baja

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción SUSPENSION BAJA FINAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MI SERVICIO ESTA EN BAJA Y ME HAN FACTURADO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Equipo_Cobro_Distinto
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Equipo - Cobro Distinto

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLICITE UN EQUIPO PERO ME COBRAN UN MONTO DISTINTO A LO ACORDADO
    And Selecciono la opcion CONTINUAR
    When Ingresa Importe Ofrecido "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Equipo_Devolvi_Equipo
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Equipo - Devolvi Equipo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción DEVOLVI EL EQUIPO Y SE SIGUE FACTURANDO
    And Selecciono la opcion CONTINUAR
    When Ingresa Detalle ¿Como lo devolvio? "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Equipo_No_Solicite
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Equipo - No Solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO SOLICITE UN EQUIPO Y ME FACTURAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Equipo_No_LlegoEq
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Equipo - No Llego Equipo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO LLEGO EL EQUIPO QUE SOLICITE Y ME ESTAN FACTURANDO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_Equipo_NoReconozco
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Equipo - No Reconozco Monto

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción EQUIPO PUNTO ADICIONAL
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO RECONOZCO EL MONTO DEL PUNTO ADICIONAL FACTURADO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |
  @Test_Hogar_Duo_Facturacion_Migracion_NoSolicite
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Migracion - No solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción MIGRACION
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción NO HE SOLICITADO LA MIGRACION Y ME FACTURAN UN IMPORTE DISTINTO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_AltaNueva_Paquete
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Alta Nueva - Paquete

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN PAQUETE DISTINTO AL QUE SOLICITE
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_AltaNueva_Importe
  Scenario Outline: Registro Reclamo Hogar Duo - Facturación - Alta Nueva - Importe

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN IMPORTE POR INSTALACION DISTINTA A LO ACORDADO
    And Selecciono la opcion CONTINUAR
    When Ingresa Importe Ofrecido "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_AltaNueva_Servicio_Paquete
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Alta Nueva - Servicio - Paquete

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción PAQUETE COMPLETO: DUO/TRIO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_AltaNueva_Servicio_SoloLinea
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Alta Nueva - Servicio - Solo Linea

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLO LINEA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_AltaNueva_Servicio_SoloMTV
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Alta Nueva - Servicio - Solo MTV

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLO MOVISTAR TV
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_AltaNueva_Servicio_SoloMovInternet
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Alta Nueva - Servicio - Solo Movistar Internet

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción ALTA NUEVA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción SOLO MOVISTAR INTERNET
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_FactLlamadas_Celulares
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Facturacion LLamadas - Celulares

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A CELULARES
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_FactLlamadas_LargaDistancia
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Facturacion LLamadas - Larga Distancia

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción LARGA DISTANCIA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_FactLlamadas_OtrasLlamadas
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Facturacion LLamadas - Otras Llamadas

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción OTRAS LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_FactLlamadas_CostoBloqueo
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Facturacion LLamadas - CostoBloqueo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción COSTO BLOQUEO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Facturacion_FactLlamadas_CostoLlamada
  Scenario Outline: Registro Reclamo Hogar Dúo - Facturación - Facturacion LLamadas - CostoLlamada

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opción SI
    And Selecciono la opción FACTURACION DE LLAMADAS
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción COSTO DE LLAMADA DISTINTA A LO OFRECIDO
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Averias_Trio
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Averias - Trio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Trío
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Averias_MT
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Averias - Movistar Total

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Movistar Total
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Averias_MovInternet
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Averias - Movistar Internet

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Movistar Internet
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Averias_SoloLinea
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Averias - Solo Linea

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción AVERIAS SOLO LINEA
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Averias_Duo
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Averias - Duo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Mantienes Averias?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Averias Duo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Cobro_Tarifa
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Cobro - Tarifa

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Cuestionas el cobro de algun servicio adicional?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ¿Incrementamos tu tarifa?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Cobro_Voucher
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Cobro - Voucher

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Cuestionas el cobro de algun servicio adicional?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ¿Cuentas con tu voucher de pago pero no figura en nuestros sistemas?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Cobro_Contrato
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Cobro - Contrato

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Cuestionas el cobro de algun servicio adicional?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción ¿Nunca firmaste un contrato con Movistar?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Recibos_Correo
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Recibos - Correo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Recibos de Pago
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite el envio de recibos a mi correo y no llegan
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Recibos_Domicilio
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Recibos - Domicilio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Recibos de Pago
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite el envio de recibos a mi domicilio y no llegan
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Recibos_DetLlamadas
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Recibos - Detalle de Llamadas

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Recibos de Pago
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite mi detalle de llamadas y no las he recibido
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Ofrecimiento_Promocion
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Ofrecimiento - Promocion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Incumplimos algun ofrecimiento?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Promocion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Ofrecimiento_Retencion
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Ofrecimiento - Retencion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Incumplimos algun ofrecimiento?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Retencion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Ofrecimiento_Condiciones
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Ofrecimiento - Condiciones

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción ¿Incumplimos algun ofrecimiento?
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Condiciones Contractuales/Derechos Reconocidos Normativa/Reuso de Equipo en Baja
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_InstalReinsta_Instalacion_Nueva
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Instalación Reinstalacion - Nueva

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Instalacion o Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado siete dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Nueva Instalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_InstalReinsta_Reinstalacion
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros  - Instalación Reinstalacion - Reinstalacion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Instalacion o Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado siete dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_InstalReinsta_Migracion
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Instalación Reinstalacion - Migracion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Instalacion o Reinstalación
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado siete dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Migracion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Susp_Baja_Suspension
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Suspencion Baja - Suspension

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Suspensión / Baja Final
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite suspender mi servicio y sigue activo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Susp_Baja_Baja
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Suspencion Baja - Baja

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Suspensión / Baja Final
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Solicite cortar mi servicio y sigue activo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Porta_Mov_NoTermina
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Portabilidad - Movistar - No termina

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Movistar
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Aun no terminan de portarme
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Porta_Mov_SinServicio
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Portabilidad - Movistar - Sin Servicio

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Movistar
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Me quedé sin servicio mas de tres horas
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Porta_Mov_NoPermiten
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Portabilidad - Movistar - No Permiten

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Movistar
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No me permiten portarme
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Porta_Otro_NoPermiten
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Portabilidad - Otro Operador - No Permiten

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción A Otro Operador
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No me permiten portarme Otro
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Porta_NoSolicite
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Portabilidad - No Solicite

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No solicite Portabilidad
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |



  @Test_Hogar_Duo_Otros_Corte_SinRazon_Suspension
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Corte Suspension sin razon - Suspension

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Corte/Suspensión sin una razón justificada
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Suspension Temporal
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Corte_SinRazon_Corte_Deuda
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Corte Suspension sin razon - Corte por Deuda

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Corte/Suspensión sin una razón justificada
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Corte por deuda
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Corte_SinRazon_Corte_Total
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Corte Suspension sin razon - Corte Total

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Corte/Suspensión sin una razón justificada
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Corte total de mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Traslado_No_Instalan
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Traslado - Aun no Instalan

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Traslado
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Han pasado quince dias y aún no instalan mi servicio
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Veracidad_LugaresPago
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Veracidad de la informacion - Lugares

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Veracidad de la informacion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Lugares de pago oficinas
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Veracidad_Parrilla
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Veracidad de la informacion - Parrilla

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Veracidad de la informacion
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Cambio de parrilla TV
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Otros_Tarjetas_Inconvenientes
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Tarjetas - Inconvenientes Tarjeta

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Tengo inconveninetes con mi Tarjeta Hola Perú
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Tarjetas_PlanFijo
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Tarjetas - Plan Fijo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Tengo un Plan Fijo Movil y no puedo usarlo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Tarjetas_PlanMultidestino
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Tarjetas - Plan Multidestino

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción Tengo un Plan Multidestino y no puedo usarlo
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Tarjetas_CreditoMinutos
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Tarjetas - Credito de minutos

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No puedo utilizar mi Credito de Minutos
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Otros_Tarjetas_Bono
  Scenario Outline: Registro Reclamo Hogar Dúo - Otros - Tarjetas - Bono

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono la opcion NO
    And Selecciono la opción Tarjetas fisicas o virtuales
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción No puedo utilizar el Bono
    And Selecciono la opcion CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO
    And Selecciono el MES
    And Selecciono la opción ANIO RECIBO RECLAMO
    And Selecciono la ANIO
    And Selecciono la opción NÚMERO DE RECIBO
    When Ingreso el NÚMERO DE RECIBO "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |



  @Test_Hogar_Duo_Apelacion
  Scenario Outline: Registro Reclamo Hogar Duo - Apelación

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    And Selecciono el boton ADJUNTA "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    And Selecciono la FECHA DE EMISION
    And Selecciono FECHA EMISION
    And Selecciono la opcion CERRAR
    And Selecciono la FECHA DE RECEPCION
    And Selecciono FECHA RECEPCION
    And Selecciono la opcion CERRAR RECEPCION
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |



  @Test_Hogar_Duo_Queja_Plazo
  Scenario Outline: Registro Reclamo Hogar Duo - Queja - Plazo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_Duo_Queja_Negado
  Scenario Outline: Registro Reclamo Hogar Duo - Queja - Negado

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion EN ALGUN CANAL, TE HAN NEGADO EL REGISTRO DE TU RECLAMO
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_Duo_Queja_Resolucion
  Scenario Outline: Registro Reclamo Hogar Duo - Queja - Resolucion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion DUO
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NO HEMOS CUMPLDO CON LA RESOLUCION DE TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |











  @Test_Hogar_SoloLinea_Apelacion
  Scenario Outline: Registro Reclamo Hogar Solo Linea - Apelación

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion Solo Linea
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    And Selecciono el boton ADJUNTA "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    And Selecciono la FECHA DE EMISION
    And Selecciono FECHA EMISION
    And Selecciono la opcion CERRAR
    And Selecciono la FECHA DE RECEPCION
    And Selecciono FECHA RECEPCION
    And Selecciono la opcion CERRAR RECEPCION
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |



  @Test_Hogar_SoloLinea_Queja_Plazo
  Scenario Outline: Registro Reclamo Hogar Solo Linea - Queja - Plazo

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion Solo Linea
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Hogar_SoloLinea_Queja_Negado
  Scenario Outline: Registro Reclamo Hogar Solo Linea - Queja - Negado

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion Solo Linea
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion EN ALGUN CANAL, TE HAN NEGADO EL REGISTRO DE TU RECLAMO
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Hogar_SoloLinea_Queja_Resolucion
  Scenario Outline: Registro Reclamo Hogar Solo Linea - Queja - Resolucion

    Given ingreso a la URL "<caso_prueba>"
    And Selecciono la opción HOGAR
    And Selecciono la opcion Solo Linea
    When Ingreso el NÚMERO DE TELEFONO "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO
    And Selecciono el Tipo de Documento DNI
    When Ingreso el NÚMERO DE DOCUMENTO "<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA "<caso_prueba>"
    And Selecciono la opción COMENCEMOS
    And Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO?
    And Selecciono la opcion ¿NO HEMOS CUMPLDO CON LA RESOLUCION DE TU RECLAMO?
    And Selecciono la opcion CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR "<caso_prueba>"
    And Selecciono el boton ARCHIVO "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION "<caso_prueba>"
    When Ingreso las RAZONES DE LA QUEJA "<caso_prueba>"
    And Selecciono la opcion CONTINUAR
    When Ingreso el NOMBRE "<caso_prueba>"
    When INgreso el APELLIDO "<caso_prueba>"
    And Selecciono TIPO DE USUARIO
    And Selecciono el USUARIO
    When Ingreso el NUMERO DE CONTACTO "<caso_prueba>"
    When Ingreso el CORREO "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO "<caso_prueba>"
    And Selecciono DEPARTAMENTO
    And Selecciono DEPARTAMENTO1
    And Selecciono PROVINCIA
    And Selecciono PROVINCIA1
    And Selecciono DISTRITO
    And Selecciono DISTRITO1
    When Ingreso la DIRECCION "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL
    And Selecciono DEPARTAMENTO FINAL1
    And Selecciono la opción ENVIAR

    Examples:
      | caso_prueba |
      |           1 |