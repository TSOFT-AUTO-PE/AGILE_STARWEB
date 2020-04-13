package com.tsoft.bot.frontend.steps.reclamo;

import com.tsoft.bot.frontend.helpers.Hook;
import com.tsoft.bot.frontend.utility.ExcelReader;
import com.tsoft.bot.frontend.utility.ExtentReportUtil;
import com.tsoft.bot.frontend.utility.GenerateWord;
import com.tsoft.bot.frontend.utility.Sleeper;
import java.awt.event.KeyEvent;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

import cucumber.api.java.en.When;
import org.openqa.selenium.WebDriver;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.util.HashMap;
import java.util.List;

import static com.tsoft.bot.frontend.pageobject.Reclamo.PageObject_Reclamo_Movil.*;

public class steps_registroReclamo_Movil {

    private static final String EXCEL_WEB = "excel/Registro Reclamo Movil.xlsx";
    private static final String RECLAMO_WEB = "Reclamo";
    private static final String COLUMNA_URL = "URL";
    private static final String COLUMNA_NUMERO_CELULAR = "NUMERO_CELULAR";
    private static final String COLUMNA_NUMERO_DOCUMENTO = "NUMERO_DOCUMENTO";
    private static final String COLUMNA_CAPTCHA = "CAPTCHA";
    private static final String COLUMNA_NUMERO_RECIBO = "NUMERO_RECIBO";
    private static final String COLUMNA_COMENTARIO_ADICIONAL = "COMENTARIO_ADICIONAL";
    private static final String COLUMNA_NOMBRE = "NOMBRE";
    private static final String COLUMNA_APELLIDO = "APELLIDO";
    private static final String COLUMNA_NUMERO_CONTACTO = "NUMERO_CONTACTO";
    private static final String COLUMNA_CORREO = "CORREO";
    private static final String COLUMNA_CONFIRMACION_CORREO = "CONFIRMACION_CORREO";
    private static final String COLUMNA_DIRECCION = "DIRECCION";
    private static final String COLUMNA_ADJUNTA_RECIBO = "ADJUNTA_RECIBO";
    private static final String COLUMNA_DATOS = "DATOS";
    private static final String COLUMNA_NUMERO_CELULAR_DATOS = "NUMERO_CELULAR_DATOS";
    private static final String COLUMNA_ARCHIVO_ADJUNTO = "ARCHIVO_ADJUNTO";
    private static final String COLUMNA_RAZONES_QUEJAS = "RAZONES_QUEJAS";
    private static final String COLUMNA_NUMERO_CELULAR_P = "NUMERO_CELULAR_P";
    private static final String COLUMNA_NUMERO_DOCUMENTO_P = "NUMERO_DOCUMENTO_P";
    private static final String COLUMNA_COMENTARIO_OFERTA_PROMOCION = "COMENTARIO_OFERTA_PROMOCION";
    private static final String COLUMNA_COMENTARIO_PLAN_ACORDO = "COMENTARIO_PLAN_ACORDO";
    private static final String COLUMNA_COMENTARIO_CORREO_ELECTRONICO = "COMENTARIO_CORREO_ELECTRONICO";
    private static final String COLUMNA_COMENTARIO_DIRECCION_ENVIO = "COMENTARIO_DIRECCION_ENVIO";
    private static final String COLUMNA_COMENTARIO_ESPECIFICA_OFERTA = "COMENTARIO_ESPECIFICA_OFERTA";
    private static final String COLUMNA_COMENTARIO_ESPECIFICA_BENEFICIOS_PREPLAN = "COMENTARIO_ESPECIFICA_BENEFICIOS_PREPLAN";
    private static final String COLUMNA_COMENTARIO_ESPECIFICA_BENEFICIOS_CONTROL = "COMENTARIO_ESPECIFICA_BENEFICIOS_CONTROL";
    private static final String COLUMNA_COMENTARIO_ESPECIFICA_BONO_PLAN = "COMENTARIO_ESPECIFICA_BONO_PLAN";
    private static final String COLUMNA_COMENTARIO_ESPECIFICA_BONO_PLAN_DUPLICA = "COMENTARIO_ESPECIFICA_BONO_PLAN_DUPLICA";
    private static final String COLUMNA_COMENTARIO_ESPECIFICA_ERROR = "COMENTARIO_ADICIONAL";
    private static final String COLUMNA_COMENTARIO_IMPORTE_OFRECIDO = "COMENTARIO_IMPORTE_OFRECIDO";






    private static GenerateWord generateWord = new GenerateWord();
    private WebDriver driver;

    public steps_registroReclamo_Movil() { this.driver = Hook.getDriver(); }

    private List<HashMap<String, String>> getData() throws Throwable {
        return ExcelReader.data(EXCEL_WEB, RECLAMO_WEB);
    }

