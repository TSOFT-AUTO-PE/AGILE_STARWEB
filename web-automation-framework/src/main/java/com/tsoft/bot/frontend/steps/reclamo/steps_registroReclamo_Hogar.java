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

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.util.HashMap;
import java.util.List;


import static com.tsoft.bot.frontend.pageobject.Reclamo.PageObject_Reclamo_Hogar.*;





public class steps_registroReclamo_Hogar {

    private static final String EXCEL_WEB = "excel/Registro Reclamo Hogar Trío.xlsx";
    private static final String RECLAMO_WEB = "Reclamo";
    private static final String COLUMNA_URL = "URL";
    private static final String COLUMNA_NUMERO_FIJO = "NUMERO_FIJO";
    private static final String COLUMNA_NUMERO_DOCUMENTO = "NUMERO_DOCUMENTO";
    private static final String COLUMNA_CAPTCHA = "CAPTCHA";
    private static final String COLUMNA_COMENTARIO = "COMENTARIO";
    private static final String COLUMNA_NUMERO_RECIBO = "NUMERO_RECIBO";
    private static final String COLUMNA_COMENTARIO_ADICIONAL = "COMENTARIO_ADICIONAL";
    private static final String COLUMNA_NOMBRE = "NOMBRE";
    private static final String COLUMNA_APELLIDO = "APELLIDO";
    private static final String COLUMNA_NUMERO_CONTACTO = "NUMERO_CONTACTO";
    private static final String COLUMNA_CORREO = "CORREO";
    private static final String COLUMNA_CONFIRMACION_CORREO = "CONFIRMACION_CORREO";
    private static final String COLUMNA_DIRECCION = "DIRECCION";
    private static final String COLUMNA_DATOS_RESOLUCION = "DATOS_RESOLUCION";
    private static final String COLUMNA_NUMERO_TELEFONO_CELULAR = "NUMERO_TELEFONO_CELULAR";
    private static final String COLUMNA_RAZONES_QUEJA_COMEN = "RAZONES_QUEJA_COMEN";
    private static final String COLUMNA_ARCHIVO_ADJUNTO = "ARCHIVO_ADJUNTO";
    private static final String COLUMNA_ADJUNTA_RECIBO = "ADJUNTA_RECIBO";
    private static final String COLUMNA_MONTO_OFRECIDO = "MONTO_OFRECIDO";
    private static final String COLUMNA_COMO_DEVOLVIO = "COMO_DEVOLVIO";




    private static GenerateWord generateWord = new GenerateWord();
    private WebDriver driver;

    public steps_registroReclamo_Hogar() { this.driver = Hook.getDriver(); }

    private List<HashMap<String, String>> getData() throws Throwable {
        return ExcelReader.data(EXCEL_WEB, RECLAMO_WEB);
    }


