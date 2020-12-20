package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definition.Processo;
import definition.User;
import groovy.json.internal.LazyMap;
import org.junit.Assert;
import support.RESTSupport;

public class ProcessoSteps {
    @Dado("^que usuário gostaria de salvar um processo$")
    public void queUsuarioGostariaDeSalvarUmProcesso() {
        Processo.clearFields();
    }

    @E("^usuário informa \"([^\"]*)\" com valor igual a \"([^\"]*)\"$")
    public void usuarioInformaComValorIgualA(String campo, String valor) throws Throwable {
        Processo.addFields(campo,valor);
    }

    @Quando("^usuário clica no botão salvar$")
    public void usuarioClicaNoBotãoSalvar() {
        RESTSupport.executePost(Processo.getEndPoint(),Processo.getFields());
        Processo.setLastProcesso(RESTSupport.key("id").toString());
        Processo.clearFields();
    }

    @Dado("^que usuário gostaria de atualizar um processo$")
    public void queUsuárioGostariaDeAtualizarUmProcesso() {
        RESTSupport.executePut(Processo.getEndPoint()+Processo.getLastProcesso()+".json",Processo.getFields());
    }

    @Dado("^que usuário gostaria de visualizar um processo$")
    public void queUsuárioGostariaDeVisualizarUmProcesso() {
        RESTSupport.executeGet(Processo.getEndPoint() + Processo.getLastProcesso() + ".json");
    }

    @Quando("^usuário clica no botão apagar$")
    public void usuárioClicaNoBotãoApagar() {
        RESTSupport.executeDelete(Processo.getEndPoint()+Processo.getLastProcesso()+".json");
    }

    @Então("^usuário deveria ver a \"([^\"]*)\" com valor igual a \"([^\"]*)\"$")
    public void usuárioDeveriaVerAComValorIgualA(String campo, String valor) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        Processo.addFields(campo,valor);
    }

    @E("^usuário clica no botão salvar novamente$")
    public void usuárioClicaNoBotãoSalvarNovamente() {
        RESTSupport.executePut(Processo.getEndPoint() + Processo.getLastProcesso() + ".json",Processo.getFields());
    }

    @E("^quer ver as informações do preocesso$")
    public void querVerAsInformaçõesDoPreocesso() {
        RESTSupport.executeGet(Processo.getEndPoint()+Processo.getLastProcesso());
    }

    @E("^o usuário deve ser o \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuárioDeveSerOComOValor(String arg0, String arg1) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        RESTSupport.executeGet(User.getEndPoint() + User.getLastUser() + ".json");
    }
}
