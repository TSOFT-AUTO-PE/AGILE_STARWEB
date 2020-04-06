Feature: Registro Reclamo Modulo Movil

  @Test_Movil_Prepago
  Scenario Outline: Registro Reclamo Movil Prepago
    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opción PENALIDAD
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Prepago_Apelacion
  Scenario Outline: Registro Reclamo Movil Prepago Apelacion

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono la opcion SI
    And Selecciono la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO?
    And Selecciono la opción CONTINUAR
    When Selecciono la opcion ADJUNTA "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION M "<caso_prueba>"
    And Selecciono la FECHA DE EMISION M
    And Selecciono FECHA EMISION M
    And Selecciono la opcion CERRAR M
    And Selecciono la FECHA DE RECEPCION M
    And Selecciono FECHA RECEPCION M
    And Selecciono la opcion CERRAR RECEPCION M
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Prepago_Queja
  Scenario Outline: Registro Reclamo Movil Prepago Queja

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR "<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono la opcion SI
    And Selecciono la opcion QUEJAS M
    And Selecciono la opción CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR M "<caso_prueba>"
    And Selecciono el boton ARCHIVO M "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION M "<caso_prueba>"
    When Ingreso RAZONES DE LA QUEJA M "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_CORTESUSPENCION_SOLICITECORTE
  Scenario Outline: Registro Reclamo Movil Postago CORTESUSPENCION SOLICITECORTE

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion CORTE/SUSPENSION/BAJA
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SOLICITE EL CORTE POR ROBO PERO LA LINEA SIGUE ACTIVA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_CORTESUSPENCION_NOSOLICITECORTE
  Scenario Outline: Registro Reclamo Movil Postago CORTESUSPENCION NOSOLICITECORTE

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion CORTE/SUSPENSION/BAJA
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO EH SOLICITADO EL CORTE POR ROBO DE MI LINEA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_CORTESUSPENCION_MEINDICARON
  Scenario Outline: Registro Reclamo Movil Postago CORTESUSPENCION MEINDICARON

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion CORTE/SUSPENSION/BAJA
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion ME INDICARON TENER CORTE POR DEUDA PERO NO TENGO DEUDA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_CORTESUSPENCION_NORECONOZCO
  Scenario Outline: Registro Reclamo Movil Postago CORTESUSPENCION NORECONOZCO

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion CORTE/SUSPENSION/BAJA
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO RECONOZCO EL CORTE POR DEUDA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |




  @Test_Movil_Postpago_CORTESUSPENCION_CORTESINRAZON
  Scenario Outline: Registro Reclamo Movil Postago CORTESUSPENCION CORTESINRAZON

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion CORTE/SUSPENSION/BAJA
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion CORTE/SUSPENSION SIN UNA RAZON JUSTIFICADA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |




  @Test_Movil_Postpago_CORTESUSPENCION_SOLICITESUSPENSION
  Scenario Outline: Registro Reclamo Movil Postago CORTESUSPENCION SOLICITESUSPENCION

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion CORTE/SUSPENSION/BAJA
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SOLICITE UNA SUSPENSION TEMPORAL PERO MI LINEA SIGUE ACTIVA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_INCUMPLIMOS_OFERTASPROMOCIONES
  Scenario Outline: Registro Reclamo Movil Postago INCUMPLIMOS OFERTASPROMOCIONES

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion ¿INCUMPLIMOS ALGUN OFRECIMIENTO? POSTPAGO
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion OFERTAS Y PROMOCIONES
    And Selecciono la opción CONTINUAR
    When Ingreso la COMENTARIO OFERTA/PROMOCION "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_INCUMPLIMOS_PLANDISTINTO
  Scenario Outline: Registro Reclamo Movil Postago INCUMPLIMOS PLANDISTINTO

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion ¿INCUMPLIMOS ALGUN OFRECIMIENTO? POSTPAGO
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion ME ENTREGARON UN PLAN DISTINTO AL QUE CONTRATE
    And Selecciono la opción CONTINUAR
    When Ingreso la COMENTARIO PLAN ACORDO "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_INCUMPLIMOS_DERECHOSRECONOCIDOS
  Scenario Outline: Registro Reclamo Movil Postago INCUMPLIMOS DERECHOSRECONOCIDOS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion ¿INCUMPLIMOS ALGUN OFRECIMIENTO? POSTPAGO
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion DERECHOS RECONOCIDOS EN CDU
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_INCUMPLIMOS_INCREMENTARONTARIFA
  Scenario Outline: Registro Reclamo Movil Postago INCUMPLIMOS INCREMENTARONTARIFA

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion ¿INCUMPLIMOS ALGUN OFRECIMIENTO? POSTPAGO
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion ME INFORMARON QUE INCREMENTARON MI TARIFA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_ACTIVACION/INSTALACION_NOACTIVAN
  Scenario Outline: Registro Reclamo Movil Postago ACTIVACION/INSTALACION NOACTIVAN

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion ACTIVACION INSTALACION
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion AUN NO ACTIVAN MI LINEA NUEVA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_ACTIVACION/INSTALACION_NORECONECTAN
  Scenario Outline: Registro Reclamo Movil Postago ACTIVACION/INSTALACION NORECONECTAN

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion ACTIVACION INSTALACION
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion AUN NO RECONECTAN MI LINEA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_BAJA/SUSPENSIONES_SOLICITECORTAR
  Scenario Outline: Registro Reclamo Movil Postago BAJA/SUSPENSIONES SOLICITECORTAR

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion BAJA/SUSPENSIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SOLICITE CORTAR MI SERVICIO Y SIGUE ACTIVO P
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_ENTREGA_SOLICITECORREO
  Scenario Outline: Registro Reclamo Movil Postago ENTREGA SOLICITE CORREO

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion FALTA DE ENTREGA RECIBO/DETALLE
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SOLICITE EL ENVIO DE MIS RECIBIOS A MI CORREO Y NO LLEGAN
    And Selecciono la opción CONTINUAR
    When Ingreso la COMENTARIO CORREO ELECTRONICO "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M



    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_ENTREGA_SOLICITEDOMICILIO
  Scenario Outline: Registro Reclamo Movil Postago ENTREGA SOLICITE DOMICILIO

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion FALTA DE ENTREGA RECIBO/DETALLE
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SOLICITE EL ENVIO DE MIS RECIBIOS A MI DOMICILIO Y NO LLEGAN
    And Selecciono la opción CONTINUAR
    When Ingreso la COMENTARIO ESPECIFICA TU DIRECCION DE ENVIO "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_ENTREGA_DETALLELLAMADAS
  Scenario Outline: Registro Reclamo Movil Postago ENTREGA DETALLE LLAMADAS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion FALTA DE ENTREGA RECIBO/DETALLE
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SOLICITE MI DETALLE DE LLAMADAS Y NO LAS HE RECIBIDO POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_VERACIDAD_BENEFICIOS
  Scenario Outline: Registro Reclamo Movil Postago VERACIDAD BENEFICIOS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion VERACIDAD DE LA IMFORMACION POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME INFORMARON CORRECTAMENTE LOS BENEFICIOS DE MI PLAN
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_VERACIDAD_PERMANENCIA
  Scenario Outline: Registro Reclamo Movil Postago VERACIDAD PERMANENCIA

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion VERACIDAD DE LA IMFORMACION POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion ACEPTE UN EQUIPO PERO NO ME INDICARON SOBRE EL PLAZO DE PERMANENCIA
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_VERACIDAD_CAMPAÑA/PROMOCIONES
  Scenario Outline: Registro Reclamo Movil Postago VERACIDAD CAMPAÑA PROMOCIONES

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion VERACIDAD DE LA IMFORMACION POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME INFORMARON CORRECTAMENTE SOBRE LAS CAMPAÑAS/PROMOCIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_POTABILIDAD_NO_SOLICITEPORTARME
  Scenario Outline: Registro Reclamo Movil Postago POTABILIDAD NO SOLICITE PORTARME

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion PORTABILIDAD POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO SOLICITE PORTARME A MOVISTAR
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_POTABILIDAD_NO_SOLICITEPORTARME_OPERADOR
  Scenario Outline: Registro Reclamo Movil Postago POTABILIDAD NO SOLICITE PORTARME OPERADOR

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion PORTABILIDAD POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO SOLICITE PORTARME A OTRO OPERADOR
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_POTABILIDAD_RECHAZARON_PORTARME
  Scenario Outline: Registro Reclamo Movil Postago POTABILIDAD RECHAZARON PORTARME

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion PORTABILIDAD POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion RECHAZARON MI PEDIDO DE PORTARME A MOVISTAR
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_POTABILIDAD_RECHAZARON_PORTARME_OPERADOR
  Scenario Outline: Registro Reclamo Movil Postago POTABILIDAD RECHAZARON PORTARME OPERADOR

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion PORTABILIDAD POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion RECHAZARON MI PEDIDO DE PORTARME A OTRO OPERADOR
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_POTABILIDAD_SUSPENDIERON_SERVICIO
  Scenario Outline: Registro Reclamo Movil Postago POTABILIDAD SUSPENDIERON SERVICIO

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion PORTABILIDAD POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SUSPENDIERON MI SERVICIO CON OTRO OPERADOR POR DEUDA EN MOVISTAR
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_PORTABILIDAD_NO_ENTREGARON_PROMOCION
  Scenario Outline: Registro Reclamo Movil Postago PORTABILIDAD NO ENTREGARON PROMOCION

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion PORTABILIDAD
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON LA PROMOCION/CAMPAÑA ACORADA
    And Selecciono la opción CONTINUAR
    When Ingreso la COMENTARIO ESPECIFICA OFERTA/PROMOCION "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_DESACUERDO_RECIBO_PAGADO
  Scenario Outline: Registro Reclamo Movil Postago DESACUERDO RECIBO PAGADO

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion DESACUERDO POR RECIBO PAGADO
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion DESACUERDO POR RECIBO PAGADO POST
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |




  @Test_Movil_Postpago_DESACUERDO_COMPROBANTE
  Scenario Outline: Registro Reclamo Movil Postago DESACUERDO COMPROBANTE

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion DESACUERDO POR RECIBO PAGADO
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion ¿CUENTAS CON COMPROBANTE DE PAGO Y NO FIGURA EN NUESTRO SISTEMA?
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |



  @Test_Movil_Postpago_TARJETA_NO_BENEFICIOS_PRE_PLAN
  Scenario Outline: Registro Reclamo Movil Postago TARJETA NO BENEFICIOS PRE PLAN

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE MI PRE PLAN
    And Selecciono la opción CONTINUAR
    When Ingreso la COMENTARIO QUE BENEFICIOS PREPLAN "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |




  @Test_Movil_Postpago_TARJETA_NO_BENEFICIOS_PLAN_CONTROL
  Scenario Outline: Registro Reclamo Movil Postago TARJETA NO BENEFICIOS PLAN CONTROL

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE MI PLAN CONTROL
    And Selecciono la opción CONTINUAR
    When Ingreso EL COMENTARIO QUE BENEFICIOS PLAN CONTROL "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |

  @Test_Movil_Postpago_TARJETA_NO_ENTREGA_OFRECIDO
  Scenario Outline: Registro Reclamo Movil Postago TARJETA NO ENTREGA BONO OFRECIDO

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON EL BONO OFRECIDO
    And Selecciono la opción CONTINUAR
    When Ingreso EL COMENTARIO BONO Y PLAN OFRECIDO "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_TARJETA_NO_ENTREGA_DUPLICA
  Scenario Outline: Registro Reclamo Movil Postago TARJETA NO ENTREGA BONO DUPLICA

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON EL BONO DUPLICA/TRIPLICA/CUADRUPLICA
    And Selecciono la opción CONTINUAR
    When Ingreso EL COMENTARIO BONO Y PLAN OFRECIDO "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_TARJETA_SMS_PREMIUM
  Scenario Outline: Registro Reclamo Movil Postago TARJETA SMS PREMIUM

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO RECONOZCO EL DESCUENTO POR SMS PREMIUM DE MI SALDO
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |

  @Test_Movil_Postpago_TARJETA_TARIFA
  Scenario Outline: Registro Reclamo Movil Postago TARJETA TARIFA

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion TARIFA INCORRECTA (BOLSAS Y RECARGAS)
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |
  @Test_Movil_Postpago_TARJETA_RECARGA_FISICA
  Scenario Outline: Registro Reclamo Movil Postago TARJETA SMS PREMIUM RECARGA FISICA

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON EL SALDO POR MI RECARGA FISICA/VIRTUAL
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |

  @Test_Movil_Postpago_TARJETA_SUPERCARGAS
  Scenario Outline: Registro Reclamo Movil Postago TARJETA SUPERCARGAS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO PUEDO COMPRAR SUPERCARGAS
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_TARJETA_MOV_PLAY
  Scenario Outline: Registro Reclamo Movil Postago TARJETA MOVISTAR PLAY

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion MOVISTAR PLAY CONSUME MIS DATOS Y ME INDICARON QUE ERA GRATIS
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_TARJETA_AFILIA_ARMA_TU_PLAN
  Scenario Outline: Registro Reclamo Movil Postago TARJETA AFILIA ARMA TU LAN

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion MANTENGO INCONVENIENTES PARA AFILIARME A ARMA TU PLAN
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_TARJETA_DESAFILIA_ARMA_TU_PLAN
  Scenario Outline: Registro Reclamo Movil Postago TARJETA DESAFILIA ARMA TU PLAN

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion MANTENGO INCONVENIENTES PARA DESAFILIARME A ARMA TU PLAN
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M

    Examples:
      | caso_prueba |
      |           1 |

  @Test_Movil_Postpago_TARJETA_BENEF_ARMATUPLAN_MINUTOS
  Scenario Outline: Registro Reclamo Movil Postago TARJETA BENEFICIOS ARMA TU PLAN MINUTOS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE ARMA TU PLAN
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion MINUTOS
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M

    Examples:
      | caso_prueba |
      |           1 |


  @Test_Movil_Postpago_TARJETA_BENEF_ARMATUPLAN_SMS
  Scenario Outline: Registro Reclamo Movil Postago TARJETA BENEFICIOS ARMA TU PLAN SMS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE ARMA TU PLAN
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion SMS
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |

  @Test_Movil_Postpago_TARJETA_BENEF_ARMATUPLAN_DATOS
  Scenario Outline: Registro Reclamo Movil Postago TARJETA BENEFICIOS ARMA TU PLAN DATOS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE ARMA TU PLAN
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion DATOS
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |

  @Test_Movil_Postpago_CALIDAD_PROBLEMAS_LLAMADAS
  Scenario Outline: Registro Reclamo Movil Postago CALIDAD PROBLEMAS LLAMADAS

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono el boton NO
    And Selecciono la opcion CALIDAD
    And Selecciono la opción CONTINUAR
    And Selecciono la opcion TENGO PROBLEMAS PARA REALIZAR Y RECIBIR LLAMADAS
    And Selecciono la opción CONTINUAR
    When Especifica el MENSAJE DE ERROR LUGAR HORA FECHA "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    And Selecciono la opción MES RECIBO RECLAMO MOVIL
    And Selecciono el MES MOVIL
    And Selecciono la opción ANIO RECIBO RECLAMO MOVIL
    And Selecciono la ANIO MOVIL
    And Selecciono la opción NÚMERO DE RECIBO MOVIL
    When Ingreso el NÚMERO DE RECIBO MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el COMENTARIO ADICIONAL MOVIL"<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M


    Examples:
      | caso_prueba |
      |           1 |







  @Test_Movil_Postpago_Apelacion
  Scenario Outline: Registro Reclamo Movil Postpago Apelacion

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono la opcion SI P
    And Selecciono la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO?
    And Selecciono la opción CONTINUAR
    When Selecciono la opcion ADJUNTA "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION M "<caso_prueba>"
    And Selecciono la FECHA DE EMISION M
    And Selecciono FECHA EMISION M
    And Selecciono la opcion CERRAR M
    And Selecciono la FECHA DE RECEPCION M
    And Selecciono FECHA RECEPCION M
    And Selecciono la opcion CERRAR RECEPCION M
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M

    Examples:
      | caso_prueba |
      |           1 |




  @Test_Movil_Postpago_QUEJA
  Scenario Outline: Registro Reclamo Movil Postpago QUEJA

    Given Ingreso a la URL RECLAMOS MOVIL "<caso_prueba>"
    And Selecciono la opcion MOVIL
    And Ingreso el NUMERO CELULAR P"<caso_prueba>"
    And Selecciono TIPO DE DOCUMENTO MOVIL
    And Selecciono el Tipo de Documento DNI MOVIL
    When Ingreso el NÚMERO DE DOCUMENTO MOVIL P"<caso_prueba>"
    When Ingreso el NÚMERO DE CAPTCHA MOVIL"<caso_prueba>"
    And Selecciono la opción COMENCEMOS MOVIL
    And Selecciono la opcion SI P
    And Selecciono la opcion QUEJAS M
    And Selecciono la opción CONTINUAR
    When Ingreso el NUMERO DE TELEFONO CELULAR M "<caso_prueba>"
    And Selecciono el boton ARCHIVO M "<caso_prueba>"
    When Ingreso los DATOS DE RESOLUCION M "<caso_prueba>"
    When Ingreso RAZONES DE LA QUEJA M "<caso_prueba>"
    And Selecciono la opción CONTINUAR
    When Ingreso el NOMBRE M "<caso_prueba>"
    When INgreso el APELLIDO M "<caso_prueba>"
    And Selecciono TIPO DE USUARIO M
    And Selecciono el USUARIO M
    When Ingreso el NUMERO DE CONTACTO M "<caso_prueba>"
    When Ingreso el CORREO M "<caso_prueba>"
    When Ingreso la CONFIRMACION DEL CORREO M "<caso_prueba>"
    And Selecciono DEPARTAMENTO M
    And Selecciono DEPARTAMENTO1 M
    And Selecciono PROVINCIA M
    And Selecciono PROVINCIA1 M
    And Selecciono DISTRITO M
    And Selecciono DISTRITO1 M
    When Ingreso la DIRECCION M "<caso_prueba>"
    And Selecciono DEPARTAMENTOFINAL M
    And Selecciono DEPARTAMENTO FINAL1 M
    And Selecciono la opción ENVIAR M

    Examples:
      | caso_prueba |
      |           1 |