    @Given("^ingreso a la URL \"([^\"]*)\"$")
    public void ingresoALaURL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String url = getData().get(reclamo).get(COLUMNA_URL);
            driver.get(url);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se inició correctamente la página Registro Reclamo");
            generateWord.sendText("Se inició correctamente la página Registro Reclamo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción HOGAR$")
    public void seleccionoLaOpciónHOGAR() throws Exception {
        try {
            driver.findElement(BTN_HOGAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic al botón Hogar");
            generateWord.sendText("Se da clic al botón Hogar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion TRIO$")
    public void seleccionoLaOpcionTRIO() throws Exception {
        try {
            driver.findElement(BTN_TRIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic al botón Trío");
            generateWord.sendText("Se da clic al botón Trío");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NÚMERO DE TELEFONO \"([^\"]*)\"$")
    public void ingresoElNÚMERODETELEFONO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_fijo = getData().get(reclamo).get(COLUMNA_NUMERO_FIJO);
            driver.findElement(TXT_NUM).sendKeys(num_fijo);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Número Fijo");
            generateWord.sendText("Se ingresa correctamente el Número Fijo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono TIPO DE DOCUMENTO$")
    public void seleccionoTIPODEDOCUMENTO() throws Exception {
        try {
            driver.findElement(CHK_TDOC).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en el desplegable de Tipo de Documento");
            generateWord.sendText("Se da clic en el desplegable de Tipo de Documento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono el Tipo de Documento DNI$")
    public void seleccionoElTipoDeDocumentoDNI() throws Exception {
        try {
            driver.findElement(CHK_DNI).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona el tipo de documento DNI");
            generateWord.sendText("Se selecciona el tipo de documento DNI");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NÚMERO DE DOCUMENTO \"([^\"]*)\"$")
    public void ingresoElNÚMERODEDOCUMENTO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_documento = getData().get(reclamo).get(COLUMNA_NUMERO_DOCUMENTO);
            driver.findElement(TXT_NUM_DOC).sendKeys(num_documento);
            Sleeper.Sleep(3500);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa correctamente el Número de documento");
            generateWord.sendText("Se ingresa correctamente el Número de documento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NÚMERO DE CAPTCHA \"([^\"]*)\"$")
    public void ingresoElNÚMERODECAPTCHA(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String captcha = getData().get(reclamo).get(COLUMNA_CAPTCHA);
            driver.findElement(TXT_CAPTCHA).sendKeys(captcha);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el número Captcha");
            generateWord.sendText("Se ingresa el número Captcha");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción COMENCEMOS$")
    public void seleccionoLaOpciónCOMENCEMOS() throws Exception {
        try {
            driver.findElement(BTN_COMENCEMOS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingreso la validación correctamente");
            generateWord.sendText("Se ingreso la validación correctamente");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción SI$")
    public void seleccionoLaOpciónSI() throws Exception {
        try {
            driver.findElement(BTN_SI).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Si = Facturación");
            generateWord.sendText("Se selecciona la Opción Si = Facturación");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ¿ES SOBRE EL COBRO DE ALGUN SERVICIO\\?$")
    public void seleccionoLaOpciónESSOBREELCOBRODEALGUNSERVICIO() throws Exception {
        try {
            driver.findElement(RDN_1).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción ¿Es sobre el cobro de algún servicio?");
            generateWord.sendText("Se selecciona la Opción ¿Es sobre el cobro de algún servicio?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion CONTINUAR$")
    public void seleccionoLaOpcionCONTINUAR() throws Exception {
        try {
            driver.findElement(BTN_CONTINUAR).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Continuar");
            generateWord.sendText("Se selecciona la Opción Continuar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opción CUENTO CON SERVICIOS ADICIONALES A MI PAQUETE QUE NO CONTRATÉ$")
    public void seleccionoLaOpciónCUENTOCONSERVICIOSADICIONALESAMIPAQUETEQUENOCONTRATÉ() throws Exception {
        try {
            driver.findElement(RDN_2).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción CUENTOCONSERVICIOSADICIONALESAMIPAQUETEQUENOCONTRATÉ");
            generateWord.sendText("Se selecciona la Opción CUENTO CON SERVICIOS ADICIONALES A MI PAQUETE QUE NO CONTRATÉ");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso el COMENTARIO \"([^\"]*)\"$")
    public void ingresoElCOMENTARIO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String comentario = getData().get(reclamo).get(COLUMNA_COMENTARIO);
            driver.findElement(TXT_COMENTARIO).sendKeys(comentario);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Comentario");
            generateWord.sendText("Se ingresa el Comentario");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opción MES RECIBO RECLAMO$")
    public void seleccionoLaOpciónMESRECIBORECLAMO() throws Exception {
        try {
            driver.findElement(LST_MES).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar en la lista del Mes del recibo");
            generateWord.sendText("Seleccionar en la lista del Mes del recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono el MES$")
    public void seleccionoElMES() throws Exception {
        try {
            driver.findElement(LST_MES_1).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar el Mes del recibo");
            generateWord.sendText("Seleccionar el Mes del recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ANIO RECIBO RECLAMO$")
    public void seleccionoLaOpciónANIORECIBORECLAMO() throws Exception {
        try {
            driver.findElement(LST_ANIO).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar en la lista del Año del recibo");
            generateWord.sendText("Seleccionar en la lista del Año del recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la ANIO$")
    public void seleccionoLaANIO() throws Exception {
        try {
            driver.findElement(LST_ANIO_1).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar el Año del recibo");
            generateWord.sendText("Seleccionar el Año del recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opción NÚMERO DE RECIBO$")
    public void seleccionoLaOpciónNÚMERODERECIBO() throws Exception {
        try {
            driver.findElement(RDN_NUM_RECIBO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la opción número de recibo");
            generateWord.sendText("Seleccionar la opción número de recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso el NÚMERO DE RECIBO \"([^\"]*)\"$")
    public void ingresoElNÚMERODERECIBO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_recibo = getData().get(reclamo).get(COLUMNA_NUMERO_RECIBO);
            driver.findElement(TXT_NUN_RECIBO1).sendKeys(num_recibo);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Número de recibo");
            generateWord.sendText("Se ingresa el Número de recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso el COMENTARIO ADICIONAL \"([^\"]*)\"$")
    public void ingresoElCOMENTARIOADICIONAL(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String com_adicional = getData().get(reclamo).get(COLUMNA_COMENTARIO_ADICIONAL);
            driver.findElement(TXT_COMENTARIO_ADI).sendKeys(com_adicional);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Comentario Adicional");
            generateWord.sendText("Se ingresa el Comentario Adicional");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso el NOMBRE \"([^\"]*)\"$")
    public void ingresoElNOMBRE(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String nombre = getData().get(reclamo).get(COLUMNA_NOMBRE);
            driver.findElement(TXT_NOMBRE).sendKeys(nombre);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Nombre");
            generateWord.sendText("Se ingresa el Nombre");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^INgreso el APELLIDO \"([^\"]*)\"$")
    public void ingresoElAPELLIDO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String apellido = getData().get(reclamo).get(COLUMNA_APELLIDO);
            driver.findElement(TXT_APELLIDO).sendKeys(apellido);
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Apellido");
            generateWord.sendText("Se ingresa el Apellido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono TIPO DE USUARIO$")
    public void seleccionoTIPODEUSUARIO() throws Exception {
        try {
            driver.findElement(LST_TIPO_USUARIO).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la opción Tipo de Usuario");
            generateWord.sendText("Seleccionar la opción Tipo de Usuario");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono el USUARIO$")
    public void seleccionoElUSUARIO() throws Exception {
        try {
            driver.findElement(LST_USUARIO).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la opción Usuario");
            generateWord.sendText("Seleccionar la opción Usuario");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NUMERO DE CONTACTO \"([^\"]*)\"$")
    public void ingresoElNUMERODECONTACTO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_contacto = getData().get(reclamo).get(COLUMNA_NUMERO_CONTACTO);
            driver.findElement(TXT_NUM_CONTACTO).sendKeys(num_contacto);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Número de Contacto");
            generateWord.sendText("Se ingresa el Número de Contacto");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso el CORREO \"([^\"]*)\"$")
    public void ingresoElCORREO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String correo = getData().get(reclamo).get(COLUMNA_CORREO);
            driver.findElement(TXT_CORREO).sendKeys(correo);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Correo");
            generateWord.sendText("Se ingresa el Correo");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso la CONFIRMACION DEL CORREO \"([^\"]*)\"$")
    public void ingresoLaCONFIRMACIONDELCORREO(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String conf_correo = getData().get(reclamo).get(COLUMNA_CONFIRMACION_CORREO);
            driver.findElement(TXT_CONF_CORREO).sendKeys(conf_correo);
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el la confirmación  del Correo");
            generateWord.sendText("Se ingresa la confirmación  del Correo");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DEPARTAMENTO$")
    public void seleccionoDEPARTAMENTO() throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la lista de Departamento");
            generateWord.sendText("Seleccionar la lista de Departamento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono DEPARTAMENTO(\\d+)$")
    public void seleccionoDEPARTAMENTO(int arg0) throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO1).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar el Departamento");
            generateWord.sendText("Seleccionar el Departamento");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono PROVINCIA$")
    public void seleccionoPROVINCIA() throws Exception {
        try {
            driver.findElement(LST_PROVINCIA).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la lista de Provincia");
            generateWord.sendText("Seleccionar la lista de Provincia");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono PROVINCIA(\\d+)$")
    public void seleccionoPROVINCIA(int arg0) throws Exception {
        try {
            driver.findElement(LST_PROVINCIA1).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la Provincia");
            generateWord.sendText("Seleccionar la Provincia");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DISTRITO$")
    public void seleccionoDISTRITO() throws Exception {
        try {
            driver.findElement(LST_DISTRITO).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la lista del Distrito");
            generateWord.sendText("Seleccionar la lista del Distrito");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DISTRITO(\\d+)$")
    public void seleccionoDISTRITO(int arg0) throws Exception {
        try {
            driver.findElement(LST_DISTRITO1).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar el Distrito");
            generateWord.sendText("Seleccionar el Distrito");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Ingreso la DIRECCION \"([^\"]*)\"$")
    public void ingresoLaDIRECCION(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String direccion = getData().get(reclamo).get(COLUMNA_DIRECCION);
            driver.findElement(TXT_DIRECCION).sendKeys(direccion);
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa la Dirección");
            generateWord.sendText("Se ingresa la Dirección");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DEPARTAMENTOFINAL$")
    public void seleccionoDEPARTAMENTOFINAL() throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO_FINAL).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar la lista del Departamento Final");
            generateWord.sendText("Seleccionar el Departamento Final");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono DEPARTAMENTO FINAL(\\d+)$")
    public void seleccionoDEPARTAMENTOFINAL(int arg0) throws Exception {
        try {
            driver.findElement(LST_DEPARTAMENTO_FINAL1).click();
            Thread.sleep(3000);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar el Departamento Final");
            generateWord.sendText("Seleccionar el Departamento Final1");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ENVIAR$")
    public void seleccionoLaOpciónENVIAR() throws Exception {
        try {
            driver.findElement(BTN_ENVIAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Seleccionar el boton Enviar");
            generateWord.sendText("Seleccionar el boton Enviar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion NO$")
    public void seleccionoLaOpcionNO() throws Exception {
        try {
            driver.findElement(BTN_NO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción NO = Otros");
            generateWord.sendText("Se selecciona la Opción NO = Otros");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ¿Mantienes Averias\\?$")
    public void seleccionoLaOpciónMantienesAverias() throws Exception {
        try {
            driver.findElement(RDN_1_NO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción ¿Mantienes Averias?");
            generateWord.sendText("Se selecciona la Opción ¿Mantienes Averias?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Trío$")
    public void seleccionoLaOpciónTrío() throws Exception {
        try {
            driver.findElement(RDN_2_NO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción Trío");
            generateWord.sendText("Se selecciona la opción Trío");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono el link ¿YA TIENES UN RECLAMO REGISTRADO\\?$")
    public void seleccionoElLinkYATIENESUNRECLAMOREGISTRADO() throws Exception {
        try {
            driver.findElement(URL_APELACIONES_QUEJAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en el link ¿YA TIENES UN RECLAMO REGISTRADO?");
            generateWord.sendText("Se da clic en el link ¿YA TIENES UN RECLAMO REGISTRADO?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO\\?$")
    public void seleccionoLaOpcionNOESTASDEACUERDOCONLARESPUESTAATURECLAMO() throws Exception {
        try {
            driver.findElement(RBN_APELACIONES).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO");
            generateWord.sendText("Se selecciona la opción ¿NO ESTAS DE ACUERDO CON LA RESPUESTA A TU RECLAMO");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso los DATOS DE RESOLUCION \"([^\"]*)\"$")
    public void ingresoLosDATOSDERESOLUCION(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String datos_res = getData().get(reclamo).get(COLUMNA_DATOS_RESOLUCION);
            driver.findElement(TXT_DATOS).sendKeys(datos_res);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa los Datos de Resolución");
            generateWord.sendText("Se ingresa los Datos de Resolución");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la FECHA DE EMISION$")
    public void seleccionoLaFECHADEEMISION() throws Exception {
        try {
            driver.findElement(BTN_FECHA_EMI).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en la Fecha de Emisión");
            generateWord.sendText("Se da clic en la Fecha de Emisión");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono FECHA EMISION$")
    public void seleccionoFECHAEMISION() throws Exception {
        try {
            driver.findElement(BTN_FECHA_EMICION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en la Fecha Emisión");
            generateWord.sendText("Se da clic en la Fecha Emisión");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion CERRAR$")
    public void seleccionoLaOpcionCERRAR() throws Exception {
        try {
            driver.findElement(BTN_CERRAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en el botón Cerrar");
            generateWord.sendText("Se da clic en el botón Cerrar");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la FECHA DE RECEPCION$")
    public void seleccionoLaFECHADERECEPCION() throws Exception {
        try {
            driver.findElement(BTN_FECHA_REC).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se da clic en la Fecha de Recepción");
            generateWord.sendText("Se da clic en la Fecha de Recepción");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono FECHA RECEPCION$")
    public void seleccionoFECHARECEPCION() throws Exception {
        try {
            driver.findElement(BTN_FECHA_RECEPCION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Fecha Recepción");
            generateWord.sendText("Se selecciona  la Fecha Recepción");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opcion CERRAR RECEPCION$")
    public void seleccionoLaOpcionCERRARRECEPCION() throws Exception {
        try {
            driver.findElement(BTN_CERRAR_RE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción cerrar Recepción");
            generateWord.sendText("Se selecciona la opción cerrar Recepción");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opcion ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO\\?$")
    public void seleccionoLaOpcionNOSEXCEDIMOSENELPLAZODERESPUESTADETURECLAMO() throws Exception {
        try {
            driver.findElement(RBN_QUEJAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opcion ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?");
            generateWord.sendText("Se selecciona la opcion ¿NOS EXCEDIMOS EN EL PLAZO DE RESPUESTA DE TU RECLAMO?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso el NUMERO DE TELEFONO CELULAR \"([^\"]*)\"$")
    public void ingresoElNUMERODETELEFONOCELULAR(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String num_celular = getData().get(reclamo).get(COLUMNA_NUMERO_TELEFONO_CELULAR);
            driver.findElement(TXT_NUN_TELEFONO_CELULAR).sendKeys(num_celular);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Numero de telefono celular");
            generateWord.sendText("Se ingresa el Numero de telefono celular");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingreso las RAZONES DE LA QUEJA \"([^\"]*)\"$")
    public void ingresoLasRAZONESDELAQUEJA(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String razon_queja = getData().get(reclamo).get(COLUMNA_RAZONES_QUEJA_COMEN);
            driver.findElement(TXT_RAZ_QUEJAS).sendKeys(razon_queja);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa las Razones de la Queja");
            generateWord.sendText("Se ingresa las Razones de la Queja");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono el boton ARCHIVO \"([^\"]*)\"$")
    public void seleccionoElBotonARCHIVO(String casoDePrueba) throws Throwable {
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
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona de Archivo");
            generateWord.sendText("Se selecciona de Archivo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono el boton ADJUNTA \"([^\"]*)\"$")
    public void seleccionoElBotonADJUNTA(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String link1 = getData().get(reclamo).get(COLUMNA_ADJUNTA_RECIBO);
            driver.findElement(BTN_ADJUNTA).click();
            Thread.sleep(5000);
            Robot robot = new Robot();
            String text = link1;
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
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String link1 = getData().get(reclamo).get(COLUMNA_ADJUNTA_RECIBO);
            driver.findElement(BTN_ADJUNTA).click();
            Thread.sleep(5000);
            Robot robot = new Robot();
            String text = link1;
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
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opción Solicité un servicio adicional, pero me cobran un monto distinto$")
    public void seleccionoLaOpciónSolicitéUnServicioAdicionalPeroMeCobranUnMontoDistinto() throws Exception {
        try {
            driver.findElement(RDN_Solicite).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solicité un servicio adicional, pero me cobran un monto distinto");
            generateWord.sendText("Se selecciona la Opción Solicité un servicio adicional, pero me cobran un monto distinto");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Ingresa Importe Ofrecido \"([^\"]*)\"$")
    public void ingresaImporteOfrecido(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String monto = getData().get(reclamo).get(COLUMNA_MONTO_OFRECIDO);
            driver.findElement(TXT_MONTO_OFRECIDO).sendKeys(monto);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Monto Ofrecido");
            generateWord.sendText("Se ingresa el Monto Ofrecido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opción Me están facturando dos veces un mismo concepto en mi recibo$")
    public void seleccionoLaOpciónMeEstánFacturandoDosVecesUnMismoConceptoEnMiRecibo() throws Exception {
        try {
            driver.findElement(RDN_CONCEPTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Me están facturando dos veces un mismo concepto en mi recibo");
            generateWord.sendText("Se selecciona la Opción Me están facturando dos veces un mismo concepto en mi recibo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Costo del traslado$")
    public void seleccionoLaOpciónCostoDelTraslado() throws Exception{
        try {
            driver.findElement(RDN_TRASLADO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Costo del traslado");
            generateWord.sendText("Se selecciona la Opción Costo del traslado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @When("^Selecciono Costo de Traslado Fraccionado$")
    public void seleccionoCostoDeTrasladoFraccionado() throws Exception{
        try {
            driver.findElement(RDN_FRACCIONADO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Importe Fraccionado");
            generateWord.sendText("Se selecciona la Opción Importe Fraccionado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @When("^Selecciono Costo de Traslado Contado$")
    public void seleccionoCostoDeTrasladoContado() throws Exception{
        try {
            driver.findElement(RDN_CONTADO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Importe Contado");
            generateWord.sendText("Se selecciona la Opción Importe Contado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opción Cambio de Recorrido$")
    public void seleccionoLaOpciónCambioDeRecorrido()  throws Exception{
        try {
            driver.findElement(RDN_RECORRIDO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Cambio de Recorrido");
            generateWord.sendText("Se selecciona la Opción Cambio de Recorrido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Cambio de Numero$")
    public void seleccionoLaOpciónCambioDeNumero() throws Exception{
        try {
            driver.findElement(RDN_NUMERO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Cambio de Numero");
            generateWord.sendText("Se selecciona la Opción Cambio de Numero");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Cambio de Titularidad$")
    public void seleccionoLaOpciónCambioDeTitularidad() throws Exception{
        try {
            driver.findElement(RDN_TITULARIDAD).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Cambio de Titularidad");
            generateWord.sendText("Se selecciona la Opción Cambio de Titularidad");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opción No Publicacion en Paginas Blancas$")
    public void seleccionoLaOpciónNoPublicacionEnPaginasBlancas() throws Exception{
        try {
            driver.findElement(RDN_PAGINAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción No publicación en Paginas Blancas");
            generateWord.sendText("Se selecciona la Opción No publicación en Paginas Blancas");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Cambio de Sitio$")
    public void seleccionoLaOpciónCambioDeSitio() throws Exception{
        try {
            driver.findElement(RDN_SITIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Cambio de Sitio");
            generateWord.sendText("Se selecciona la Opción Cambio de Sitio");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción SUSPENSION BAJA FINAL$")
    public void seleccionoLaOpciónSUSPENSIONBAJAFINAL() throws Exception{

        try {
            driver.findElement(RDN_SUSPENSION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Suspension / Baja Final");
            generateWord.sendText("Se selecciona la Opción Suspension / Baja Final");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción COBRO POR RECONEXION$")
    public void seleccionoLaOpciónCOBROPORRECONEXION() throws Exception{
        try {
            driver.findElement(RDN_RECONEXION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Cobro por Reconexion");
            generateWord.sendText("Se selecciona la Opción Cobro por Reconexion");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción MI SERVICIO ESTA EN BAJA Y ME HAN FACTURADO$")
    public void seleccionoLaOpciónMISERVICIOESTAENBAJAYMEHANFACTURADO() throws Exception{
        try {
            driver.findElement(RDN_BAJA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Mi servicio esta en baja/corte/suspensión y me han facturado");
            generateWord.sendText("Se selecciona la Opción Mi servicio esta en baja/corte/suspensión y me han facturado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción EQUIPO PUNTO ADICIONAL$")
    public void seleccionoLaOpciónEQUIPOPUNTOADICIONAL() throws Exception{
        try {
            driver.findElement(RDN_EQUIPO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Equipo / Punto adicional");
            generateWord.sendText("Se selecciona la Opción Equipo / Punto adicional");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción SOLICITE UN EQUIPO PERO ME COBRAN UN MONTO DISTINTO A LO ACORDADO$")
    public void seleccionoLaOpciónSOLICITEUNEQUIPOPEROMECOBRANUNMONTODISTINTOALOACORDADO() throws Exception{
        try {
            driver.findElement(RDN_COBDIST).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solicite un equipo pero me cobran un monto distinto a lo acordado");
            generateWord.sendText("Se selecciona la Opción Solicite un equipo pero me cobran un monto distinto a lo acordado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción DEVOLVI EL EQUIPO Y SE SIGUE FACTURANDO$")
    public void seleccionoLaOpciónDEVOLVIELEQUIPOYSESIGUEFACTURANDO() throws Exception{
        try {
            driver.findElement(RDN_EQDEVUELTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Devolvi el equipo y se sigue facturando");
            generateWord.sendText("Se selecciona la Opción Devolvi el equipo y se sigue facturando");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @When("^Ingresa Detalle ¿Como lo devolvio\\? \"([^\"]*)\"$")
    public void ingresaDetalleComoLoDevolvio(String casoDePrueba) throws Throwable {
        try {
            int reclamo = Integer.parseInt(casoDePrueba) - 1;
            String detalle = getData().get(reclamo).get(COLUMNA_COMO_DEVOLVIO);
            driver.findElement(TXT_COMODEVOLVIO).sendKeys(detalle);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se ingresa el Detalle de ¿Como lo Devolvio?");
            generateWord.sendText("Se ingresa el Detalle de ¿Como lo Devolvio?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción NO SOLICITE UN EQUIPO Y ME FACTURAN$")
    public void seleccionoLaOpciónNOSOLICITEUNEQUIPOYMEFACTURAN() throws Throwable{
        try {
            driver.findElement(RDN_NOSOLICEQ).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción No Solicite un equipo y me facturan");
            generateWord.sendText("Se selecciona la Opción No Solicite un equipo y me facturan");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción NO LLEGO EL EQUIPO QUE SOLICITE Y ME ESTAN FACTURANDO$")
    public void seleccionoLaOpciónNOLLEGOELEQUIPOQUESOLICITEYMEESTANFACTURANDO() throws Throwable{
        try {
            driver.findElement(RDN_NOLLEGEQ).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción No Llego el equipo que solicite y me estan facturando");
            generateWord.sendText("Se selecciona la Opción No Llego el equipo que solicite y me estan facturando");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción NO RECONOZCO EL MONTO DEL PUNTO ADICIONAL FACTURADO$")
    public void seleccionoLaOpciónNORECONOZCOELMONTODELPUNTOADICIONALFACTURADO() throws Throwable{
        try {
            driver.findElement(RDN_NORECMONTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción No reconozco el monto del punto adicional facturado");
            generateWord.sendText("Se selecciona la Opción No reconozco el monto del punto adicional facturado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción NO HE SOLICITADO LA MIGRACION Y ME FACTURAN UN IMPORTE DISTINTO$")
    public void seleccionoLaOpciónNOHESOLICITADOLAMIGRACIONYMEFACTURANUNIMPORTEDISTINTO() throws Throwable{
        try {
            driver.findElement(RDN_NOSOLICMIG).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción No he solictado la " +
                    "migración y me facturan un importe distinto");
            generateWord.sendText("Se selecciona la Opción No he solictado la migración y me facturan un " +
                    "importe distinto");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción MIGRACION$")
    public void seleccionoLaOpciónMIGRACION() throws Throwable{
        try {
            driver.findElement(RDN_MIGRACION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Migracion");
            generateWord.sendText("Se selecciona la Opción Migracion");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ALTA NUEVA$")
    public void seleccionoLaOpciónALTANUEVA() throws Throwable{
        try {
            driver.findElement(RDN_ALTA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Alta Nueva");
            generateWord.sendText("Se selecciona la Opción Alta Nueva");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ME FACTURAN UN PAQUETE DISTINTO AL QUE SOLICITE$")
    public void seleccionoLaOpciónMEFACTURANUNPAQUETEDISTINTOALQUESOLICITE() throws Throwable{
        try {
            driver.findElement(RDN_PAQUETE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Me facturan un paquete " +
                    "distinto al que solicite");
            generateWord.sendText("Se selecciona la Opción Me facturan un paquete distinto al que solicite");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ME FACTURAN UN IMPORTE POR INSTALACION DISTINTA A LO ACORDADO$")
    public void seleccionoLaOpciónMEFACTURANUNIMPORTEPORINSTALACIONDISTINTAALOACORDADO() throws Throwable{
        try {
            driver.findElement(RDN_IMPORTE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Me facturan un importe " +
                    "por instalación distinta a lo acordado");
            generateWord.sendText("Se selecciona la Opción Me facturan un importe por instalacion distinta" +
                    " a lo acordado");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ME FACTURAN UN SERVICIO QUE AUN NO INSTALAN$")
    public void seleccionoLaOpciónMEFACTURANUNSERVICIOQUEAUNNOINSTALAN() throws Throwable{
        try {
            driver.findElement(RDN_SERVICIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Me facturan un servicio " +
                    "que aun no instalan");
            generateWord.sendText("Se selecciona la Opción un servicio que aun no instalan");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción PAQUETE COMPLETO: DUO/TRIO$")
    public void seleccionoLaOpciónPAQUETECOMPLETODUOTRIO() throws Throwable{
        try {
            driver.findElement(RDN_PQCOMPLETO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Paquete completo: Duo/Trio");
            generateWord.sendText("Se selecciona la Opción Paquete completo: Duo/Trio");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción SOLO LINEA$")
    public void seleccionoLaOpciónSOLOLINEA() throws Throwable{
        try {
            driver.findElement(RDN_SOLOLINEA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solo Linea");
            generateWord.sendText("Se selecciona la Opción Solo Linea");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción SOLO MOVISTAR TV$")
    public void seleccionoLaOpciónSOLOMOVISTARTV() throws Throwable{
        try {
            driver.findElement(RDN_MOVISTARTV).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solo Movistar TV");
            generateWord.sendText("Se selecciona la Opción Solo Movistar TV");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción SOLO MOVISTAR INTERNET$")
    public void seleccionoLaOpciónSOLOMOVISTARINTERNET() throws Throwable{
        try {
            driver.findElement(RDN_MOVISTARINTER).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solo Movistar Internet");
            generateWord.sendText("Se selecciona la Opción Solo Movistar Internet");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción FACTURACION DE LLAMADAS$")
    public void seleccionoLaOpciónFACTURACIONDELLAMADAS() throws Throwable{
        try {
            driver.findElement(RDN_FACTURACION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Facturacion de Llamadas");
            generateWord.sendText("Se selecciona la Opción Facturacion de Llamadas");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción A CELULARES$")
    public void seleccionoLaOpciónACELULARES() throws Throwable{
        try {
            driver.findElement(RDN_CELULAR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción A Celulares");
            generateWord.sendText("Se selecciona la Opción A Celulares");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción LARGA DISTANCIA$")
    public void seleccionoLaOpciónLARGADISTANCIA() throws Throwable{
        try {
            driver.findElement(RDN_LD).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Larga Distancia");
            generateWord.sendText("Se selecciona la Opción Larga Distancia");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción OTRAS LLAMADAS$")
    public void seleccionoLaOpciónOTRASLLAMADAS() throws Throwable{
        try {
            driver.findElement(RDN_OTLLAMADAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Otras Llamadas");
            generateWord.sendText("Se selecciona la Opción Otras Llamadas");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción COSTO BLOQUEO$")
    public void seleccionoLaOpciónCOSTOBLOQUEO() throws Throwable{
        try {
            driver.findElement(RDN_COSTOBLOQUEO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Costo Bloqueo");
            generateWord.sendText("Se selecciona la Opción Costo Bloqueo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción COSTO DE LLAMADA DISTINTA A LO OFRECIDO$")
    public void seleccionoLaOpciónCOSTODELLAMADADISTINTAALOOFRECIDO() throws Throwable{
        try {
            driver.findElement(RDN_COSTOLLAMADA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Costo de llamada distinta" +
                    " a lo ofrecido");
            generateWord.sendText("Se selecciona la Opción Costo de llamada distinta a lo ofrecido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Movistar Total$")
    public void seleccionoLaOpciónMovistarTotal() throws Throwable{
        try {
            driver.findElement(RDN_AVMOVTOTAL).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solo Movistar Total");
            generateWord.sendText("Se selecciona la Opción Solo Movistar Total");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Movistar Internet$")
    public void seleccionoLaOpciónMovistarInternet() throws Throwable{
        try {
            driver.findElement(RDN_AVMOVINTERNET).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Movistar Internet");
            generateWord.sendText("Se selecciona la Opción Movistar Internet");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción AVERIAS SOLO LINEA$")
    public void seleccionoLaOpciónAVERIASSOLOLINEA() throws Throwable{
        try {
            driver.findElement(RDN_AVSOLOLINEA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solo Linea");
            generateWord.sendText("Se selecciona la Opción Solo Linea");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Averias Duo$")
    public void seleccionoLaOpciónAveriasDuo() throws Throwable{
        try {
            driver.findElement(RDN_AVDUO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Duo");
            generateWord.sendText("Se selecciona la Opción Duo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ¿Cuestionas el cobro de algun servicio adicional\\?$")
    public void seleccionoLaOpciónCuestionasElCobroDeAlgunServicioAdicional() throws Throwable{
        try {
            driver.findElement(RDN_COBRO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción ¿Cuestionas el cobro " +
                    "de algun servicio adicional?");
            generateWord.sendText("Se selecciona la Opción Cuestionas el cobro de algun servicio adicional?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ¿Incrementamos tu tarifa\\?$")
    public void seleccionoLaOpciónIncrementamosTuTarifa() throws Throwable{
        try {
            driver.findElement(RDN_TARIFA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción ¿Incrementamos tu tarifa?");
            generateWord.sendText("Se selecciona la Opción ¿Incrementamos tu tarifa?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^Selecciono la opción ¿Cuentas con tu voucher de pago pero no figura en nuestros sistemas\\?$")
    public void seleccionoLaOpciónCuentasConTuVoucherDePagoPeroNoFiguraEnNuestrosSistemas() throws Throwable{
        try {
            driver.findElement(RDN_VOUCHER).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción ¿Cuentas con tu voucher de" +
                    " pago pero no figura en nuestros sistemas?");
            generateWord.sendText("Se selecciona la Opción ¿Cuentas con tu voucher de pago pero no figura en " +
                    "nuestros sistemas?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ¿Nunca firmaste un contrato con Movistar\\?$")
    public void seleccionoLaOpciónNuncaFirmasteUnContratoConMovistar() throws Throwable{
        try {
            driver.findElement(RDN_CONTRATO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción ¿Nunca firmaste un " +
                    "contrato con Movistar?");
            generateWord.sendText("Se selecciona la Opción ¿Nunca firmaste un contrato con Movistar?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Recibos de Pago$")
    public void seleccionoLaOpciónRecibosDePago() throws Throwable{
        try {
            driver.findElement(RDN_RECIBOSPAGO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Recibos de Pago");
            generateWord.sendText("Se selecciona la Opción Recibos de Pago");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Solicite el envio de recibos a mi correo y no llegan$")
    public void seleccionoLaOpciónSoliciteElEnvioDeRecibosAMiCorreoYNoLlegan() throws Throwable{
        try {
            driver.findElement(RDN_CORREO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solicite el envio de mis" +
                    " recibos a mi correo y no llegan");
            generateWord.sendText("Se selecciona la Opción Solicite el envio de mis recibos a mi correo y " +
                    "no llegan");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Solicite el envio de recibos a mi domicilio y no llegan$")
    public void seleccionoLaOpciónSoliciteElEnvioDeRecibosAMiDomicilioYNoLlegan() throws Throwable{
        try {
            driver.findElement(RDN_DOMICILIO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solicite el envio de mis" +
                    " recibos a mi domicilio y no llegan");
            generateWord.sendText("Se selecciona la Opción Solicite el envio de mis recibos a mi domicilio y " +
                    "no llegan");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Solicite mi detalle de llamadas y no las he recibido$")
    public void seleccionoLaOpciónSoliciteMiDetalleDeLlamadasYNoLasHeRecibido() throws Throwable{
        try {
            driver.findElement(RDN_DETLLAMADAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Solicite mi detalle de " +
                    "llamadas y no las he recibido");
            generateWord.sendText("Se selecciona la Opción Solicite mi detalle de llamadas y no las he recibido");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción ¿Incumplimos algun ofrecimiento\\?$")
    public void seleccionoLaOpciónIncumplimosAlgunOfrecimiento() throws Throwable{
        try {
            driver.findElement(RDN_OFRECIMIENTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción ¿Incumplimos algun " +
                    "ofrecimiento?");
            generateWord.sendText("Se selecciona la Opción ¿Incumplimos algun ofrecimiento?");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Promocion$")
    public void seleccionoLaOpciónPromocion() throws Throwable{
        try {
            driver.findElement(RDN_PROMOCION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Promoción");
            generateWord.sendText("Se selecciona la Opción Promoción");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Retencion$")
    public void seleccionoLaOpciónRetencion() throws Throwable{
        try {
            driver.findElement(RDN_RETENCION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Retención");
            generateWord.sendText("Se selecciona la Opción Retención");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Condiciones Contractuales/Derechos Reconocidos Normativa/Reuso de Equipo en Baja$")
    public void seleccionoLaOpciónCondicionesContractualesDerechosReconocidosNormativaReusoDeEquipoEnBaja() throws Throwable{
        try {
            driver.findElement(RDN_CONDCONTR).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la Opción Condiciones " +
                    "Contractuales/Derechos Reconocidos Normativa/Reuso de Equipo en Baja");
            generateWord.sendText("Se selecciona la Opción Condiciones Contractuales/Derechos Reconocidos " +
                    "Normativa/Reuso de Equipo en Baja");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 23, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo caso de prueba : " + e.getMessage() );
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Instalacion o Reinstalación$")
    public void seleccionoLaOpciónInstalacionOReinstalación() throws Throwable {
        try {
            driver.findElement(RDN_INST_REINS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Instalacion o Reinstalación");
            generateWord.sendText("Se selecciona la opción de Instalacion o Reinstalación");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
        
    }

    @And("^Selecciono la opción Han pasado siete dias y aún no instalan mi servicio$")
    public void seleccionoLaOpciónHanPasadoSieteDiasYAúnNoInstalanMiServicio() throws Throwable {
        try {
            driver.findElement(RDN_NO_INSTALAN).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Han pasado siete dias " +
                    "y aún no instalan mi servicio");
            generateWord.sendText("Se selecciona la opción de Han pasado siete dias y aún no instalan mi servicio");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Nueva Instalación$")
    public void seleccionoLaOpciónNuevaInstalación() throws Throwable {
        try {
            driver.findElement(RDN_NUEVA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Nueva Instalación");
            generateWord.sendText("Se selecciona la opción de Nueva Instalación");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }



    @And("^Selecciono la opción Reinstalación$")
    public void seleccionoLaOpciónReinstalación() throws Throwable {
        try {
            driver.findElement(RDN_REINSTALACION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Reinstalación");
            generateWord.sendText("Se selecciona la opción de Reinstalación");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Migracion$")
    public void seleccionoLaOpciónMigracion() throws Throwable {
        try {
            driver.findElement(RDN_SI_MIGRACION).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Migración");
            generateWord.sendText("Se selecciona la opción de Migración");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Suspensión / Baja Final$")
    public void seleccionoLaOpciónSuspensiónBajaFinal() throws Throwable {
        try {
            driver.findElement(RDN_SUSP_BAJA).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Suspensión / Baja Final");
            generateWord.sendText("Se selecciona la opción de Suspensión / Baja Final");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^Selecciono la opción Solicite suspender mi servicio y sigue activo$")
    public void seleccionoLaOpciónSoliciteSuspenderMiServicioYSigueActivo() throws Throwable {
        try {
            driver.findElement(RDN_SUSPENDER).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Solicite suspender " +
                    "mi servicio y sigue activo");
            generateWord.sendText("Se selecciona la opción de Solicite suspender mi servicio y sigue activo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^Selecciono la opción Solicite cortar mi servicio y sigue activo$")
    public void seleccionoLaOpciónSoliciteCortarMiServicioYSigueActivo() throws Throwable {
        try {
            driver.findElement(RDN_CORTE).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se selecciona la opción de Solicite suspender " +
                    "mi servicio y sigue activo");
            generateWord.sendText("Se selecciona la opción de Solicite suspender mi servicio y sigue activo");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, RECLAMO_WEB, 1, 35, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }
}
