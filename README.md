# flutter_stateless_stateful

### v1
Stateless e Stateful<br>
![image](https://github.com/daviroquedev/flutter_stateless_stateful/assets/101668192/469b853e-b909-4fab-b58c-5bb8d30f4620)

### v2
Icons, image network, dinamic progression<br>
![image](https://github.com/daviroquedev/flutter_stateless_stateful/assets/101668192/f2db2cb9-c5d3-466e-8daa-1f194214e0a5)



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
