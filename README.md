# Cifra de César em Pascal

## Descrição

A cifra de César é uma técnica antiga de criptografia que protege mensagens movendo cada letra do alfabeto por um número fixo de posições. Este projeto em Pascal implementa essa técnica de forma simples, permitindo aos usuários criptografar termo e descriptografar.

## Funcionalidade

O programa possui um menu fácil de usar, com as seguintes opções:

1. **Criptografar Texto**: Você pode inserir um texto e escolher um valor de deslocamento. O programa vai criptografar o texto de acordo com o deslocamento informado, transformando-o em uma versão cifrada.
2. **Descriptografar Texto**: Caso você tenha um texto criptografado, pode inserir esse texto e o deslocamento utilizado na criptografia. O programa vai reverter o texto para sua forma original.

## Como Funciona a Cifra de César

A cifra de César trabalha movendo cada letra do alfabeto por um número fixo de posições. Por exemplo, se o deslocamento for 3:

- A letra `A` se transforma em `D`
- A letra `B` se transforma em `E`

Quando o deslocamento faz com que a letra ultrapasse `Z`, ela volta ao início do alfabeto, criando um ciclo contínuo.

### Criptografia

1. **Transformação de Caractere**: Cada letra do texto é convertida para sua posição numérica no alfabeto.
2. **Aplicação do Deslocamento**: O deslocamento escolhido é adicionado à posição da letra, resultando em uma nova posição.
3. **Conversão de Volta para Caractere**: A nova posição é convertida novamente em uma letra.

### Descriptografia

1. **Transformação de Caractere**: Cada letra do texto criptografado é convertida para sua posição numérica.
2. **Aplicação do Deslocamento Inverso**: Em vez de adicionar, subtrai-se o deslocamento para reverter o texto ao estado original.
