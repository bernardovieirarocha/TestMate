#!/bin/bash

# Função para comparar dois arquivos
compare_files() {
  if cmp -s "$1" "$2"; then
    echo "Arquivos são iguais."
  else
    echo "Arquivos são diferentes."
    # Uso do diff para mostrar as diferenças considerando ESPAÇOS EM BRANCO
    diff "$1" "$2"
  fi
}

# Função para compilar e executar o código
compile_and_run() {
  local code_file="$1"
  local input_file="$2"
  local output_file="my.out"

  # Verificar o tipo do arquivo
  if [[ "$code_file" == *.c ]]; then
    # Compilar e executar código C
    gcc "$code_file" -o executable
    if [[ $? -ne 0 ]]; then
      echo "Erro de Compilação no código C."
      exit 1
    fi
    ./executable < "$input_file" > "$output_file"
  elif [[ "$code_file" == *.java ]]; then
    # Compile and run Java code
    javac "$code_file"
    if [[ $? -ne 0 ]]; then
      echo "Erro de Compilação no código Java."
      exit 1
    fi
    java "${code_file%.java}" < "$input_file" > "$output_file"
  else
    echo "Extensão de arquivo não suportada."
    exit 1
  fi

  # Comparar arquivos de saída gerados
  compare_files "$output_file" "$3"
}

# Verificar argumentos
if [[ $# -eq 2 ]]; then
  # Comparar arquivos
  compare_files "$1" "$2"
elif [[ $# -eq 3 ]]; then
  # Compilar e executar código
  compile_and_run "$1" "$2" "$3"
else
  echo "Usage:"
  echo "  testmate <file1> <file2>"
  echo "  testmate <code> <input_file> <output_file>"
  exit 1
fi
