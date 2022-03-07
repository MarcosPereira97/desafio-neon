Requisitos do iOS
Mac OS X 10.10 ou superior, 10.13.2 recomendado
XCode> = 6.0 ou superior, 8.3.1 recomendado
Ferramentas de desenvolvimento da Apple (SDK do simulador de iPhone, Command line tools).Para versões atuais do XCode e necessário instalar o Carthage
Precisamos autorizar o uso do iOS Simulator : sudo authorize_ios
Requisitos de Android
Android Studio
Android SDK API> = 17 (recursos adicionais requerem 18/19)
Java
Variavéis de ambiente JAVA_HOME e ANDROID_HOME
O Appium suporta o Android no OS X, Linux e Windows
Outros requisitos
Homebrew
Rbenv
Como fazer download do Appium ?
O download do appium pode ser realizado das seguintes formas:
Appium Desktop
Fornece uma GUI (Graphical user interface) para o Appium Server. Usando esta ferramenta GUI, você poderá iniciar e parar o servidor Appium, e também ver os logs. Para fazer o download é só clicar no link https://github.com/appium/appium-desktop/releases/latest e escolher a release.
Linha de Comando
Para fazer o download do Appium em linha de comando basta digitar :
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
Desired Capabilities
São um conjunto de chave/valor que são enviados ao Appium Server para informar qual tipo de sessão desejamos iniciar. É através do Desired Capabilities que informamos em qual dispositivo queremos executar, e quais as configurações iniciais.
Exemplos:
Capabilities para Android
[caps]
platformName = “Android”
deviceName = ‘Nexus_5_API_23_mars’
app = ‘/Users/[SEU USUARIO]/dev/android/app/build/outputs/apk/nome.apk
Capabilities para iOS
[caps]
platformName = “iOS”
platformVersion = “10.3”
deviceName = “iPhone 6 Plus”
app = “/Users/[SEU USUARIO]/dev/appium/build/mock/simulator/nome.app”
Atualizando o Appium
Para atualizar o appium, você precisa executar '$ npm install -g appium' novamente.