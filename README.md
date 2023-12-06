# flutter_stateless_stateful

### v1
Stateless e Stateful<br>
![image](https://github.com/daviroquedev/flutter_stateless_stateful/assets/101668192/469b853e-b909-4fab-b58c-5bb8d30f4620)

### v2
Icons, image network, dinamic progression<br>
![image](https://github.com/daviroquedev/flutter_stateless_stateful/assets/101668192/f2db2cb9-c5d3-466e-8daa-1f194214e0a5)

### v3
BoxDecoration, ShadowBox, Image, AnimatedOpacity, BorderRadius<br>
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