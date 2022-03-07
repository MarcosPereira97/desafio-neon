<h1 align="center">Desafio Neon</h1>

## Requisitos 
- Android Studio
- Android SDK API> = 17 (recursos adicionais requerem 18/19)
- Java
- Variavéis de ambiente JAVA_HOME e ANDROID_HOME
- O Appium suporta o Android no OS X, Linux e Windows
Outros requisitos
- Homebrew (MAC)
- Rbenv (Windows e Linux)
## Instalação e Configuração 
Como fazer download do Appium ?
O download do appium pode ser realizado das seguintes formas:

Appium Desktop:

Fornece uma GUI (Graphical user interface) para o Appium Server. Usando esta ferramenta GUI, você poderá iniciar e parar o servidor Appium, e também ver os logs. Para fazer o download é só clicar no link https://github.com/appium/appium-desktop/releases/latest e escolher a release.

Linha de Comando:

Para fazer o download do Appium em linha de comando basta digitar:

'$ npm install -g appium'

Após o termino , abra uma nova aba e inicie o servidor do Appium pelo comando:

'$ appium'

nota " É melhor instalar o Appium através da linha de comando, em vez de baixar o appium, uma vez que o aplicativo GUI do Appium é mais frágil. "

Node JS

O Appium é um servidor HTTP escrito em node.js que cria e manipula várias sessões do WebDriver para diferentes plataformas, como iOS e Android. A interação entre o servidor node.js e as bibliotecas de client do Selenium é o que, em última análise, funciona em conjunto com a aplicação móvel.

Para instalar basta colar no terminal:

'$ brew install node'

'$ node --version'

'$ npm — version'

Appium-doctor

Verifica se todas as dependências do Appium são atendidas e se todas as dependências estão configuradas corretamente.

Para instalar o appium-doctor basta colar no seu terminal:

‘$ npm install -g appium-doctor’

Uma vez que o node.js, npm e o appium-doctor estão instalados, você pode usar o comando abaixo para verificar se todas as dependências do appium são atendidas, execute o comando abaixo:

'$ appium-doctor'

Execute o comando abaixo para instalar o appium client:

'$ npm install wd'

--- 

Após tudo configurado, para iniciar os testes automatizados utilizar o comando "cucumber" para rodar todos os testes, e/ou caso queira rodar os testes isolados utilizar o comando "cucumber -t @NomeDoCenario", lista de perfis e possíveis execução dos testes:

cucumber -t @NomeDoCenario

---

O report utilizado pelo allure e para a visualização do report tem que seguir a instalação desse link 
https://docs.qameta.io/allure/#_installing_a_commandline

E após instalado para visualizar só iniciar o comando 
'allure serve logs\'
O mesmo será iniciado automaticamente.


<h2>Arquivos e Diretórios</h2>

### App

Contem o arquivo apk do app.

---

### Features/Specs

Contém os arquivos de cucumber, que serão usados ​​para criar os cenários.

---

### Features/Steps

Contém arquivos ruby, que serão usados ​​como "etapas" para cenários criados no cucumber.

---

### Features/Support

  - Caps - E um conjunto de chave/valor que são enviados ao Appium Server para informar qual tipo de sessão desejamos iniciar. É através do Desired Capabilities que informamos em qual dispositivo queremos executar, e quais as configurações iniciais..
  - Screen - Contém métodos Ruby utilizados na automatização.
  - env - Arquivo com as configurações do driver.
  - hooks - Arquivo que faz as parametrizações antes e depois de cada cenário de teste.

---

### Outros

Outros arquivos que estão no projeto, mas na pasta principal:

  - gitignore - Responsável por ignorar arquivos desnecessários ao enviar sua versão para o repositório.
  - cucumber.yml - Configurações de perfil de cucumber.
  - Gemfile - Gems usadas no projeto.
