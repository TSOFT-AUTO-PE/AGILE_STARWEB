Feature: Reporteria


  @ConsultaReporteriaLogin
  Scenario Outline: Reportes de la WEB

    Given Ingreso a la url del Portal Config "<caso_prueba>"
    When Ingreso el Nombre de usuario "<caso_prueba>"
    And Ingreso la Contraseña "<caso_prueba>"
    Then se da clic en el boton Acceder ingresando correctamente

    Examples:
      | caso_prueba |
      |           1 |


  @ConsultaReporteriaUserSegments
  Scenario Outline: Reportes de la WEB

    Given Ingreso a la url del Portal Config "<caso_prueba>"
    When Ingreso el Nombre de usuario "<caso_prueba>"
    And Ingreso la Contraseña "<caso_prueba>"
    Then se da clic en el boton Acceder ingresando correctamente
    And se da Clic en UserSegments
    Then se valida carga de reporte de UserSegments
    And se descarga Reporte como archivo PNG
    And se descarga Reporte como archivo JPG
    And se descarga Reporte como archivo CSV
    And se descarga Reporte como archivo XLSX


    Examples:
      | caso_prueba |
      |           1 |

  @ConsultaReporteriaTOPCINCOUserSegments
  Scenario Outline: Reportes de la WEB

    Given Ingreso a la url del Portal Config "<caso_prueba>"
    When Ingreso el Nombre de usuario "<caso_prueba>"
    And Ingreso la Contraseña "<caso_prueba>"
    Then se da clic en el boton Acceder ingresando correctamente
    And se da Clic en TopCinco UserSegments
    Then se valida carga de reporte de TOPCINCO UserSegments
    And se descarga Reporte TOP como archivo PNG
    And se descarga Reporte TOP como archivo JPG
    And se descarga Reporte TOP como archivo CSV
    And se imprime el reporte TOPCINCO

    Examples:
      | caso_prueba |
      |           1 |

  @ConsultaReporteriaReglasActivas
  Scenario Outline: Reportes de la WEB

    Given Ingreso a la url del Portal Config "<caso_prueba>"
    When Ingreso el Nombre de usuario "<caso_prueba>"
    And Ingreso la Contraseña "<caso_prueba>"
    Then se da clic en el boton Acceder ingresando correctamente
    And se da Clic en Reglas Activas
    Then se valida carga de reporte de Reglas Activas
    And se descarga Reporte RA como archivo PNG
    And se descarga Reporte RA como archivo CSV
    And se imprime el reporte Reglas Activas

    Examples:
      | caso_prueba |
      |           1 |

  @ConsultaReporteriaReglasporTipo
  Scenario Outline: Reportes de la WEB

    Given Ingreso a la url del Portal Config "<caso_prueba>"
    When Ingreso el Nombre de usuario "<caso_prueba>"
    And Ingreso la Contraseña "<caso_prueba>"
    Then se da clic en el boton Acceder ingresando correctamente
    And se da Clic en Reglas por tipo
    Then se valida carga de reporte de Reglas por tipo
    And se descarga Reporte RT como archivo PNG
    And se descarga Reporte RT como archivo CSV
    And se imprime el reporte Reglas por Tipo

    Examples:
      | caso_prueba |
      |           1 |

  @ConsultaReporteriaReglasporSegmento
  Scenario Outline: Reportes de la WEB

    Given Ingreso a la url del Portal Config "<caso_prueba>"
    When Ingreso el Nombre de usuario "<caso_prueba>"
    And Ingreso la Contraseña "<caso_prueba>"
    Then se da clic en el boton Acceder ingresando correctamente
    And se da Clic en Reglas por Segmento
    Then se valida carga de reporte de Reglas por Segmento
    And se descarga Reporte RS como archivo PNG
    And se descarga Reporte RS como archivo CSV
    And se imprime el reporte Reglas por Segmento

    Examples:
      | caso_prueba |
      |           1 |


  @ConsultaReporteria
  Scenario Outline: Reportes de la WEB - Se realiza validacion de todos los reportes generados

    Given Ingreso a la url del Portal Config "<caso_prueba>"
    When Ingreso el Nombre de usuario "<caso_prueba>"
    And Ingreso la Contraseña "<caso_prueba>"
    Then se da clic en el boton Acceder ingresando correctamente
    And se da Clic en UserSegments
    Then se valida carga de reporte de UserSegments
    And se descarga Reporte como archivo PNG
    And se descarga Reporte como archivo JPG
    And se descarga Reporte como archivo CSV
    And se descarga Reporte como archivo XLSX
    And se vuelve a la pantalla de seleccion de reporte
    And se da Clic en TopCinco UserSegments
    Then se valida carga de reporte de TOPCINCO UserSegments
    And se descarga Reporte TOP como archivo PNG
    And se descarga Reporte TOP como archivo JPG
    And se descarga Reporte TOP como archivo CSV
    And se vuelve a la pantalla de seleccion de reporte
    And se da Clic en Reglas Activas
    Then se valida carga de reporte de Reglas Activas
    And se descarga Reporte RA como archivo PNG
    And se descarga Reporte RA como archivo CSV
    And se vuelve a la pantalla de seleccion de reporte
    And se da Clic en Reglas por tipo
    Then se valida carga de reporte de Reglas por tipo
    And se descarga Reporte RT como archivo PNG
    And se descarga Reporte RT como archivo CSV
    And se vuelve a la pantalla de seleccion de reporte
    And se da Clic en Reglas por Segmento
    Then se valida carga de reporte de Reglas por Segmento
    And se descarga Reporte RS como archivo PNG
    And se descarga Reporte RS como archivo CSV
    And se imprime el reporte Reglas por Segmento

    Examples:
      | caso_prueba |
      |           1 |


