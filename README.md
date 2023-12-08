# flutter_stateless_stateful

### v1
Stateless e Stateful<br>
![image](https://github.com/daviroquedev/flutter_stateless_stateful/assets/101668192/469b853e-b909-4fab-b58c-5bb8d30f4620)

### v2
Icons, image network, dinamic progression<br>
![image](https://github.com/daviroquedev/flutter_stateless_stateful/assets/101668192/f2db2cb9-c5d3-466e-8daa-1f194214e0a5)

### v3
BoxDecoration, BoxShadow, Image, AnimatedOpacity, BorderRadius<br>
![image](https://github.com/daviroquedev/flutter_stateless_stateful/assets/101668192/c069c73d-3d48-4961-8a78-35a1b41a1ecc)




## Scaffold:

O Widget que segue as regras do material Design para criar uma tela com appBar, body, floatingActionButton, além de outros parâmetros que podemos verificar no catálogo de Widgets da documentação.

## Stateless Widget:

Estrutura pré-preparada para criarmos nosso Widget customizado. Widget de tela estática, ou seja, que não muda com o tempo ou ações.

## ListView:

O Widget que permite mostrar uma lista de elementos na tela, com a possibilidade de arrastar a tela. Com esse Widget começamos a descobrir como explorar telas maiores do que o limite de espaço do nosso dispositivo. Armado com o parâmetro children, possui também outros parâmetros que podemos verificar no catálogo de Widgets da documentação.

## Padding:

O Widget que nos permite criar uma camada externa de espaço em cada um dos 4 lados de seu Widget filho (child) usando o EdgeInsets no parâmetro padding.

## Stateful Widget:

Estrutura pré-preparada para criarmos nosso Widget customizado, um Widget de tela dinâmica, ou seja, que pode mudar com o tempo ou ações.

## LinearProgressIndicator:

O primeiro Widget do catálogo que usamos já é um Stateful por natureza! Ele possui a capacidade de mudar de tamanho de acordo com seu valor (value) em double. Temos também a opção de alterar sua cor de fundo (backgroundColor) e cor principal (color), além de outros parâmetros que podemos verificar no catálogo de Widgets da documentação.

## Hot Reload e Hot Restart:

Com a descoberta do Stateful podemos agora entender a grande diferença entre o Hot Restart e o Hot Reload. Vimos como o Hot Restart reinicia nossa aplicação recarregando os valores e redesenhando a tela, sem guardar nenhuma informação (demora um pouco mais), enquanto o Hot Reload recarrega alguns elementos simples na tela e mantém os valores salvos (extremamente rápido).

## Image:

O Widget tem o poder de adicionar imagens ao nosso projeto: imagens da internet, dos assets, dos arquivos e até da memória do dispositivo. Possui parâmetros para controlar o tamanho vertical (height), o tamanho horizontal (width), o encaixe da foto (fit), além de outros parâmetros que podemos verificar no catálogo de Widgets da documentação.

## BoxDecoration:

Para realizarmos o ajuste fino do nosso Layout usamos o parâmetro decoration do Container. A partir daí descobrimos o poder do BoxDecoration para manipular as bordas usando o parâmetro borderRadius. Percebemos também que quando usamos o decoration o parâmetro color precisa ser usado apenas dentro do BoxDecoration. Lembre-se que podemos verificar outros parâmetros no catálogo de Widgets da documentação.

## AnimatedOpacity:

Nosso primeiro Widget com animação, permitindo manipular a opacidade de seu Widget filho(a) (child) com uma duração (duration) pré-estabelecida.

## Refatoração:

Quando finalizamos nosso projeto, temos que nos atentar a qualidade do que escrevemos. Outros devs podem querer usar nosso projeto como suporte, e para isso temos que deixar nosso código apresentável. Por isso, entendemos conceitos como responsabilidade única e a importância de organizar nossos arquivos em pastas separadas.

## Nomenclatura:

Para que seja fácil de entender a estrutura do código, temos que seguir alguns padrões ao nomear nossos arquivos, usando _ ao invés de espaços e utilizando apenas letras minúsculas. Da mesma forma que precisamos seguir o padrão Camel Case para o nome de Widgets ou variáveis no nosso projeto.

## Assets:

Entendemos a importância de saber escolher usar Assets ou Network para carregar imagens no nosso projeto. Ao usar o network, nosso projeto fica mais leve no dispositivo, porém as imagens podem demorar a serem carregadas (ou pior não serem carregadas), enquanto que usar Assets garante o carregamento veloz das imagens no projeto, mas o deixa mais pesado no dispositivo do usuário.

## Warnings:

Pode parecer apenas TOC, mas um código com Warnings é um código ineficiente. Aprendemos a identificar os Warnings no nosso código e retirá-los um a um, para melhorar o desempenho do nosso projeto.

# V4

## Permitir interação com app com o widget formulário:
Criamos a base da tela de formulário com container e column. Também “embelezamos” nossa tela com color, BorderRadius e border.

## Utilizar campos de texto com TextField:
Consultando o Cookbook, criamos e estilizamos um campo de texto em que o usuário do app pode digitar informações. Vimos que existem dois tipos: TextField e TextFormField.

## Implementar campos de texto com o TextFormField:
Para permitir a criação de novas tarefas no app, utilizamos e estilizamos o TextFormField para implementar campos de texto em que o usuário pode digitar informações;

Vimos que o diferencial do TextFormField é o parâmetro validator (Validação em português). Por exemplo, no campo de texto destinado à dificuldade, queremos garantir que o usuário insira números; o validator nos ajuda a validar essa informação inserida.

## Gerenciar informações com o Controller:
Com a finalidade de gerenciar e armazenar as informações dos campos de texto, utilizamos um parâmetro (do TextFormField) chamado Controller. Para operar o Controller, criamos uma variável, chamamos ela no Controller e fizemos testes com print para verificar se estava tudo certinho com o armazenamento das informações digitadas nos campos de texto do formulário.

Fizemos a “conversão” de string para inteiro com a função ìnt.parse`, permitindo a manipulação de números no campo da dificuldade (controlado pelo difficultyController.text).

## Inserir uma imagem na tarefa:

Planejamos que o usuário adicione uma imagem que é mostrada em tempo real no formulário! Fizemos isso com um Container estilizado e seu filho (child) Image.network(imageController.text), que basicamente puxa uma imagem do nosso campo de texto. Para exibir a imagem em tempo real, utilizamos o setState dentro do TextFormField.

## Tratar erros com o ErrorBuilder

Começamos a cuidar dos bichos-papões! Com o ErroBuilder, que fica de olho em exceções, criamos uma solução no caso de imagens inválidas! Em caso de erro (se não houver imagem ou ela for inválida), o ErrorBuilder constrói (retorna) uma imagem fixa que indica que não há imagens. Assim, nosso app fica elegante e informa algo útil ao usuário. Chique demais, né?

## Evitar o erro de Overflow com o SingleChildScrollView:
Evitamos que o teclado do celular oculte partes da tela. Como? Envolvemos o ´Container(responsável por toda tela) com um novo Widget: oSingleChildScrollView`. Assim, é possível scrollar e navegar pela tela, evitando a sobreposição do teclado.

## Facilitar a experiência do usuário com o KeyBoardType:

Quando o usuário preenche um campo de texto de “nome”, é melhor chamar um teclado de letras (alfabético). Pensando nessa lógica, customizamos os teclados chamados por cada um dos campos de texto: o campo “nome” chama um teclado de letras; o campo “dificuldade” chama o teclado numérico; por fim, o campo “imagem” chama um teclado top para URLs.
##  Impedir que informações vazias sejam enviadas pelo formulário:

Aprendemos que é uma prática inadequada enviar nulos em um formulário. Não queremos exibir, por exemplo, uma tarefa sem título ou com outra informação faltando. Para evitar isso, utilizamos o validator - parâmetro do TextFormField. Dentro do validator, criamos uma condição para verificar se o campo contém uma informação ou um nulo.

## Monitorar as validações com o widget Form:
Vimos que as validações precisam de alguém para cuidar delas. É aí que entra o novo Widget: Form! Ele é responsável por verificar as validações de forma mais simples.

## Mostrar ao usuário que a informação foi enviada com o Snackbar:
Para dar mais clareza sobre o app, criamos uma barra na parte inferior da tela que informa, ao usuário, que as informações inseridas no formulário estão corretas e sendo salvas. A snackbar pertence ao Scaffold e aparece apenas quando todas as validações dão certo (e desaparece automaticamente)!