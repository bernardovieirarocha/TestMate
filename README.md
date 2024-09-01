# TestMate

**TestMate** é uma ferramenta de verificação de exercícios, semelhante ao sistema Verde da PUC Minas, capaz de checar exercícios feitos por alunos antes de fazer o upload. Ele permite comparar arquivos de saída com resultados esperados e compilar códigos (C ou Java) automaticamente para testar seus exercícios.

## Índice

- [Introdução](#introdução)
- [Como Funciona](#como-funciona)
- [Modo de Uso](#modo-de-uso)
- [Instalação](#instalação)
- [Exemplos](#exemplos)
- [Requisitos](#requisitos)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Introdução

TestMate é uma ferramenta de linha de comando que permite aos alunos verificar seus exercícios de programação, compilando e executando códigos em C ou Java e comparando o resultado da execução com um arquivo esperado. É uma maneira rápida e eficiente de garantir que o código está correto antes de submetê-lo.

## Como Funciona

TestMate pode ser usado de duas maneiras:

1. **Comparar dois arquivos diretamente**: útil para comparar a saída de um exercício com a saída esperada.
2. **Compilar e executar código**: TestMate compila o código em C ou Java, executa o programa com um arquivo de entrada e gera um arquivo de saída para comparar com o resultado esperado.

## Modo de Uso

### Comparar dois arquivos

Para comparar dois arquivos, use o comando:

```bash
./testmate.sh <arquivo1> <arquivo2>
```
Este comando comparará arquivo1 e arquivo2 e indicará se os arquivos são iguais ou diferentes.

### Compilar e Executar o Código
Para compilar e executar um código, seguido da comparação da saída gerada com o resultado esperado, use:

```bash
./testmate.sh <codigo> <arquivo_entrada> <arquivo_saida_esperada>
```
- _codigo_: O arquivo de código-fonte (.c ou .java).
- _arquivo_entrada_: O arquivo que será usado como entrada para o programa.
- _arquivo_saida_esperada_: O arquivo contendo o resultado esperado.

O programa será compilado e executado, gerando um arquivo de saída my.out que será comparado com o arquivo de saída esperado.

## Instalação
1. Clone esse repositório
2. Torne o script executável
3. Certifique-se de ter o compilador GCC e o Java JDK instalados em seu sistema.
4. Adicione o .sh ao usr/bin ou crie um alias via .zshrc ou .bashrc

> Dessa forma o script será acessível de qualquer lugar do seu computador, permitindo o uso de maneira universal.

## Requisitos
1. GCC e JDK
2. BASH - Requer ambiente Unix ou compatível

## Contribuições
Contribuições são bem-vindas! Para contribuir abra um Pull Request!

## Licença
Sinta-se à vontade para fazer ajustes adicionais conforme necessário para o seu projeto!
