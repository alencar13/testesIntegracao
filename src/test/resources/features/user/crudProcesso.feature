#language: pt
Funcionalidade: Usuario CRUD

  Cenario: Usuário salva registro com post
    Dado que usuário gostaria de salvar um processo
    E usuário informa vara com valor igual a "stellaagapito"
    E usuário informa numero_processo com valor igual a "Stella da Silva Agapito Correa"
    E usuário informa natureza com valor igual a "stella.agapito@gmail.com"
    E usuário informa partes com valor igual a "7"
    E usuário informa urgente com valor igual a "7"
    E usuário informa arbitramento com valor igual a "7"
    E usuário informa assistente_social com valor igual a "7"
    E usuário informa data_entrada com valor igual a "7"
    E usuário informa data_saida com valor igual a "7"
    E usuário informa data_agendamento com valor igual a "7"
    E usuário informa status com valor igual a "7"
    E usuário informa observacao com valor igual a "7"
    Quando usuário clica no botão salvar
    Então usuário deveria ver a mensagem "Processo foi criado com sucesso."

  Cenario: Usuário mostra um registro com get
    Dado usuário gostaria de salvar um processo
    E usuário informa vara com valor igual a "stellaagapito"
    E usuário informa numero_processo com valor igual a "Stella da Silva Agapito Correa"
    E usuário informa natureza com valor igual a "stella.agapito@gmail.com"
    E usuário informa partes com valor igual a "7"
    E usuário informa urgente com valor igual a "7"
    E usuário informa arbitramento com valor igual a "7"
    E usuário informa assistente_social com valor igual a "7"
    E usuário informa data_entrada com valor igual a "7"
    E usuário informa data_saida com valor igual a "7"
    E usuário informa data_agendamento com valor igual a "7"
    E usuário informa status com valor igual a "7"
    E usuário informa observacao com valor igual a "7"
    Quando usuário clica no botão salvar
    E usuário quer ver informação do processo
    Então usuário deveria ver a mensagem "sucesso"
    E usuário deveria ver login com valor "bugluna"
    E usuário deveria ver full_name com valor "Bug Luna Agapito Correa"

  Cenario: Usuário atualiza um registro com put
    Dado usuário gostaria de salvar um processo
    E usuário informa login com valor igual a "bugluna"
    E usuário informa full_name com valor igual a "Bug Luna Agapito Correa"
    E usuário informa email com valor igual a "bug.luna@gmail.com"
    E usuário informa age com valor igual a "8"
    Quando usuário clica no botão salvar
    E usuário informa login com valor igual a "bugluna"
    E usuário informa full_name com valor igual a "Bug Luna da Silva Agapito Correa"
    E usuário informa email com valor igual a "bug.luna@gmail.com"
    E usuário informa age com valor igual a "8"
    E usuário clica no botão salvar novamente
    E usuário quer ver informação do processo
    Então usuário deveria ver a mensagem "sucesso"
    E usuário deveria ver full_name com valor "Bug Luna da Silva Agapito Correa"

  Cenario: Usuário deleta um registro com delete
    Dado usuário gostaria de salvar um processo
    E usuário informa login com valor igual a "Toti"
    E usuário informa full_name com valor igual a "Toti Agapito Correa"
    E usuário informa email com valor igual a "toti@gmail.com"
    E usuário informa age com valor igual a "10"
    Quando usuário clica no botão salvar
    E usuário clica no botão deletar
    Então usuário deveria ver a mensagem "sem conteudo"

