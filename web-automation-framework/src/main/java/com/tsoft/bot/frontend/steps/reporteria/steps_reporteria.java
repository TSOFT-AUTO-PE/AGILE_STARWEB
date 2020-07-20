package com.tsoft.bot.frontend.steps.reporteria;

import com.tsoft.bot.frontend.helpers.Hook;
import com.tsoft.bot.frontend.utility.ExcelReader;
import com.tsoft.bot.frontend.utility.ExtentReportUtil;
import com.tsoft.bot.frontend.utility.GenerateWord;
import com.tsoft.bot.frontend.utility.Sleeper;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.WebDriver;
import cucumber.api.java.en.Given;
import java.util.HashMap;
import java.util.List;

import static com.tsoft.bot.frontend.pageobject.reporteria.PageObject_Reporteria.*;


public class steps_reporteria {

    private static final String EXCEL_WEB = "excel/reporteria.xlsx";
    private static final String REPORTERIA_WEB = "Reporteria";
    private static final String COLUMNA_URL = "URL";
    private static final String COLUMNA_USUARIO= "Usuario";
    private static final String COLUMNA_PASS= "Contraseña";
    private static final String COLUMNA_TIPO_DOCUMENTO = "Tipo_Documento";
    private static final String COLUMNA_DOCUMENTO = "Num_Documento";
    private static final String COLUMNA_TIPO_DOCUMENTORL = "Tipo_DocumentoRL";
    private static final String COLUMNA_DOCUMENTORL  = "Num_DocumentoRL";

    private static GenerateWord generateWord = new GenerateWord();
    private WebDriver driver;
    public steps_reporteria() { this.driver = Hook.getDriver(); }

    private List<HashMap<String, String>> getData() throws Throwable {
        return ExcelReader.data(EXCEL_WEB, REPORTERIA_WEB);
    }

