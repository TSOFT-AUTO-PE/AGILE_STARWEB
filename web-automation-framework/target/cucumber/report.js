$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("reporteria.feature");
formatter.feature({
  "line": 1,
  "name": "Reporteria",
  "description": "",
  "id": "reporteria",
  "keyword": "Feature"
});
formatter.scenarioOutline({
  "line": 55,
  "name": "Reportes de la WEB",
  "description": "",
  "id": "reporteria;reportes-de-la-web",
  "type": "scenario_outline",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 54,
      "name": "@ConsultaReporteriaReglasActivas"
    }
  ]
});
formatter.step({
  "line": 57,
  "name": "Ingreso a la url del Portal Config \"\u003ccaso_prueba\u003e\"",
  "keyword": "Given "
});
formatter.step({
  "line": 58,
  "name": "Ingreso el Nombre de usuario \"\u003ccaso_prueba\u003e\"",
  "keyword": "When "
});
formatter.step({
  "line": 59,
  "name": "Ingreso la Contraseña \"\u003ccaso_prueba\u003e\"",
  "keyword": "And "
});
formatter.step({
  "line": 60,
  "name": "se da clic en el boton Acceder ingresando correctamente",
  "keyword": "Then "
});
formatter.step({
  "line": 61,
  "name": "se da Clic en Reglas Activas",
  "keyword": "And "
});
formatter.step({
  "line": 62,
  "name": "se valida carga de reporte de Reglas Activas",
  "keyword": "Then "
});
formatter.step({
  "line": 63,
  "name": "se descarga Reporte RA como archivo PNG",
  "keyword": "And "
});
formatter.step({
  "line": 64,
  "name": "se descarga Reporte RA como archivo CSV",
  "keyword": "And "
});
formatter.step({
  "line": 65,
  "name": "se imprime el reporte Reglas Activas",
  "keyword": "And "
});
formatter.examples({
  "line": 67,
  "name": "",
  "description": "",
  "id": "reporteria;reportes-de-la-web;",
  "rows": [
    {
      "cells": [
        "caso_prueba"
      ],
      "line": 68,
      "id": "reporteria;reportes-de-la-web;;1"
    },
    {
      "cells": [
        "1"
      ],
      "line": 69,
      "id": "reporteria;reportes-de-la-web;;2"
    }
  ],
  "keyword": "Examples"
});
formatter.before({
  "duration": 613063900,
  "status": "passed"
});
formatter.before({
  "duration": 13217079900,
  "status": "passed"
});
formatter.scenario({
  "line": 69,
  "name": "Reportes de la WEB",
  "description": "",
  "id": "reporteria;reportes-de-la-web;;2",
  "type": "scenario",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 54,
      "name": "@ConsultaReporteriaReglasActivas"
    }
  ]
});
formatter.step({
  "line": 57,
  "name": "Ingreso a la url del Portal Config \"1\"",
  "matchedColumns": [
    0
  ],
  "keyword": "Given "
});
formatter.step({
  "line": 58,
  "name": "Ingreso el Nombre de usuario \"1\"",
  "matchedColumns": [
    0
  ],
  "keyword": "When "
});
formatter.step({
  "line": 59,
  "name": "Ingreso la Contraseña \"1\"",
  "matchedColumns": [
    0
  ],
  "keyword": "And "
});
formatter.step({
  "line": 60,
  "name": "se da clic en el boton Acceder ingresando correctamente",
  "keyword": "Then "
});
formatter.step({
  "line": 61,
  "name": "se da Clic en Reglas Activas",
  "keyword": "And "
});
formatter.step({
  "line": 62,
  "name": "se valida carga de reporte de Reglas Activas",
  "keyword": "Then "
});
formatter.step({
  "line": 63,
  "name": "se descarga Reporte RA como archivo PNG",
  "keyword": "And "
});
formatter.step({
  "line": 64,
  "name": "se descarga Reporte RA como archivo CSV",
  "keyword": "And "
});
formatter.step({
  "line": 65,
  "name": "se imprime el reporte Reglas Activas",
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "1",
      "offset": 36
    }
  ],
  "location": "steps_reporteria.ingresoALaUrlDelPortalConfig(String)"
});
formatter.result({
  "duration": 12237010200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "1",
      "offset": 30
    }
  ],
  "location": "steps_consultaLineasB2B.ingresoElNombreDeUsuario(String)"
});
formatter.result({
  "duration": 1567663300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "1",
      "offset": 23
    }
  ],
  "location": "steps_consultaLineasB2B.ingresoLaContraseña(String)"
});
formatter.result({
  "duration": 1514392900,
  "status": "passed"
});
formatter.match({
  "location": "steps_consultaLineasB2B.seDaClicEnElBotonAccederIngresandoCorrectamente()"
});
formatter.result({
  "duration": 3234997100,
  "status": "passed"
});
formatter.match({
  "location": "steps_reporteria.seDaClicEnReglasActivas()"
});
formatter.result({
  "duration": 2620584200,
  "status": "passed"
});
formatter.match({
  "location": "steps_reporteria.seValidaCargaDeReporteDeReglasActivas()"
});
formatter.result({
  "duration": 1172256900,
  "status": "passed"
});
formatter.match({
  "location": "steps_reporteria.seDescargaReporteRAComoArchivoPNG()"
});
formatter.result({
  "duration": 9466320600,
  "status": "passed"
});
formatter.match({
  "location": "steps_reporteria.seDescargaReporteRAComoArchivoCSV()"
});
formatter.result({
  "duration": 9007583400,
  "status": "passed"
});
formatter.match({
  "location": "steps_reporteria.seImprimeElReporteReglasActivas()"
});
formatter.result({
  "duration": 16587658600,
  "status": "passed"
});
formatter.after({
  "duration": 2306650100,
  "status": "passed"
});
});