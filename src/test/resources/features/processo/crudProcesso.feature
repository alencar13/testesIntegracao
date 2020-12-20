#language: pt

  Funcionalidade: Crud de Processos

    @cadastroProcesso
    Cenario: Usuário deseja cadastrar um processo por método Post
      Dado que usuário gostaria de salvar um processo
      E usuário informa "vara" com valor igual a "Civil"
      E usuário informa "numero_processo" com valor igual a "12345"
      E usuário informa "natureza" com valor igual a "Criminal"
      E usuário informa "partes" com valor igual a "Criminoso"
      E usuário informa "urgente" com valor igual a "S"
      E usuário informa "arbitramento" com valor igual a "S"
      E usuário informa "assistente_social" com valor igual a "Joao"
      E usuário informa "data_entrada" com valor igual a "2019-01-01"
      E usuário informa "data_saida" com valor igual a "2019-01-01"
      E usuário informa "data_agendamento" com valor igual a "2019-01-01"
      E usuário informa "status" com valor igual a "Pendente"
      E usuário informa "observacao" com valor igual a "Tentando fazer direito"
      Quando usuário clica no botão salvar
      Então usuário deveria ver a mensagem "Processo foi criado com sucesso."

    @visualizaProcesso
    Cenario: Usuário deseja visualizar um processo por método Get
      Dado que usuário gostaria de visualizar um processo
      E usuário informa "vara" com valor igual a "Civil"
      E usuário informa "numero_processo" com valor igual a "12345"
      E usuário informa "natureza" com valor igual a "Criminal"
      E usuário informa "partes" com valor igual a "Criminoso"
      E usuário informa "urgente" com valor igual a "S"
      E usuário informa "arbitramento" com valor igual a "S"
      E usuário informa "assistente_social" com valor igual a "Joao"
      E usuário informa "data_entrada" com valor igual a "2019-01-01"
      E usuário informa "data_saida" com valor igual a "2019-01-01"
      E usuário informa "data_agendamento" com valor igual a "2019-01-01"
      E usuário informa "status" com valor igual a "Pendente"
      E usuário informa "observacao" com valor igual a "Tentando fazer direito"
      Quando usuário clica no botão salvar
      Então usuário deveria ver a "vara" com valor igual a "Civil"
      Então usuário deveria ver a "numero_processo" com valor igual a "12345"

    @atualizaProcesso
    Cenario: Usuário deseja atualizar um processo por método Put
      Dado que usuário gostaria de atualizar um processo
      E usuário informa "vara" com valor igual a "Civil"
      E usuário informa "numero_processo" com valor igual a "12345"
      E usuário informa "natureza" com valor igual a "Criminal"
      E usuário informa "partes" com valor igual a "Criminoso"
      E usuário informa "urgente" com valor igual a "S"
      E usuário informa "arbitramento" com valor igual a "S"
      E usuário informa "assistente_social" com valor igual a "Joao"
      E usuário informa "data_entrada" com valor igual a "2019-01-01"
      E usuário informa "data_saida" com valor igual a "2019-01-01"
      E usuário informa "data_agendamento" com valor igual a "2019-01-01"
      E usuário informa "status" com valor igual a "Pendente"
      E usuário informa "observacao" com valor igual a "Tentando fazer direito"
      Quando usuário clica no botão salvar
      E usuário informa "vara" com valor igual a "Civil"
      E usuário informa "numero_processo" com valor igual a "12345"
      E usuário informa "natureza" com valor igual a "Criminal"
      E usuário informa "partes" com valor igual a "Criminoso"
      E usuário informa "urgente" com valor igual a "S"
      E usuário informa "arbitramento" com valor igual a "S"
      E usuário informa "assistente_social" com valor igual a "Joao"
      E usuário informa "data_entrada" com valor igual a "2019-01-01"
      E usuário informa "data_saida" com valor igual a "2019-01-01"
      E usuário informa "data_agendamento" com valor igual a "2019-01-01"
      E usuário informa "status" com valor igual a "Pendente"
      E usuário informa "observacao" com valor igual a "Tentando fazer direito"
      E usuário clica no botão salvar novamente
      E quer ver as informações do preocesso
      Então usuário deveria ver a mensagem "success"
      E o usuário deve ser o "numero_processo" com o valor "12345"

    @deletaProcesso
    Cenario: Usuário deseja deletar um processo por método Delete
      Dado  que usuário gostaria de salvar um processo
      E usuário informa "vara" com valor igual a "Civil"
      E usuário informa "numero_processo" com valor igual a "12345"
      E usuário informa "natureza" com valor igual a "Criminal"
      E usuário informa "partes" com valor igual a "Criminoso"
      E usuário informa "urgente" com valor igual a "S"
      E usuário informa "arbitramento" com valor igual a "S"
      E usuário informa "assistente_social" com valor igual a "Joao"
      E usuário informa "data_entrada" com valor igual a "2019-01-01"
      E usuário informa "data_saida" com valor igual a "2019-01-01"
      E usuário informa "data_agendamento" com valor igual a "2019-01-01"
      E usuário informa "status" com valor igual a "Pendente"
      E usuário informa "observacao" com valor igual a "Tentando fazer direito"
      Quando usuário clica no botão salvar
      E usuário clica no botão apagar
      Então usuário deveria ver a mensagem "no content"

    @esquemaCenarioSalvarProcesso
    Esquema do Cenario: Validando esquema do Post Processo = <numero_processo>
      Dado que usuário gostaria de salvar um processo
      E usuário informa "vara" com valor igual a "<vara>"
      E usuário informa "numero_processo" com valor igual a "<numero_processo>"
      E usuário informa "natureza" com valor igual a "<natureza>"
      E usuário informa "partes" com valor igual a "<partes>"
      E usuário informa "urgente" com valor igual a "<urgente>"
      E usuário informa "arbitramento" com valor igual a "<arbitramento>"
      E usuário informa "assistente_social" com valor igual a "<assistente_social>"
      E usuário informa "data_entrada" com valor igual a "<data_entrada>"
      E usuário informa "data_saida" com valor igual a "<data_saida>"
      E usuário informa "data_agendamento" com valor igual a "<data_agendamento>"
      E usuário informa "status" com valor igual a "<status>"
      E usuário informa "observacao" com valor igual a "<observacao>"
      Quando usuário clica no botão salvar
      Então usuário deveria ver a mensagem "Processo foi criado com sucesso."

      Exemplos:
      |vara     |numero_processo|natureza|partes    |urgente|arbitramento |assistente_social|data_entrada |data_saida|data_agendamento|status   |observacao|
      |civil    |789            |natureza|CARA LEVAL|S      |S            |JOÃO             |2020-01-01   |2020-01-01|2020-01-01      |Pendente |Em analise|
      |criminal |987            |natureza|CABRA RUIM|S      |S            |MARIA            |2020-01-01   |2020-01-01|2020-01-01      |Pendente |Em analise|
