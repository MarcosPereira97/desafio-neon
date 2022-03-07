Dado("que acesso a tela de cadastro") do
  @cadastro.acessa_tela_cadastro
end

Dado("selecino a opção completo no cadastro") do
  @cadastro.seleciona_cadastro_completo
end

Quando("preencho os dados necessarios") do |table|
  user = table.rows_hash
  @cadastro.preenche_formulario(user[:nome], user[:rg], user[:cpf])
end

Quando("preencho os dados necessarios para o cadastro") do |table|
  user = table.rows_hash
  @cadastro.preenche_formulario_completo(user[:nome], user[:rg], user[:cpf], user[:dt_nascimento], user[:empresa], user[:cargo])
end

Quando("clico em salvar") do
  @cadastro.clica_por_texto("SALVAR")
end

Então("a mensagem {string} é exibida") do |txt|
  expect(@cadastro.valida_mensagem.text).to eql txt
end

Então("valido que usuário foi criado na tela principal") do
  pending # Write code here that turns the phrase above into concrete actions
end