    @Given("^Ingreso a la URL RECLAMOS MOVIL \"([^\"]*)\"$")
    public void ingresoALaURLRECLAMOSMOVIL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String url = getData().get(reclamo).get(COLUMNA_URL);
            driver.get(url);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se inició correctamente la página Registro Reclamo");
            generateWord.sendText("Se inició correctamente la página Registro Reclamo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opcion MOVIL$")
    public void seleccionoLaOpcionMOVIL() throws Exception {
        try {
            driver.findElement(BTN_MOVIL).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic al botón Movíl");
            generateWord.sendText("Se da clic al botón Movíl");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Ingreso el NUMERO CELULAR \"([^\"]*)\"$")
    public void ingresoElNUMEROCELULAR(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_celular = getData().get(reclamo).get(COLUMNA_NUMERO_CELULAR);
            driver.findElement(TXT_NUMERO_CELULAR).sendKeys(num_celular);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Número Celular");
            generateWord.sendText("Se ingresa correctamente el Número Celular");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono TIPO DE DOCUMENTO MOVIL$")
    public void seleccionoTIPODEDOCUMENTOMOVIL() throws Exception {
        try {
            driver.findElement(LST_TDOC).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en el desplegable de Tipo de Documento");
            generateWord.sendText("Se da clic en el desplegable de Tipo de Documento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono el Tipo de Documento DNI MOVIL$")
    public void seleccionoElTipoDeDocumentoDNIMOVIL() throws Exception {
        try {
            driver.findElement(LST_DNI).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en el Tipo de Documento");
            generateWord.sendText("Se da clic en el desplegable de Tipo de Documento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NÚMERO DE DOCUMENTO MOVIL\"([^\"]*)\"$")
    public void ingresoElNÚMERODEDOCUMENTOMOVIL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_documento = getData().get(reclamo).get(COLUMNA_NUMERO_DOCUMENTO);
            driver.findElement(TXT_NUM_DOC).sendKeys(num_documento);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Número de documento");
            generateWord.sendText("Se ingresa correctamente el Número de documento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NÚMERO DE CAPTCHA MOVIL\"([^\"]*)\"$")
    public void ingresoElNÚMERODECAPTCHAMOVIL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_documento = getData().get(reclamo).get(COLUMNA_CAPTCHA);
            driver.findElement(TXT_CAPTCHA).sendKeys(num_documento);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Número de documento");
            generateWord.sendText("Se ingresa correctamente el Número de documento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción COMENCEMOS MOVIL$")
    public void seleccionoLaOpciónCOMENCEMOSMOVIL() throws Exception {
        try {
            driver.findElement(BTN_COMENCEMOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingreso la validación correctamente");
            generateWord.sendText("Se ingreso la validación correctamente");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono el boton NO$")
    public void seleccionoElBotonNO() throws Exception {
        try {
            driver.findElement(BTN_NO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO");
            generateWord.sendText("Se selecciona la opción NO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción PENALIDAD$")
    public void seleccionoLaOpciónPENALIDAD() throws Exception {
        try {
            driver.findElement(RBN_PENALIDAD).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción Penalidad");
            generateWord.sendText("Se selecciona la opción Penalidad");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción CONTINUAR$")
    public void seleccionoLaOpciónCONTINUAR() throws Exception {
        try {
            driver.findElement(BTN_CONTINUAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción Continuar");
            generateWord.sendText("Se selecciona la opción Continuar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción MES RECIBO RECLAMO MOVIL$")
    public void seleccionoLaOpciónMESRECIBORECLAMOMOVIL() throws Exception {
        try {
            driver.findElement(LST_MES).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se despliega la lista de Meses");
            generateWord.sendText("Se despliega la lista de Meses");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono el MES MOVIL$")
    public void seleccionoElMESMOVIL() throws Exception {
        try {
            driver.findElement(LST_M).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Mes");
            generateWord.sendText("Se selecciona el Mes");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ANIO RECIBO RECLAMO MOVIL$")
    public void seleccionoLaOpciónANIORECIBORECLAMOMOVIL() throws Exception {
        try {
            driver.findElement(LST_ANIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se despliega la lista de Años");
            generateWord.sendText("Se despliega la lista de Años");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la ANIO MOVIL$")
    public void seleccionoLaANIOMOVIL() throws Exception {
        try {
            driver.findElement(LST_ANIOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Año");
            generateWord.sendText("Se selecciona el Año");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción NÚMERO DE RECIBO MOVIL$")
    public void seleccionoLaOpciónNÚMERODERECIBOMOVIL() throws Exception {
        try {
            driver.findElement(RBN_NUM_RECIBO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona Numero de Recibo");
            generateWord.sendText("Se selecciona Numero de Recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NÚMERO DE RECIBO MOVIL\"([^\"]*)\"$")
    public void ingresoElNÚMERODERECIBOMOVIL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_recibo = getData().get(reclamo).get(COLUMNA_NUMERO_RECIBO);
            driver.findElement(TXT_NUN_RECIBO1).sendKeys(num_recibo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Número de recibo");
            generateWord.sendText("Se ingresa correctamente el Número de recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el COMENTARIO ADICIONAL MOVIL\"([^\"]*)\"$")
    public void ingresoElCOMENTARIOADICIONALMOVIL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String comentario_adi = getData().get(reclamo).get(COLUMNA_COMENTARIO_ADICIONAL);
            driver.findElement(TXT_COMEN_ADICIONAL).sendKeys(comentario_adi);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Comentario Adicional");
            generateWord.sendText("Se ingresa correctamente el Comentario Adicional");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NOMBRE M \"([^\"]*)\"$")
    public void ingresoElNOMBREM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String nombre = getData().get(reclamo).get(COLUMNA_NOMBRE);
            driver.findElement(TXT_NOMBRE).sendKeys(nombre);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Nombre");
            generateWord.sendText("Se ingresa correctamente el Nombre");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^INgreso el APELLIDO M \"([^\"]*)\"$")
    public void ingresoElAPELLIDOM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String apellido = getData().get(reclamo).get(COLUMNA_APELLIDO);
            driver.findElement(TXT_APELLIDO).sendKeys(apellido);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Apellido");
            generateWord.sendText("Se ingresa correctamente el Apellido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono TIPO DE USUARIO M$")
    public void seleccionoTIPODEUSUARIOM() throws Exception {
        try {
            driver.findElement(LST_TIPO_USUARIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la lista de Tipo de Usuario");
            generateWord.sendText("Se selecciona la lista de Tipo de Usuario");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono el USUARIO M$")
    public void seleccionoElUSUARIOM() throws Exception {
        try {
            driver.findElement(LST_USUARIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Usuario");
            generateWord.sendText("Se selecciona el Usuario");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NUMERO DE CONTACTO M \"([^\"]*)\"$")
    public void ingresoElNUMERODECONTACTOM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String nun_contacto = getData().get(reclamo).get(COLUMNA_NUMERO_CONTACTO);
            driver.findElement(TXT_NUM_CONTACTO).sendKeys(nun_contacto);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Número de contacto");
            generateWord.sendText("Se ingresa correctamente el Número de contacto");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el CORREO M \"([^\"]*)\"$")
    public void ingresoElCORREOM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String correo = getData().get(reclamo).get(COLUMNA_CORREO);
            driver.findElement(TXT_CORREO).sendKeys(correo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Correo");
            generateWord.sendText("Se ingresa correctamente el Correo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la CONFIRMACION DEL CORREO M \"([^\"]*)\"$")
    public void ingresoLaCONFIRMACIONDELCORREOM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String con_correo = getData().get(reclamo).get(COLUMNA_CONFIRMACION_CORREO);
            driver.findElement(TXT_CONF_CORREO).sendKeys(con_correo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente la confirmacion del  Correo");
            generateWord.sendText("Se ingresa correctamente la confirmacion del Correo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DEPARTAMENTO M$")
    public void seleccionoDEPARTAMENTOM() throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la lista desplegable de departamento");
            generateWord.sendText("Se selecciona la lista desplegable de departamento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DEPARTAMENTO(\\d+) M$")
    public void seleccionoDEPARTAMENTOM(int arg0) throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Departamento");
            generateWord.sendText("Se selecciona el Departamento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono PROVINCIA M$")
    public void seleccionoPROVINCIAM() throws Exception {
        try {
            driver.findElement(LST_PROVINCIA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona  la lista desplegable de Provincia");
            generateWord.sendText("Se selecciona la lista desplegable de Provincia");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono PROVINCIA(\\d+) M$")
    public void seleccionoPROVINCIAM(int arg0) throws Exception {
        try {
            driver.findElement(LST_PROVINCIA1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona  la  Provincia");
            generateWord.sendText("Se selecciona la Provincia");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DISTRITO M$")
    public void seleccionoDISTRITOM() throws Exception {
        try {
            driver.findElement(LST_DISTRITO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la lista desplegable del Distrito");
            generateWord.sendText("Se selecciona la lista desplegable del Distrito");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DISTRITO(\\d+) M$")
    public void seleccionoDISTRITOM(int arg0) throws Exception {
        try {
            driver.findElement(LST_DISTRITO1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Distrito");
            generateWord.sendText("Se selecciona el Distrito");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la DIRECCION M \"([^\"]*)\"$")
    public void ingresoLaDIRECCIONM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String direccion = getData().get(reclamo).get(COLUMNA_DIRECCION);
            driver.findElement(TXT_DIRECCION).sendKeys(direccion);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente la Dirección");
            generateWord.sendText("Se ingresa correctamente la la Dirección");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DEPARTAMENTOFINAL M$")
    public void seleccionoDEPARTAMENTOFINALM() throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO_FINAL).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la lista desplegable de Departamento Final");
            generateWord.sendText("Se selecciona la lista desplegable de Departamento Final");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DEPARTAMENTO FINAL(\\d+) M$")
    public void seleccionoDEPARTAMENTOFINALM(int arg0) throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO_FINAL1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Departamento Final");
            generateWord.sendText("Se selecciona el Departamento Final");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ENVIAR M$")
    public void seleccionoLaOpciónENVIARM() throws Exception {
        try {
            driver.findElement(BTN_ENVIAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Boton Enviar");
            generateWord.sendText("Se selecciona el Boton Enviar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SI$")
    public void seleccionoLaOpcionSI() throws Exception {
        try {
            driver.findElement(BTN_SI).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Boton SI");
            generateWord.sendText("Se selecciona el Boton SI");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO\\\\?$")
    public void seleccionoLaOpcionNOESTASDEACUERDOCONLARESPUESTAATURECLAMO() throws Exception {
        try {
            driver.findElement(RBN_APELACIONES).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO");
            generateWord.sendText("Se selecciona la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Selecciono la opcion ADJUNTA \"([^\"]*)\"$")
    public void seleccionoLaOpcionADJUNTA(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String link = getData().get(reclamo).get(COLUMNA_ADJUNTA_RECIBO);
            driver.findElement(BTN_ADJUNTA).click();
            Thread.sleep(5000);
            Robot robot = new Robot();
            String text = link;
            StringSelection stringSelection = new StringSelection(text);
            Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
            clipboard.setContents(stringSelection, stringSelection);
            robot.keyPress(KeyEvent.VK_CONTROL);
            robot.keyPress(KeyEvent.VK_V);
            robot.keyRelease(KeyEvent.VK_V);
            robot.keyRelease(KeyEvent.VK_CONTROL);
            Thread.sleep(2000);
            robot.keyPress(KeyEvent.VK_ENTER);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona de Archivo");
            generateWord.sendText("Se selecciona de Archivo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso los DATOS DE RESOLUCION M \"([^\"]*)\"$")
    public void ingresoLosDATOSDERESOLUCIONM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String codigo = getData().get(reclamo).get(COLUMNA_DATOS);
            driver.findElement(TXT_DATOS).sendKeys(codigo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente los Datos");
            generateWord.sendText("Se ingresa correctamente los Datos");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la FECHA DE EMISION M$")
    public void seleccionoLaFECHADEEMISIONM() throws Exception {
        try {
            driver.findElement(BTN_FECHA_EMI).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se despliega fecha de EMISION");
            generateWord.sendText("Se despliega fecha de EMISION");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono FECHA EMISION M$")
    public void seleccionoFECHAEMISIONM() throws Exception {
        try {
            driver.findElement(BTN_FECHA_EMICION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona fecha de EMISION");
            generateWord.sendText("Se selecciona fecha de EMISION");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion CERRAR M$")
    public void seleccionoLaOpcionCERRARM() throws Exception {
        try {
            driver.findElement(BTN_CERRAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el boton Cerrar");
            generateWord.sendText("Se selecciona el boton Cerrar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la FECHA DE RECEPCION M$")
    public void seleccionoLaFECHADERECEPCIONM() throws Exception {
        try {
            driver.findElement(BTN_FECHA_REC).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se despliega la fecha de Recepción");
            generateWord.sendText("Se despliega la fecha de Recepción");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono FECHA RECEPCION M$")
    public void seleccionoFECHARECEPCIONM() throws Exception {
        try {
            driver.findElement(BTN_FECHA_RECEPCION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la fecha de Recepción");
            generateWord.sendText("Se selecciona la fecha de Recepción");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion CERRAR RECEPCION M$")
    public void seleccionoLaOpcionCERRARRECEPCIONM() throws Exception {
        try {
            driver.findElement(BTN_CERRAR_RE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el icono Cerrar");
            generateWord.sendText("Se selecciona el icono Cerrar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opcion QUEJAS M$")
    public void seleccionoLaOpcionQUEJASM() throws Exception {
        try {
            driver.findElement(RBN_QUEJAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?");
            generateWord.sendText("Se selecciona la opción de ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NUMERO DE TELEFONO CELULAR M \"([^\"]*)\"$")
    public void ingresoElNUMERODETELEFONOCELULARM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_celular = getData().get(reclamo).get(COLUMNA_NUMERO_CELULAR_DATOS);
            driver.findElement(TXT_NUN_TELEFONO_CELULAR).sendKeys(num_celular);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el némero de Celular");
            generateWord.sendText("Se ingresa correctamente el némero de Celular");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono el boton ARCHIVO M \"([^\"]*)\"$")
    public void seleccionoElBotonARCHIVOM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String link = getData().get(reclamo).get(COLUMNA_ARCHIVO_ADJUNTO);
            driver.findElement(BTN_ARCHIVO).click();
            Thread.sleep(5000);
            Robot robot = new Robot();
            String text = link;
            StringSelection stringSelection = new StringSelection(text);
            Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
            clipboard.setContents(stringSelection, stringSelection);
            robot.keyPress(KeyEvent.VK_CONTROL);
            robot.keyPress(KeyEvent.VK_V);
            robot.keyRelease(KeyEvent.VK_V);
            robot.keyRelease(KeyEvent.VK_CONTROL);
            Thread.sleep(2000);
            robot.keyPress(KeyEvent.VK_ENTER);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el Archivo Adjunto");
            generateWord.sendText("Se selecciona el Archivo Adjunto");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @When("^Ingreso RAZONES DE LA QUEJA M \"([^\"]*)\"$")
    public void ingresoRAZONESDELAQUEJAM(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String raz_queja = getData().get(reclamo).get(COLUMNA_RAZONES_QUEJAS);
            driver.findElement(TXT_RAZ_QUEJAS).sendKeys(raz_queja);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el número de Celular");
            generateWord.sendText("Se ingresa correctamente el número de Celular");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Ingreso el NUMERO CELULAR P\"([^\"]*)\"$")
    public void ingresoElNUMEROCELULARP(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String nun_celu_p = getData().get(reclamo).get(COLUMNA_NUMERO_CELULAR_P);
            driver.findElement(TXT_NUM_CELULAR_P).sendKeys(nun_celu_p);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el número de Celular");
            generateWord.sendText("Se ingresa correctamente el número de Celular");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NÚMERO DE DOCUMENTO MOVIL P\"([^\"]*)\"$")
    public void ingresoElNÚMERODEDOCUMENTOMOVILP(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String nun_doc_p = getData().get(reclamo).get(COLUMNA_NUMERO_DOCUMENTO_P);
            driver.findElement(TXT_NUM_DOCUMENTO_P).sendKeys(nun_doc_p);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el número de Documento");
            generateWord.sendText("Se ingresa correctamente el número de Documento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion CORTE/SUSPENSION/BAJA$")
    public void seleccionoLaOpcionCORTESUSPENSIONBAJA() throws Exception {
        try {
            driver.findElement(RBN_COR_SUS_BA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de CORTE/SUSPENSION/BAJA");
            generateWord.sendText("Se selecciona la opción de CORTE/SUSPENSION/BAJA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SOLICITE EL CORTE POR ROBO PERO LA LINEA SIGUE ACTIVA$")
    public void seleccionoLaOpcionSOLICITEELCORTEPORROBOPEROLALINEASIGUEACTIVA() throws Exception {
        try {
            driver.findElement(RBN_SOL_COR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SOLICITE EL CORTE POR ROBO PERO LA LINEA SIGUE ACTIVA");
            generateWord.sendText("Se selecciona la opción SOLICITE EL CORTE POR ROBO PERO LA LINEA SIGUE ACTIVA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SI P$")
    public void seleccionoLaOpcionSIP() throws Exception {
        try {
            driver.findElement(BTN_SI_P).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SI");
            generateWord.sendText("Se selecciona la opción SI");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO EH SOLICITADO EL CORTE POR ROBO DE MI LINEA$")
    public void seleccionoLaOpcionNOEHSOLICITADOELCORTEPORROBODEMILINEA() throws Exception {
        try {
            driver.findElement(RBN_NO_SOL_COR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO EH SOLICITADO EL CORTE POR ROBO DE MI LINEA");
            generateWord.sendText("Se selecciona la opción NO EH SOLICITADO EL CORTE POR ROBO DE MI LINEA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ME INDICARON TENER CORTE POR DEUDA PERO NO TENGO DEUDA$")
    public void seleccionoLaOpcionMEINDICARONTENERCORTEPORDEUDAPERONOTENGODEUDA() throws Exception {
        try {
            driver.findElement(RBN_ME_INDICARON).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción ME INDICARON TENER CORTE POR DEUDA PERO NO TENGO DEUDA");
            generateWord.sendText("Se selecciona la opción ME INDICARON TENER CORTE POR DEUDA PERO NO TENGO DEUDA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO RECONOZCO EL CORTE POR DEUDA$")
    public void seleccionoLaOpcionNORECONOZCOELCORTEPORDEUDA() throws Exception {
        try {
            driver.findElement(RBN_NO_RECONOZCO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO RECONOZCO EL CORTE POR DEUDA");
            generateWord.sendText("Se selecciona la opción NO RECONOZCO EL CORTE POR DEUDA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion CORTE/SUSPENSION SIN UNA RAZON JUSTIFICADA$")
    public void seleccionoLaOpcionCORTESUSPENSIONSINUNARAZONJUSTIFICADA() throws Exception {
        try {
            driver.findElement(RBN_CORTE_SIN_RAZON).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción  CORTE/SUSPENSION SIN UNA RAZON JUSTIFICADA");
            generateWord.sendText("Se selecciona la opción  CORTE/SUSPENSION SIN UNA RAZON JUSTIFICADA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SOLICITE UNA SUSPENSION TEMPORAL PERO MI LINEA SIGUE ACTIVA$")
    public void seleccionoLaOpcionSOLICITEUNASUSPENSIONTEMPORALPEROMILINEASIGUEACTIVA() throws Exception {
        try {
            driver.findElement(RBN_SOL_SUSPENSION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SOLICITE UNA SUSPENSION TEMPORAL PERO MI LINEA SIGUE ACTIVA");
            generateWord.sendText("Se selecciona la opción  SOLICITE UNA SUSPENSION TEMPORAL PERO MI LINEA SIGUE ACTIVA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ¿INCUMPLIMOS ALGUN OFRECIMIENTO\\? POSTPAGO$")
    public void seleccionoLaOpcionINCUMPLIMOSALGUNOFRECIMIENTOPOSTPAGO() throws Exception {
        try {
            driver.findElement(RBN_INCUMPLIMOS_OFRECIMIENTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción ¿INCUMPLIMOS ALGUN OFRECIMIENTO?");
            generateWord.sendText("Se selecciona la opción  ¿INCUMPLIMOS ALGUN OFRECIMIENTO?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion OFERTAS Y PROMOCIONES$")
    public void seleccionoLaOpcionOFERTASYPROMOCIONES() throws Exception {
        try {
            driver.findElement(RBN_OFERTA_PROMOCIONES).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción OFERTAS Y PROMOCIONES");
            generateWord.sendText("Se selecciona la opción  OFERTAS Y PROMOCIONES");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la COMENTARIO OFERTA/PROMOCION \"([^\"]*)\"$")
    public void ingresoLaCOMENTARIOOFERTAPROMOCION(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_oferta = getData().get(reclamo).get(COLUMNA_COMENTARIO_OFERTA_PROMOCION);
            driver.findElement(TXT_COMENTAIO_OFERTA).sendKeys(com_oferta);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO OFERTA/PROMOCION");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO OFERTA/PROMOCION");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ME ENTREGARON UN PLAN DISTINTO AL QUE CONTRATE$")
    public void seleccionoLaOpcionMEENTREGARONUNPLANDISTINTOALQUECONTRATE() throws Exception {
        try {
            driver.findElement(RBN_PLAN_DISTINTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción ME ENTREGARON UN PLAN DISTINTO AL QUE CONTRATE");
            generateWord.sendText("Se selecciona la opción  ME ENTREGARON UN PLAN DISTINTO AL QUE CONTRATE");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la COMENTARIO PLAN ACORDO \"([^\"]*)\"$")
    public void ingresoLaCOMENTARIOPLANACORDO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_PLAN_ACORDO);
            driver.findElement(TXT_COMENTAIO_PLAN_ACORDO).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO PLAN ACORDÓ");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO PLAN ACORDÓ");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion DERECHOS RECONOCIDOS EN CDU$")
    public void seleccionoLaOpcionDERECHOSRECONOCIDOSENCDU() throws Exception {
        try {
            driver.findElement(RBN_DERECHOS_RECONOCIDOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción DERECHOS RECONOCIDOS EN CDU");
            generateWord.sendText("Se selecciona la opción DERECHOS RECONOCIDOS EN CDU");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ME INFORMARON QUE INCREMENTARON MI TARIFA$")
    public void seleccionoLaOpcionMEINFORMARONQUEINCREMENTARONMITARIFA() throws Exception {
        try {
            driver.findElement(RBN_INCREMENTARON_TARIFA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción ME INFORMARON QUE INCREMENTARON MI TARIFA");
            generateWord.sendText("Se selecciona la opción ME INFORMARON QUE INCREMENTARON MI TARIFA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ACTIVACION INSTALACION$")
    public void seleccionoLaOpcionACTIVACIONINSTALACION() throws Exception {
        try {
            driver.findElement(RBN_ACTIVACION_INSTALACION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción ACTIVACION INSTALACION");
            generateWord.sendText("Se selecciona la opción ACTIVACION INSTALACION");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35,"FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion AUN NO ACTIVAN MI LINEA NUEVA$")
    public void seleccionoLaOpcionAUNNOACTIVANMILINEANUEVA() throws Exception {
        try {
            driver.findElement(RBN_NO_ACTIVAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción AUN NO ACTIVAN MI LINEA NUEVA");
            generateWord.sendText("Se selecciona la opción AUN NO ACTIVAN MI LINEA NUEVA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion AUN NO RECONECTAN MI LINEA$")
    public void seleccionoLaOpcionAUNNORECONECTANMILINEA() throws Exception {
        try {
            driver.findElement(RBN_NO_RECONECTAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción AUN NO RECONECTAN MI LINEA");
            generateWord.sendText("Se selecciona la opción AUN NO RECONECTAN MI LINEA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion BAJA/SUSPENSIONES$")
    public void seleccionoLaOpcionBAJASUSPENSIONES() throws Exception {
        try {
            driver.findElement(RBN_BAJA_SUSPENSIONES).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción BAJA/SUSPENSIONES");
            generateWord.sendText("Se selecciona la opción BAJA/SUSPENSIONES");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SOLICITE CORTAR MI SERVICIO Y SIGUE ACTIVO P$")
    public void seleccionoLaOpcionSOLICITECORTARMISERVICIOYSIGUEACTIVOP() throws Exception {
        try {
            driver.findElement(RBN_SOLICITE_CORTAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SOLICITE CORTAR MI SERVICIO Y SIGUE ACTIVO");
            generateWord.sendText("Se selecciona la opción SOLICITE CORTAR MI SERVICIO Y SIGUE ACTIVO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion FALTA DE ENTREGA RECIBO/DETALLE$")
    public void seleccionoLaOpcionFALTADEENTREGARECIBODETALLE() throws Exception {
        try {
            driver.findElement(RBN_ENTREGA_RECIBO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción FALTA DE ENTREGA RECIBO/DETALLE");
            generateWord.sendText("Se selecciona la opción FALTA DE ENTREGA RECIBO/DETALLE");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SOLICITE EL ENVIO DE MIS RECIBIOS A MI CORREO Y NO LLEGAN$")
    public void seleccionoLaOpcionSOLICITEELENVIODEMISRECIBIOSAMICORREOYNOLLEGAN() throws Exception {
        try {
            driver.findElement(RBN_SOLICITE_CORREO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SOLICITE EL ENVIO DE MIS RECIBIOS A MI CORREO Y NO LLEGAN");
            generateWord.sendText("Se selecciona la opción SOLICITE EL ENVIO DE MIS RECIBIOS A MI CORREO Y NO LLEGAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la COMENTARIO CORREO ELECTRONICO \"([^\"]*)\"$")
    public void ingresoLaCOMENTARIOCORREOELECTRONICO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_CORREO_ELECTRONICO);
            driver.findElement(TXT_COMENTAIO_CORREO_ELECTRONICO).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO CORREO ELECTRONICO");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO CORREO ELECTRONICO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SOLICITE EL ENVIO DE MIS RECIBIOS A MI DOMICILIO Y NO LLEGAN$")
    public void seleccionoLaOpcionSOLICITEELENVIODEMISRECIBIOSAMIDOMICILIOYNOLLEGAN() throws Exception {
        try {
            driver.findElement(RBN_SOLICITE_DOMICILIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SOLICITE EL ENVIO DE MIS RECIBIOS A MI DOMICILIO Y NO LLEGAN");
            generateWord.sendText("Se selecciona la opción SOLICITE EL ENVIO DE MIS RECIBIOS A MI DOMICILIO Y NO LLEGAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la COMENTARIO ESPECIFICA TU DIRECCION DE ENVIO \"([^\"]*)\"$")
    public void ingresoLaCOMENTARIOESPECIFICATUDIRECCIONDEENVIO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_DIRECCION_ENVIO);
            driver.findElement(TXT_COMENTAIO_DIRECCION_ENVIO).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO ESPECIFICA TU DIRECCION DE ENVIO");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO ESPECIFICA TU DIRECCION DE ENVIO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SOLICITE MI DETALLE DE LLAMADAS Y NO LAS HE RECIBIDO POST$")
    public void seleccionoLaOpcionSOLICITEMIDETALLEDELLAMADASYNOLASHERECIBIDOPOST() throws Exception {
        try {
            driver.findElement(RBN_DETALLE_LLAMADAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SOLICITE MI DETALLE DE LLAMADAS Y NO LAS HE RECIBIDO");
            generateWord.sendText("Se selecciona la opción SOLICITE MI DETALLE DE LLAMADAS Y NO LAS HE RECIBIDO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion VERACIDAD DE LA IMFORMACION POST$")
    public void seleccionoLaOpcionVERACIDADDELAIMFORMACIONPOST() throws Exception {
        try {
            driver.findElement(RBN_VERACIDAD_INFORMACION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción VERACIDAD DE LA IMFORMACION");
            generateWord.sendText("Se selecciona la opción VERACIDAD DE LA IMFORMACION");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME INFORMARON CORRECTAMENTE LOS BENEFICIOS DE MI PLAN$")
    public void seleccionoLaOpcionNOMEINFORMARONCORRECTAMENTELOSBENEFICIOSDEMIPLAN() throws Exception {
        try {
            driver.findElement(RBN_BENEFICIOS_PLAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME INFORMARON CORRECTAMENTE LOS BENEFICIOS DE MI PLAN");
            generateWord.sendText("Se selecciona la opción NO ME INFORMARON CORRECTAMENTE LOS BENEFICIOS DE MI PLAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ACEPTE UN EQUIPO PERO NO ME INDICARON SOBRE EL PLAZO DE PERMANENCIA$")
    public void seleccionoLaOpcionACEPTEUNEQUIPOPERONOMEINDICARONSOBREELPLAZODEPERMANENCIA() throws Exception {
        try {
            driver.findElement(RBN_PLAZO_PERMANENCIA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción ACEPTE UN EQUIPO PERO NO ME INDICARON SOBRE EL PLAZO DE PERMANENCIA");
            generateWord.sendText("Se selecciona la opción ACEPTE UN EQUIPO PERO NO ME INDICARON SOBRE EL PLAZO DE PERMANENCIA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME INFORMARON CORRECTAMENTE SOBRE LAS CAMPAÑAS/PROMOCIONES$")
    public void seleccionoLaOpcionNOMEINFORMARONCORRECTAMENTESOBRELASCAMPAÑASPROMOCIONES() throws Exception {
        try {
            driver.findElement(RBN_SOBRE_CAMPAÑAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME INFORMARON CORRECTAMENTE SOBRE LAS CAMPAÑAS/PROMOCIONES");
            generateWord.sendText("Se selecciona la opción NO ME INFORMARON CORRECTAMENTE SOBRE LAS CAMPAÑAS/PROMOCIONES");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion PORTABILIDAD POST$")
    public void seleccionoLaOpcionPORTABILIDADPOST() throws Exception {
        try {
            driver.findElement(RBN_PORTABILIDAD).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción PORTABILIDAD");
            generateWord.sendText("Se selecciona la opción PORTABILIDAD");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO SOLICITE PORTARME A MOVISTAR$")
    public void seleccionoLaOpcionNOSOLICITEPORTARMEAMOVISTAR() throws Exception {
        try {
            driver.findElement(RBN_NO_SOLICITE_PORTARME).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO SOLICITE PORTARME A MOVISTA");
            generateWord.sendText("Se selecciona la opción NO SOLICITE PORTARME A MOVISTA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO SOLICITE PORTARME A OTRO OPERADOR$")
    public void seleccionoLaOpcionNOSOLICITEPORTARMEAOTROOPERADOR() throws Exception {
        try {
            driver.findElement(RBN_NO_SOLICITE_PORTARME_OPERADOR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO SOLICITE PORTARME A OTRO OPERADOR");
            generateWord.sendText("Se selecciona la opción NO SOLICITE PORTARME A OTRO OPERADOR");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion RECHAZARON MI PEDIDO DE PORTARME A MOVISTAR$")
    public void seleccionoLaOpcionRECHAZARONMIPEDIDODEPORTARMEAMOVISTAR() throws Exception {
        try {
            driver.findElement(RBN_RECHAZARON_PORTARME).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción RECHAZARON MI PEDIDO DE PORTARME A MOVISTAR");
            generateWord.sendText("Se selecciona la opción RECHAZARON MI PEDIDO DE PORTARME A MOVISTAR");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion RECHAZARON MI PEDIDO DE PORTARME A OTRO OPERADOR$")
    public void seleccionoLaOpcionRECHAZARONMIPEDIDODEPORTARMEAOTROOPERADOR() throws Exception {
        try {
            driver.findElement(RBN_RECHAZARON_PORTARME_OPERADOR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción RECHAZARON MI PEDIDO DE PORTARME A OTRO OPERADOR");
            generateWord.sendText("Se selecciona la opción RECHAZARON MI PEDIDO DE PORTARME A OTRO OPERADOR");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion SUSPENDIERON MI SERVICIO CON OTRO OPERADOR POR DEUDA EN MOVISTAR$")
    public void seleccionoLaOpcionSUSPENDIERONMISERVICIOCONOTROOPERADORPORDEUDAENMOVISTAR() throws Exception {
        try {
            driver.findElement(RBN_SUSPENDIERON_SERVICIO_DEUDA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SUSPENDIERON MI SERVICIO CON OTRO OPERADOR POR DEUDA EN MOVISTAR");
            generateWord.sendText("Se selecciona la opción SUSPENDIERON MI SERVICIO CON OTRO OPERADOR POR DEUDA EN MOVISTAR");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME ENTREGARON LA PROMOCION/CAMPAÑA ACORADA$")
    public void seleccionoLaOpcionNOMEENTREGARONLAPROMOCIONCAMPAÑAACORADA() throws Exception {
        try {
            driver.findElement(RBN_NO_ENTREGARON_PROMOCION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME ENTREGARON LA PROMOCION/CAMPAÑA ACORADA");
            generateWord.sendText("Se selecciona la opción NO ME ENTREGARON LA PROMOCION/CAMPAÑA ACORADA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la COMENTARIO ESPECIFICA OFERTA/PROMOCION \"([^\"]*)\"$")
    public void ingresoLaCOMENTARIOESPECIFICAOFERTAPROMOCION(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_OFERTA);
            driver.findElement(TXT_COMENTAIO_ESPECIFICA_OFERTA).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO ESPECIFICA OFERTA/PROMOCION");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO ESPECIFICA OFERTA/PROMOCION");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion DESACUERDO POR RECIBO PAGADO$")
    public void seleccionoLaOpcionDESACUERDOPORRECIBOPAGADO() throws Exception {
        try {
            driver.findElement(RBN_DESACUERDO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción DESACUERDO POR RECIBO PAGADO");
            generateWord.sendText("Se selecciona la opción DESACUERDO POR RECIBO PAGADO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion DESACUERDO POR RECIBO PAGADO POST$")
    public void seleccionoLaOpcionDESACUERDOPORRECIBOPAGADOPOST() throws Exception {
        try {
            driver.findElement(RBN_DESACUERDO_RECIBO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción DESACUERDO POR RECIBO PAGADO");
            generateWord.sendText("Se selecciona la opción DESACUERDO POR RECIBO PAGADO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ¿CUENTAS CON COMPROBANTE DE PAGO Y NO FIGURA EN NUESTRO SISTEMA\\?$")
    public void seleccionoLaOpcionCUENTASCONCOMPROBANTEDEPAGOYNOFIGURAENNUESTROSISTEMA() throws Exception {
        try {
            driver.findElement(RBN_COMPROBANTE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción  ¿CUENTAS CON COMPROBANTE DE PAGO Y NO FIGURA EN NUESTRO SISTEMA?");
            generateWord.sendText("Se selecciona la opción  ¿CUENTAS CON COMPROBANTE DE PAGO Y NO FIGURA EN NUESTRO SISTEMA?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion TARJETA PREPAGO/ACREDITACIONES$")
    public void seleccionoLaOpcionTARJETAPREPAGOACREDITACIONES() throws Exception {
        try {
            driver.findElement(RBN_TARJETA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción TARJETA PREPAGO/ACREDITACIONES");
            generateWord.sendText("Se selecciona la opción TARJETA PREPAGO/ACREDITACIONES");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE MI PRE PLAN$")
    public void seleccionoLaOpcionNOMEENTREGARONLOSBENEFICIOSDEMIPREPLAN() throws Exception {
        try {
            driver.findElement(RBN_MI_PREPLAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME ENTREGARON LOS BENEFICIOS DE MI PRE PLAN");
            generateWord.sendText("Se selecciona la opción NO ME ENTREGARON LOS BENEFICIOS DE MI PRE PLAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso la COMENTARIO QUE BENEFICIOS PREPLAN \"([^\"]*)\"$")
    public void ingresoLaCOMENTARIOQUEBENEFICIOSPREPLAN(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_BENEFICIOS_PREPLAN);
            driver.findElement(TXT_COMENTAIO_ESPECIFICA_BENEFICIOS_PREPLAN).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO QUE BENEFICIOS PREPLAN");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO QUE BENEFICIOS PREPLAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE MI PLAN CONTROL$")
    public void seleccionoLaOpcionNOMEENTREGARONLOSBENEFICIOSDEMIPLANCONTROL() throws Exception {
        try {
            driver.findElement(RBN_MI_PLAN_CONTROL).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME ENTREGARON LOS BENEFICIOS DE MI PLAN CONTROL");
            generateWord.sendText("Se selecciona la opción NO ME ENTREGARON LOS BENEFICIOS DE MI PLAN CONTROL");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso EL COMENTARIO QUE BENEFICIOS PLAN CONTROL \"([^\"]*)\"$")
    public void ingresoELCOMENTARIOQUEBENEFICIOSPLANCONTROL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_BENEFICIOS_CONTROL);
            driver.findElement(TXT_COMENTAIO_ESPECIFICA_BENEFICIOS_PLAN_CONTROL).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO QUE BENEFICIOS PLAN CONTROL");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO QUE BENEFICIOS PLAN CONTROL");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME ENTREGARON EL BONO OFRECIDO$")
    public void seleccionoLaOpcionNOMEENTREGARONELBONOOFRECIDO() throws Exception {
        try {
            driver.findElement(RBN_BONO_OFRECIDO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME ENTREGARON EL BONO OFRECIDO");
            generateWord.sendText("Se selecciona la opción NO ME ENTREGARON EL BONO OFRECIDO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso EL COMENTARIO BONO Y PLAN OFRECIDO \"([^\"]*)\"$")
    public void ingresoELCOMENTARIOBONOYPLANOFRECIDO(String casoDePrueba)  throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_BONO_PLAN);
            driver.findElement(TXT_COMENTAIO_ESPECIFICA_BONO_OFRECIDO).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO ESPECIFICA EL BONO Y TU PLAN");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO ESPECIFICA EL BONO Y TU PLAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME ENTREGARON EL BONO DUPLICA/TRIPLICA/CUADRUPLICA$")
    public void seleccionoLaOpcionNOMEENTREGARONELBONODUPLICATRIPLICACUADRUPLICA() throws Throwable {
        try {
            driver.findElement(RBN_BONO_DUPLICA_T_C).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME ENTREGARON EL BONO" +
                    " DUPLICA / TRIPLICA / CUADRIPLICA");
            generateWord.sendText("Se selecciona la opción NO ME ENTREGARON EL BONO DUPLICA / TRIPLICA " +
                    "/ CUADRIPLICA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO RECONOZCO EL DESCUENTO POR SMS PREMIUM DE MI SALDO$")
    public void seleccionoLaOpcionNORECONOZCOELDESCUENTOPORSMSPREMIUMDEMISALDO() throws Throwable {
        try {
            driver.findElement(RBN_SMSPREMIUM).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO RECONOZCO EL " +
                    "DESCUENTO POR SMS PREMIUM DE MI SALDO");
            generateWord.sendText("Se selecciona la opción NO RECONOZCO EL DESCUENTO POR SMS PREMIUM DE MI " +
                    "SALDO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion TARIFA INCORRECTA \\(BOLSAS Y RECARGAS\\)$")
    public void seleccionoLaOpcionTARIFAINCORRECTABOLSASYRECARGAS() throws Throwable {
        try {
            driver.findElement(RBN_TARIFAINCORRECTA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción TARIFA INCORRECTA " +
                    "(BOLSAS Y RECARGAS)");
            generateWord.sendText("Se selecciona la opción TARIFA INCORRECTA (BOLSAS Y RECARGAS)");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opcion NO ME ENTREGARON EL SALDO POR MI RECARGA FISICA/VIRTUAL$")
    public void seleccionoLaOpcionNOMEENTREGARONELSALDOPORMIRECARGAFISICAVIRTUAL() throws Throwable {
        try {
            driver.findElement(RBN_SALDORECARGA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME ENTREGARON EL " +
                    "SALDO POR MI RECARGA FISICA/VIRTUAL");
            generateWord.sendText("Se selecciona la opción NO ME ENTREGARON EL SALDO POR MI RECARGA " +
                    "FISICA/VIRTUAL");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opcion NO PUEDO COMPRAR SUPERCARGAS$")
    public void seleccionoLaOpcionNOPUEDOCOMPRARSUPERCARGAS() throws Throwable {
        try {
            driver.findElement(RBN_SUPERCARGA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO COMPRAR SUPERCARGAS");
            generateWord.sendText("Se selecciona la opción NO PUEDO COMPRAR SUPERCARGAS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opcion MOVISTAR PLAY CONSUME MIS DATOS Y ME INDICARON QUE ERA GRATIS$")
    public void seleccionoLaOpcionMOVISTARPLAYCONSUMEMISDATOSYMEINDICARONQUEERAGRATIS() throws Throwable {
        try {
            driver.findElement(RBN_MOVPLAY).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción MOVISTAR PLAY CONSUME MIS " +
                    "DATOS Y ME INDICARON QUE ERA GRATIS");
            generateWord.sendText("Se selecciona la opción MOVISTAR PLAY CONSUME MIS DATOS Y ME INDICARON " +
                    "QUE ERA GRATIS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }


    @And("^Selecciono la opcion MANTENGO INCONVENIENTES PARA AFILIARME A ARMA TU PLAN$")
    public void seleccionoLaOpcionMANTENGOINCONVENIENTESPARAAFILIARMEAARMATUPLAN() throws Throwable {
        try {
            driver.findElement(RBN_AFILIA_ARMA_PLAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción MANTENGO INCONVENIENTES" +
                    " PARA AFILIARME A ARMA TU PLAN");
            generateWord.sendText("Se selecciona la opción MANTENGO INCONVENIENTES PARA AFILIARME A ARMA " +
                    "TU PLAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion MANTENGO INCONVENIENTES PARA DESAFILIARME A ARMA TU PLAN$")
    public void seleccionoLaOpcionMANTENGOINCONVENIENTESPARADESAFILIARMEAARMATUPLAN() throws Throwable {
        try {
            driver.findElement(RBN_DESAFILIA_ARMA_PLAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción MANTENGO INCONVENIENTES " +
                    "PARA DESAFILIARME A ARMA TU PLAN");
            generateWord.sendText("Se selecciona la opción MANTENGO INCONVENIENTES PARA DESAFILIARME A " +
                    "ARMA TU PLAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO ME ENTREGARON LOS BENEFICIOS DE ARMA TU PLAN$")
    public void seleccionoLaOpcionNOMEENTREGARONLOSBENEFICIOSDEARMATUPLAN() throws Throwable {
        try {
            driver.findElement(RBN_BENEFICIO_ARMA_PLAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO ME ENTREGARON LOS " +
                    "BENEFICIOS DE ARMA TU PLAN");
            generateWord.sendText("Se selecciona la opción NO ME ENTREGARON LOS BENEFICIOS DE ARMA TU PLAN");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion MINUTOS$")
    public void seleccionoLaOpcionMINUTOS() throws Throwable {
        try {
            driver.findElement(RBN_MINUTOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción MINUTOS");
            generateWord.sendText("Se selecciona la opción MINUTOS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion SMS$")
    public void seleccionoLaOpcionSMS() throws Throwable {
        try {
            driver.findElement(RBN_SMS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción SMS");
            generateWord.sendText("Se selecciona la opción SMS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion DATOS$")
    public void seleccionoLaOpcionDATOS() throws Throwable {
        try {
            driver.findElement(RBN_DATOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción DATOS");
            generateWord.sendText("Se selecciona la opción DATOS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion CALIDAD$")
    public void seleccionoLaOpcionCALIDAD()  throws Throwable {
        try {
            driver.findElement(RBN_CALIDAD).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción CALIDAD");
            generateWord.sendText("Se selecciona la opción CALIDAD");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion TENGO PROBLEMAS PARA REALIZAR Y RECIBIR LLAMADAS$")
    public void seleccionoLaOpcionTENGOPROBLEMASPARAREALIZARYRECIBIRLLAMADAS() throws Throwable {
        try {
            driver.findElement(RBN_PROBRECEP).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción TENGO PROBLEMAS PARA " +
                    "REALIZAR Y RECIBIR LLAMADAS");
            generateWord.sendText("Se selecciona la opción TENGO PROBLEMAS PARA REALIZAR Y RECIBIR LLAMADAS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @When("^Especifica el MENSAJE DE ERROR LUGAR HORA FECHA \"([^\"]*)\"$")
    public void especificaElMENSAJEDEERRORLUGARHORAFECHA(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_ERROR);
            driver.findElement(TXT_COMENTARIO_ESPECIFICA_ERROR).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el MENSAJE DE ERROR");
            generateWord.sendText("Se ingresa correctamente el MENSAJE DE ERROR");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion PROBLEMAS CON EL SERVICIO$")
    public void seleccionoLaOpcionPROBLEMASCONELSERVICIO() throws Throwable {
        try {
            driver.findElement(RBN_PROBSERV).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción PROBLEMAS CON EL SERVICIO");
            generateWord.sendText("Se selecciona la opción PROBLEMAS CON EL SERVICIO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Especifica el PROBLEMA \"([^\"]*)\"$")
    public void especificaElPROBLEMA(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_acordo = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_ERROR);
            driver.findElement(TXT_COMENTARIO_ESPECIFICA_PROBLEMA).sendKeys(com_acordo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el PROBLEMA");
            generateWord.sendText("Se ingresa correctamente el PROBLEMA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion TENGO INCONVENIENTES CON EL ROAMING$")
    public void seleccionoLaOpcionTENGOINCONVENIENTESCONELROAMING() throws Throwable {
        try {
            driver.findElement(RBN_ROAMING).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción TENGO INCONVENIENTES " +
                    "CON EL ROAMING");
            generateWord.sendText("Se selecciona la opción TENGO INCONVENIENTES CON EL ROAMING");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Especifica el MENSAJE DE ERROR LUGAR \"([^\"]*)\"$")
    public void especificaElMENSAJEDEERRORLUGAR(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String mensaje = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_ERROR);
            driver.findElement(TXT_COMENTARIO_ESPECIFICA_MENSAJE).sendKeys(mensaje);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el MENSAJE DE ERROR");
            generateWord.sendText("Se ingresa correctamente el MENSAJE DE ERROR");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion MENSAJES DE TEXTO$")
    public void seleccionoLaOpcionMENSAJESDETEXTO() throws Throwable {
        try {
            driver.findElement(RBN_MSJTEXTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción MENSAJES DE TEXTO");
            generateWord.sendText("Se selecciona la opción MENSAJES DE TEXTO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }


    }

    @And("^Selecciono la opcion NO PUEDO RECIBIR SMS$")
    public void seleccionoLaOpcionNOPUEDORECIBIRSMS() throws Throwable {
        try {
            driver.findElement(RBN_RECIBIR_SMS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO RECIBIR SMS");
            generateWord.sendText("Se selecciona la opción NO PUEDO RECIBIR SMS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO PUEDO ENVIAR SMS$")
    public void seleccionoLaOpcionNOPUEDOENVIARSMS() throws Throwable {
        try {
            driver.findElement(RBN_ENVIAR_SMS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO ENVIAR SMS");
            generateWord.sendText("Se selecciona la opción NO PUEDO ENVIAR SMS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO PUEDO USAR LOS DATOS DE MI CELULAR$")
    public void seleccionoLaOpcionNOPUEDOUSARLOSDATOSDEMICELULAR() throws Throwable {
        try {
            driver.findElement(RBN_DATOSCEL).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO USAR LOS DATOS DE MI CELULAR");
            generateWord.sendText("Se selecciona la opción NO PUEDO USAR LOS DATOS DE MI CELULAR");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO PUEDO USAR LOS DATOS DE MI INTERNET MOVIL BAM$")
    public void seleccionoLaOpcionNOPUEDOUSARLOSDATOSDEMIINTERNETMOVILBAM() throws Throwable {
        try {
            driver.findElement(RBN_DATOSBAM).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO USAR LOS DATOS DE MI INTERNET MOVIL BAM");
            generateWord.sendText("Se selecciona la opción NO PUEDO USAR LOS DATOS DE MI INTERNET MOVIL BAM");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opcion CUENTO CON EL PAQUETE ARMA TU PLAN Y NO PUEDO CONSUMIRLO$")
    public void seleccionoLaOpcionCUENTOCONELPAQUETEARMATUPLANYNOPUEDOCONSUMIRLO() throws Throwable {
        try {
            driver.findElement(RBN_PAQUETE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción CUENTO CON EL PAQUETE ARMA TU PLAN Y NO PUEDO CONSUMIRLO");
            generateWord.sendText("Se selecciona la opción CUENTO CON EL PAQUETE ARMA TU PLAN Y NO PUEDO CONSUMIRLO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opcion NO PUEDO CONSULTAR MI SALDO ENVIANDO SMS A$")
    public void seleccionoLaOpcionNOPUEDOCONSULTARMISALDOENVIANDOSMSA() throws Throwable {
        try {
            driver.findElement(RBN_CONSULTA_SALDO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO CONSULTAR MI SALDO ENVIANDO SMS A 550, 600");
            generateWord.sendText("Se selecciona la opción NO PUEDO CONSULTAR MI SALDO ENVIANDO SMS A 550, 600");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO PUEDO AFILIARME A LOS SMS PREMIUM$")
    public void seleccionoLaOpcionNOPUEDOAFILIARMEALOSSMSPREMIUM() throws Throwable {
        try {
            driver.findElement(RBN_AFIL_SMS_PREMIUM).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO AFILIARME A LOS SMS PREMIUM");
            generateWord.sendText("Se selecciona la opción NO PUEDO AFILIARME A LOS SMS PREMIUM");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion NO PUEDO DESAFILIARME A LOS SMS PREMIUM$")
    public void seleccionoLaOpcionNOPUEDODESAFILIARMEALOSSMSPREMIUM() throws Throwable {
        try {
            driver.findElement(RBN_DESAFIL_SMS_PREMIUM).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO DESAFILIARME A LOS SMS PREMIUM");
            generateWord.sendText("Se selecciona la opción NO PUEDO DESAFILIARME A LOS SMS PREMIUM");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO PUEDO AFILIARME A SERVICIO ESCUCHAME$")
    public void seleccionoLaOpcionNOPUEDOAFILIARMEASERVICIOESCUCHAME() throws Throwable {
        try {
            driver.findElement(RBN_AFIL_ESCUCHAME).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO AFILIARME A SERVICIO ESCUCHAME");
            generateWord.sendText("Se selecciona la opción NO PUEDO AFILIARME A SERVICIO ESCUCHAME");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion NO PUEDO DESAFILIARME A SERVICIO ESCUCHAME$")
    public void seleccionoLaOpcionNOPUEDODESAFILIARMEASERVICIOESCUCHAME() throws Throwable {
        try {
            driver.findElement(RBN_DESAFIL_ESCUCHAME).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO DESAFILIARME A SERVICIO ESCUCHAME");
            generateWord.sendText("Se selecciona la opción NO PUEDO DESAFILIARME A SERVICIO ESCUCHAME");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion TENGO PROBLEMAS DE CALIDAD EN MI CELULAR CON MOVISTARPLAY$")
    public void seleccionoLaOpcionTENGOPROBLEMASDECALIDADENMICELULARCONMOVISTARPLAY() throws Throwable {
        try {
            driver.findElement(RBN_CALIDAD_MPLAY).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción TENGO PROBLEMAS DE CALIDAD EN MI CELULAR CON MOVISTARPLAY");
            generateWord.sendText("Se selecciona la opción TENGO PROBLEMAS DE CALIDAD EN MI CELULAR CON MOVISTARPLAY");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion NO PUEDO INGRESAR AL USSD$")
    public void seleccionoLaOpcionNOPUEDOINGRESARALUSSD()  throws Throwable {
        try {
            driver.findElement(RBN_USSD).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO INGRESAR AL USSD");
            generateWord.sendText("Se selecciona la opción NO PUEDO INGRESAR AL USSD");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opcion NO PUEDO REALIZAR LA COMPRA DE UNA RECARGA VIRTUAL$")
    public void seleccionoLaOpcionNOPUEDOREALIZARLACOMPRADEUNARECARGAVIRTUAL()  throws Throwable {
            try {
                driver.findElement(RBN_COMPRA_RECARGA_VIRTUAL).click();
                ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción NO PUEDO REALIZAR LA COMPRA DE UNA RECARGA VIRTUAL");
                generateWord.sendText("Se selecciona la opción NO PUEDO REALIZAR LA COMPRA DE UNA RECARGA VIRTUAL");
                generateWord.addImageToWord(driver);
            }catch (Exception e) {
                ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
                ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
                generateWord.sendText("Tiempo de espera ha excedido");
                generateWord.addImageToWord(driver);
            }
    }

    @And("^Selecciono la opcion CONTRATACION NO SOLICITADA$")
    public void seleccionoLaOpcionCONTRATACIONNOSOLICITADA()  throws Throwable {
        try {
            driver.findElement(RBN_CONTRATACION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción CONTRATACION NO SOLICITADA");
            generateWord.sendText("Se selecciona la opción CONTRATACION NO SOLICITADA");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion Nos excedimos en el plazo de respuesta de tu reclamo$")
    public void seleccionoLaOpcionNosExcedimosEnElPlazoDeRespuestaDeTuReclamo() throws Throwable {
        try {
            driver.findElement(RBN_QUEJAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?");
            generateWord.sendText("Se selecciona la opción de ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion EN ALGUN CANAL TE HAN NEGADO EL REGISTRO DE TU RECLAMO$")
    public void seleccionoLaOpcionENALGUNCANALTEHANNEGADOELREGISTRODETURECLAMO() throws Throwable {
        try {
            driver.findElement(RBN_QUEJAS2).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de EN ALGUN CANAL, ¿TE HAN NEGADO EL REGISTRO DE TU RECLAMO?");
            generateWord.sendText("Se selecciona la opción de EN ALGUN CANAL, ¿TE HAN NEGADO EL REGISTRO DE TU RECLAMO?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion RESOLUCION_RECLAMO$")
    public void seleccionoLaOpcionRESOLUCION_RECLAMO() throws Throwable {
        try {
            driver.findElement(RBN_QUEJAS3).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de ¿NO HEMOS CUMPLIDO CON LA RESOLUCION DE TU RECLAMO?");
            generateWord.sendText("Se selecciona la opción de ¿NO HEMOS CUMPLIDO CON LA RESOLUCION DE TU RECLAMO?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Desconocimiento de contrato$")
    public void seleccionoLaOpciónDesconocimientoDeContrato() throws Throwable {
        try {
            driver.findElement(RBN_DESC_CONTRATO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Desconocimiento de contrato");
            generateWord.sendText("Se selecciona la opción de Desconocimiento de contrato");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciona la opción Nunca firmé un contrato con Movistar$")
    public void seleccionaLaOpciónNuncaFirméUnContratoConMovistar() throws Throwable {
        try {
            driver.findElement(RBN_OPCION1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Nunca firmé un contrato con Movistar");
            generateWord.sendText("Se selecciona la opción de Nunca firmé un contrato con Movistar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opción Cambio de titularidad Prepago$")
    public void seleccionoLaOpciónCambioDeTitularidadPrepago()  throws Throwable {
        try {
            driver.findElement(RBN_CAMB_TITULARIDAD).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de" +
                    "Cambio de titularidad");
            generateWord.sendText("Se selecciona la opción de Cambio de titularidad");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciona la opción Nunca acepté la titularidad de un servicio móvil$")
    public void seleccionaLaOpciónNuncaAceptéLaTitularidadDeUnServicioMóvil()  throws Throwable {
        try {
            driver.findElement(RBN_OPCION1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Nunca acepté la " +
                    "titularidad de un servicio móvil");
            generateWord.sendText("Se selecciona la opción de Nunca acepté la titularidad de un servicio móvil");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Cambio de equipo Prepago$")
    public void seleccionoLaOpciónCambioDeEquipoPrepago()  throws Throwable {
        try {
            driver.findElement(RBN_CAMB_EQUIPO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Cambio de equipo");
            generateWord.sendText("Se selecciona la opción de Cambio de equipo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciona la opción Me facturan un cambio de equipo/Simcard que no solicité$")
    public void seleccionaLaOpciónMeFacturanUnCambioDeEquipoSimcardQueNoSolicité()  throws Throwable {
        try {
            driver.findElement(RBN_OPCION1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Me facturan un " +
                    "cambio de equipo/Simcard que no solicité");
            generateWord.sendText("Se selecciona la opción de Me facturan un cambio de equipo/Simcard " +
                    "que no solicité");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Equipo$")
    public void seleccionoLaOpciónEquipo()  throws Throwable {
        try {
            driver.findElement(RBN_EQUIPO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Equipo");
            generateWord.sendText("Se selecciona la opción de Equipo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciona la opción La cuota de financiamiento distinta a lo acordado$")
    public void seleccionaLaOpciónLaCuotaDeFinanciamientoDistintaALoAcordado()  throws Throwable {
        try {
            driver.findElement(RBN_EQUIPO_CUOTA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de La cuota de " +
                    "financiamiento distinta a lo acordado");
            generateWord.sendText("Se selecciona la opción de La cuota de financiamiento distinta a lo acordado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso Importe ofrecido \"([^\"]*)\"$")
    public void ingresoImporteOfrecido(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String importeOfrecido = getData().get(reclamo).get(COLUMNA_COMENTARIO_IMPORTE_OFRECIDO);
            driver.findElement(TXT_IMPORTE_OFREC).sendKeys(importeOfrecido);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Importe ofrecido");
            generateWord.sendText("Se ingresa correctamente el Importe ofrecido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciona la opción Me facturan un importe mayor a lo afrecido$")
    public void seleccionaLaOpciónMeFacturanUnImporteMayorALoAfrecido()  throws Throwable {
        try {
            driver.findElement(RBN_EQUIPO_IMPORTE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Me facturan un importe" +
                    " mayor a lo afrecido");
            generateWord.sendText("Se selecciona la opción de Me facturan un importe mayor a lo afrecido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Servicios adicionales / memberias$")
    public void seleccionoLaOpciónServiciosAdicionalesMemberias()  throws Throwable {
        try {
            driver.findElement(RBN_SERV_ADIC).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Servicios adicionales / membresias");
            generateWord.sendText("Se selecciona la opción de Servicios adicionales / membresias");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciona la opción No solicité servcios espciales a mi plan ni membresías$")
    public void seleccionaLaOpciónNoSolicitéServciosEspcialesAMiPlanNiMembresías()  throws Throwable {
        try {
            driver.findElement(RBN_OPCION1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de No solicité servcios " +
                    "espciales a mi plan ni membresías");
            generateWord.sendText("Se selecciona la opción de No solicité servcios espciales a mi plan ni " +
                    "membresías");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @When("^Ingreso el comentario especifique plan \"([^\"]*)\"$")
    public void ingresoElComentarioEspecifiquePlan(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String especifPlan = getData().get(reclamo).get(COLUMNA_COMENTARIO_ESPECIFICA_OFERTA);
            driver.findElement(TXT_ESPEC_PLAN).sendKeys(especifPlan);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Importe ofrecido");
            generateWord.sendText("Se ingresa correctamente el Importe ofrecido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Reconexion$")
    public void seleccionoLaOpciónReconexion()  throws Throwable {
        try {
            driver.findElement(RBN_RECONEXION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Reconexion");
            generateWord.sendText("Se selecciona la opción de Reconexion");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opción Roaming$")
    public void seleccionoLaOpciónRoaming()  throws Throwable {
        try {
            driver.findElement(RBN_PREPAGO_ROAMING).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Roaming");
            generateWord.sendText("Se selecciona la opción de Roaming");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Consumos Adicionales$")
    public void seleccionoLaOpciónConsumosAdicionales()  throws Throwable {
        try {
            driver.findElement(RBN_CONS_ADIC).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Consumos Adicionales");
            generateWord.sendText("Se selecciona la opción de Consumos Adicionales");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opción Me facturan consumos adicionales de voz y/o mensajes y no los consumí$")
    public void seleccionoLaOpciónMeFacturanConsumosAdicionalesDeVozYOMensajesYNoLosConsumí()  throws Throwable {
        try {
            driver.findElement(RBN_CONS_ADIC_VOZ).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Me facturan consumos " +
                    "adicionales de voz y/o mensajes y no los consumí");
            generateWord.sendText("Se selecciona la opción de Me facturan consumos adicionales de voz y/o " +
                    "mensajes y no los consumí");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Me facturan consumos de datos adicionales y no los consumí$")
    public void seleccionoLaOpciónMeFacturanConsumosDeDatosAdicionalesYNoLosConsumí()  throws Throwable {
        try {
            driver.findElement(RBN_CONS_ADIC_DATOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Me facturan consumos " +
                    "de datos adicionales y no los consumí");
            generateWord.sendText("Se selecciona la opción de Me facturan consumos de datos adicionales y no " +
                    "los consumí");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Paquetes: Datos, voz y/o SMS$")
    public void seleccionoLaOpciónPaquetesDatosVozYOSMS() throws Throwable {
        try {
            driver.findElement(RBN_PAQ_DATOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Paquetes: Datos, voz y/o SMS");
            generateWord.sendText("Se selecciona la opción de Paquetes: Datos, voz y/o SMS");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opción Me facturan un paquete que no solicité$")
    public void seleccionoLaOpciónMeFacturanUnPaqueteQueNoSolicité() throws Throwable {
        try {
            driver.findElement(RBN_OPCION1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Me facturan un " +
                    "paquete que no solicité");
            generateWord.sendText("Se selecciona la opción de Me facturan un paquete que no solicité");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Plan mensual/cargo Fijo$")
    public void seleccionoLaOpciónPlanMensualCargoFijo() throws Throwable {
        try {
            driver.findElement(RBN_PLAN_MENSUAL).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Plan mensual/cargo Fijo");
            generateWord.sendText("Se selecciona la opción de Plan mensual/cargo Fijo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opción No reconozco el excedente de mi cargo Fijo$")
    public void seleccionoLaOpciónNoReconozcoElExcedenteDeMiCargoFijo() throws Throwable {
        try {
            driver.findElement(RBN_EXCEDENTE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de No reconozco el " +
                    "excedente de mi cargo Fijo");
            generateWord.sendText("Se selecciona la opción de No reconozco el excedente de mi cargo Fijo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción No cumplieron con promocion ofrecida$")
    public void seleccionoLaOpciónNoCumplieronConPromocionOfrecida() throws Throwable {
        try {
            driver.findElement(RBN_PROMOCION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de No cumplieron con " +
                    "promocion ofrecida");
            generateWord.sendText("Se selecciona la opción de No cumplieron con promocion ofrecida");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el COMENTARIO Especifique los beneficios \"([^\"]*)\"$")
    public void ingresoElCOMENTARIOEspecifiqueLosBeneficios(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String beneficios = getData().get(reclamo).get(COLUMNA_COMENTARIO_OFERTA_PROMOCION);
            driver.findElement(TXT_COMENTARIO_BENEFICIOS).sendKeys(beneficios);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el COMENTARIO OFERTA/PROMOCION");
            generateWord.sendText("Se ingresa correctamente el COMENTARIO OFERTA/PROMOCION");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción No cumplieron con los beneficios ofrecidos de mi plan$")
    public void seleccionoLaOpciónNoCumplieronConLosBeneficiosOfrecidosDeMiPlan() throws Throwable {
        try {
            driver.findElement(RBN_BENEFICIOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de No cumplieron con los " +
                    "beneficios ofrecidos de mi plan");
            generateWord.sendText("Se selecciona la opción de No cumplieron con los beneficios ofrecidos de mi" +
                    " plan");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

}
