class Cadastro
  def acessa_tela_cadastro
    find_element(xpath: "//android.widget.ImageButton").click
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/floating_novo").click
  end

  def preenche_formulario(nome, rg, cpf, telefone)
    @nome = find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editNome").send_keys nome
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editRg").send_keys rg
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editCpf").send_keys cpf
    @telefone = find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1").send_keys telefone
  end

  def seleciona_cadastro_completo
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/rdCompleto").click
  end

  def preenche_formulario_completo(nome, rg, cpf, telefone, dt_nascimento, empresa, cargo)
    preenche_formulario(nome, rg, cpf, telefone)
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editData").send_keys dt_nascimento
    scroll
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editEmpresa").send_keys empresa
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editCargo").send_keys cargo
  end

  def scroll
    Appium::TouchAction.new.swipe(start_x: 144, start_y: 1634, end_x: 144, end_y: 149).perform
  end

  def clica_por_texto(elm)
    find_element(xpath: "//*[@text='#{elm}']").click
  end

  def clica_voltar
    @driver.back
  end

  def valida_usuario
    return find_element(xpath: "//*[@text='#{@nome}']")
  end

  def valida_telefone
    return find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/telefoneLista")
  end

  def valida_mensagem
    return find_element(id: "android:id/message")
  end
end
