Dado("que acesso a tela de cadastro") do
  @cadastro.acessa_tela_cadastro
end

Dado("selecino a opção completo no cadastro") do
  @cadastro.seleciona_cadastro_completo
end

Quando("preencho os dados para o cadastro") do |table|
  user = table.rows_hash
  @cadastro.preenche_formulario(user[:nome], user[:rg], user[:cpf], user[:telefone])
end

Quando("preencho os dados necessarios para o cadastro") do |table|
  user = table.rows_hash
  @cadastro.preenche_formulario_completo(user[:nome], user[:rg], user[:cpf], user[:telefone], user[:dt_nascimento], user[:empresa], user[:cargo])
end

Quando("clico em salvar") do
  @cadastro.clica_por_texto("SALVAR")
end

Quando("retorno para a tela principal") do
  @cadastro.clica_por_texto("OK")
  @cadastro.clica_voltar
end

Então("valido que há telefone cadastrado") do
  expect(@cadastro.valida_telefone.text).display
end

Então("valido a mensagem {string}") do |txt|
  expect(@cadastro.valida_telefone.text).to eql txt
end

Então("a mensagem {string} é exibida") do |txt|
  expect(@cadastro.valida_mensagem.text).to eql txt
end

Então("valido que usuário foi criado na tela principal") do
  @cadastro.clica_por_texto("OK")
  @cadastro.clica_voltar
  expect(@cadastro.valida_usuario.text).display
end