    @Given("^Ingreso a la url del Portal Config \"([^\"]*)\"$")
    public void ingresoALaUrlDelPortalConfig(String casoPrueba) throws Throwable {
        try {
            int consLineas = Integer.parseInt(casoPrueba) - 1;
            String url = getData().get(consLineas).get(COLUMNA_URL);
            driver.get(url);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se inició correctamente la carga del ambiente");
            generateWord.sendText("Se inició correctamente la carga del ambiente");
            generateWord.addImageToWord(driver);
        }catch (Exception e) {
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 19, "FAIL");
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


    @And("^se da Clic en UserSegments$")
    public void seDaClicEnUserSegments() throws Exception {
        try {
            driver.findElement(BTN_USER_SEGMENT).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se dio clic en el botón User Segments");
            generateWord.sendText("Se dio clic en el botón User Segments");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo el inicio de sesion" + ex.getMessage());
            generateWord.sendText("Fallo el inicio de Sesion - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @Then("^se valida carga de reporte de UserSegments$")
    public void seValidaCargaDeReporteDeUserSegments()  throws Throwable {
        try {
            driver.findElement(LBL_USER_SEGMENT_CANT).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se visualiza reporte de Cantidad de Usuarios por" +
                    " Segmento");
            generateWord.sendText("Se visualiza reporte de Cantidad de Usuarios por Segmento");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte como archivo PNG$")
    public void seDescargaComoArchivoPNG() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_US).click();
            driver.findElement(BTN_US_IMAGEN).click();
            generateWord.sendText("Se Selecciona formato PNG");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_US_PNG).click();
            generateWord.sendText("Se descarga el archivo con formato PNG");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato PNG");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte como archivo JPG$")
    public void seDescargaReporteComoArchivoJPG() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_US).click();
            driver.findElement(BTN_US_IMAGEN).click();
            generateWord.sendText("Se Selecciona formato JPG");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_US_JPG).click();
            generateWord.sendText("Se descarga el archivo con formato JPG");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato JPG");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte como archivo CSV$")
    public void seDescargaReporteComoArchivoCSV() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_US).click();
            driver.findElement(BTN_US_DATA).click();
            generateWord.sendText("Se Selecciona formato CSV");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_US_CSV).click();
            generateWord.sendText("Se descarga el archivo con formato CSV");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato CSV");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte como archivo XLSX$")
    public void seDescargaReporteComoArchivoXLSX() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_US).click();
            driver.findElement(BTN_US_DATA).click();
            generateWord.sendText("Se Selecciona formato XLSX");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_US_XLSX).click();
            generateWord.sendText("Se descarga el archivo con formato XLSX");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato XLSX");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se da Clic en TopCinco UserSegments$")
    public void seDaClicEnTopCincoUserSegments() throws Exception {
        try {
            driver.findElement(BTN_TOP5_USER_SEGMENT).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se dio clic en el botón TOP5 User Segments");
            generateWord.sendText("Se dio clic en el botón TOP5 User Segments");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo el inicio de sesion" + ex.getMessage());
            generateWord.sendText("Fallo el inicio de Sesion - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @Then("^se valida carga de reporte de TOPCINCO UserSegments$")
    public void seValidaCargaDeReporteDeTOPCINCOUserSegments()  throws Throwable {
        try {
            driver.findElement(LBL_TOP5_USER_SEGMENT_CANT).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se visualiza reporte de TOP5 de Usuarios por" +
                    " Segmento");
            generateWord.sendText("Se visualiza reporte de TOP5 de Usuarios por Segmento");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte TOP como archivo PNG$")
    public void seDescargaReporteTOPComoArchivoPNG()  throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_TOP5_US).click();
            driver.findElement(BTN_TOPUS_IMAGEN).click();
            generateWord.sendText("Se Selecciona formato PNG");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_TOPUS_PNG).click();
            generateWord.sendText("Se descarga el archivo con formato PNG");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato PNG");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte TOP como archivo JPG$")
    public void seDescargaReporteTOPComoArchivoJPG() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_TOP5_US).click();
            driver.findElement(BTN_TOPUS_IMAGEN).click();
            generateWord.sendText("Se Selecciona formato JPG");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_TOPUS_JPG).click();
            generateWord.sendText("Se descarga el archivo con formato JPG");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato JPG");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte TOP como archivo CSV$")
    public void seDescargaReporteTOPComoArchivoCSV() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_TOP5_US).click();
            driver.findElement(BTN_TOPUS_DATA).click();
            generateWord.sendText("Se Selecciona formato CSV");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_TOPUS_CSV).click();
            generateWord.sendText("Se descarga el archivo con formato CSV$");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato CSV$");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());

            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se da Clic en Reglas Activas$")
    public void seDaClicEnReglasActivas() throws Exception {
        try {
            driver.findElement(BTN_REGLAS_ACTIVAS).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se dio clic en el botón Reglas Activas");
            generateWord.sendText("Se dio clic en el botón Reglas Activas");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo " + ex.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @Then("^se valida carga de reporte de Reglas Activas$")
    public void seValidaCargaDeReporteDeReglasActivas() throws Throwable {
        try {
            driver.findElement(LBL_TOP5_USER_SEGMENT_CANT).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se visualiza reporte de Reglas Activas");
            generateWord.sendText("Se visualiza reporte de Reglas Activas ");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte RA como archivo PNG$")
    public void seDescargaReporteRAComoArchivoPNG() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_RA).click();
            driver.findElement(BTN_RA_IMAGEN).click();
            generateWord.sendText("Se Selecciona formato PNG");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_RA_PNG).click();
            generateWord.sendText("Se descarga el archivo con formato PNG");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato PNG");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte RA como archivo CSV$")
    public void seDescargaReporteRAComoArchivoCSV() throws Throwable {
            try {
                driver.findElement(BTN_DESCARGA_RA).click();
                driver.findElement(BTN_RA_DATA).click();
                generateWord.sendText("Se Selecciona formato CSV");
                generateWord.addImageToWord(driver);
                driver.findElement(BTN_RA_CSV).click();
                generateWord.sendText("Se descarga el archivo con formato CSV$");
                generateWord.addImageToWord(driver);
                ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato CSV$");
                Sleeper.Sleep(5000);
            }catch (Exception ex){
                ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
                ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
                generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
                generateWord.addImageToWord(driver);
            }
    }

    @And("^se da Clic en Reglas por tipo$")
    public void seDaClicEnReglasPorTipo() throws Exception {
        try {
            driver.findElement(BTN_REGLAS_TIPO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se dio clic en el botón Reglas por Tipo");
            generateWord.sendText("Se dio clic en el botón Reglas por Tipo");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo " + ex.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @Then("^se valida carga de reporte de Reglas por tipo$")
    public void seValidaCargaDeReporteDeReglasPorTipo()  throws Throwable {
        try {
            driver.findElement(LBL_TOP5_USER_SEGMENT_CANT).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se visualiza reporte de Reglas por tipo");
            generateWord.sendText("Se visualiza reporte de Reglas por tipo");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte RT como archivo PNG$")
    public void seDescargaReporteRTComoArchivoPNG() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_RT).click();
            driver.findElement(BTN_RT_IMAGEN).click();
            generateWord.sendText("Se Selecciona formato PNG");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_RT_PNG).click();
            generateWord.sendText("Se descarga el archivo con formato PNG");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato PNG");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte RT como archivo CSV$")
    public void seDescargaReporteRTComoArchivoCSV() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_RT).click();
            driver.findElement(BTN_RT_DATA).click();
            generateWord.sendText("Se Selecciona formato CSV");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_RT_CSV).click();
            generateWord.sendText("Se descarga el archivo con formato CSV$");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato CSV$");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se da Clic en Reglas por Segmento$")
    public void seDaClicEnReglasPorSegmento() throws Exception {
        try {
            driver.findElement(BTN_REGLAS_SEGMENTO).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se dio clic en el botón Reglas por Segmento");
            generateWord.sendText("Se dio clic en el botón Reglas por Segmento");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo " + ex.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @Then("^se valida carga de reporte de Reglas por Segmento$")
    public void seValidaCargaDeReporteDeReglasPorSegmento() throws Throwable {
        try {
            driver.findElement(LBL_TOP5_USER_SEGMENT_CANT).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se visualiza reporte de Reglas por Segmento");
            generateWord.sendText("Se visualiza reporte de Reglas por Segmento");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte RS como archivo PNG$")
    public void seDescargaReporteRSComoArchivoPNG()  throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_RS).click();
            driver.findElement(BTN_RS_IMAGEN).click();
            generateWord.sendText("Se Selecciona formato PNG");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_RS_PNG).click();
            generateWord.sendText("Se descarga el archivo con formato PNG");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato PNG");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se descarga Reporte RS como archivo CSV$")
    public void seDescargaReporteRSComoArchivoCSV()  throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_RS).click();
            driver.findElement(BTN_RS_DATA).click();
            generateWord.sendText("Se Selecciona formato CSV");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_RS_CSV).click();
            generateWord.sendText("Se descarga el archivo con formato CSV$");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se descarga el archivo con formato CSV$");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());
            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se vuelve a la pantalla de seleccion de reporte$")
    public void seVuelveALaPantallaDeSeleccionDeReporte() throws Exception {
        try {
            driver.findElement(BTN_REPORTES).click();
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se vuelve a la pantalla para seleccionar un tipo " +
                    "de reporte");
            generateWord.sendText("Se vuelve a la pantalla para seleccionar un tipo de reporte");
            generateWord.addImageToWord(driver);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo el inicio de sesion" + ex.getMessage());
            generateWord.sendText("Fallo el inicio de Sesion - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se imprime el reporte TOPCINCO$")
    public void seImprimeElReporteTOPCINCO() throws Throwable {
        try {
            driver.findElement(BTN_DESCARGA_TOP5_US).click();
            generateWord.sendText("Se Selecciona Print");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_TOPUS_PRINT).click();
            generateWord.sendText("Carga la Vista Imprimir correctamente");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Carga la Vista Imprimir correctamente");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());

            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^se imprime el reporte Reglas Activas$")
    public void seImprimeElReporteReglasActivas() throws Throwable {
        try {
            driver.findElement(BTN_RA_PRINT).click();
            generateWord.sendText("Se Selecciona Print");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_TOPUS_PRINT).click();
            generateWord.sendText("Carga la Vista Imprimir correctamente");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Carga la Vista Imprimir correctamente");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());

            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }

    }

    @And("^se imprime el reporte Reglas por Tipo$")
    public void seImprimeElReporteReglasPorTipo() throws Throwable {
        try {
            driver.findElement(BTN_RT_PRINT).click();
            generateWord.sendText("Se Selecciona Print");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_TOPUS_PRINT).click();
            generateWord.sendText("Carga la Vista Imprimir correctamente");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Carga la Vista Imprimir correctamente");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());

            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }

    @And("^se imprime el reporte Reglas por Segmento$")
    public void seImprimeElReporteReglasPorSegmento() throws Throwable {
        try {
            driver.findElement(BTN_RS_PRINT).click();
            generateWord.sendText("Se Selecciona Print");
            generateWord.addImageToWord(driver);
            driver.findElement(BTN_TOPUS_PRINT).click();
            generateWord.sendText("Carga la Vista Imprimir correctamente");
            generateWord.addImageToWord(driver);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Carga la Vista Imprimir correctamente");
            Sleeper.Sleep(5000);
        }catch (Exception ex){
            ExcelReader.writeCellValue(EXCEL_WEB, REPORTERIA_WEB, 1, 0, "FALLO");
            ExtentReportUtil.INSTANCE.stepFail(driver,"Fallo la consulta" + ex.getMessage());

            generateWord.sendText("Fallo la consulta - Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
        }
    }


}

