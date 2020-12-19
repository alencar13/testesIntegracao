package steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definition.Processo;
import definition.Processo;
import groovy.json.internal.LazyMap;
import org.junit.Assert;
import support.RESTSupport;

/**
 * Created by robson on 30/08/2017.
 */
public class CrudProcessoSteps {

    @Dado("^que usuário gostaria de salvar um processo$")
    public void queUsuárioGostariaDeSalvarUmProcesso() {
        Processo.clearFields();
    }

    @E("^usuário informa vara com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaVaraComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa numero_processo com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaNumero_processoComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa natureza com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaNaturezaComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa partes com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaPartesComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa urgente com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaUrgenteComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa arbitramento com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaArbitramentoComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa assistente_social com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaAssistente_socialComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa data_entrada com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaData_entradaComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa data_saida com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaData_saidaComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa data_agendamento com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaData_agendamentoComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa status com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaStatusComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @E("^usuário informa observacao com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaObservacaoComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo, valor);
    }

    @Quando("^usuário clica no botão salvar$")
    public void usuárioClicaNoBotãoSalvar() {
        RESTSupport.executePost(Processo.getEndPoint(),Processo.getFields());
        Processo.setultimoProcesso(RESTSupport.key("id").toString());
        Processo.clearFields();
    }

    @Então("^usuário deveria ver a mensagem \"([^\"]*)\"$")
    public void usuárioDeveriaVerAMensagem(String campo, String valor) throws Throwable {
        LazyMap messageJson = new LazyMap();
        messageJson.put("save with success", 201);
        messageJson.put("success", 200);
        messageJson.put("no content", 204);
        messageJson.put("not found", 404);
        messageJson.put("unauthorized", 401);

        Assert.assertEquals(messageJson.get(type),RESTSupport.getResponseCode());
    }

    @Dado("^usuário gostaria de salvar um processo$")
    public void usuárioGostariaDeSalvarUmProcesso() {

    }

    @E("^usuário quer ver informação do processo$")
    public void usuárioQuerVerInformaçãoDoProcesso() {

    }

    @E("^usuário deveria ver login com valor \"([^\"]*)\"$")
    public void usuárioDeveriaVerLoginComValor(String campo, String valor) throws Throwable {
        
        
    }

    @E("^usuário deveria ver full_name com valor \"([^\"]*)\"$")
    public void usuárioDeveriaVerFull_nameComValor(String campo, String valor) throws Throwable {
        
        
    }

    @E("^usuário informa login com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaLoginComValorIgualA(String campo, String valor) throws Throwable {
        
        
    }

    @E("^usuário informa full_name com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaFull_nameComValorIgualA(String campo, String valor) throws Throwable {
        
        
    }

    @E("^usuário informa email com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaEmailComValorIgualA(String campo, String valor) throws Throwable {
        
        
    }

    @E("^usuário informa age com valor igual a \"([^\"]*)\"$")
    public void usuárioInformaAgeComValorIgualA(String campo, String valor) throws Throwable {
        
        
    }

    @E("^usuário clica no botão salvar novamente$")
    public void usuárioClicaNoBotãoSalvarNovamente() {
    }

    @E("^usuário clica no botão deletar$")
    public void usuárioClicaNoBotãoDeletar() {
    }

}
