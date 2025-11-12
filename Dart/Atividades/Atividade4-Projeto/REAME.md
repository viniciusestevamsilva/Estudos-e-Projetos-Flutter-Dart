
<br>

# Desenvolvimento Móvel: Atividade 03

<br>

## 📌 Descrição

<br>

```

O terceiro projeto tem como objetivo a criação de um sistema de gerenciamento de desempenho escolar, consolidando o uso de listas de mapas e manipulação de dados numéricos. Cada aluno deve ser representado por um mapa, contendo as chaves ‘nome’ e ‘notas’, sendo esta última uma lista de números decimais (List<double>). O sistema deve permitir cadastrar alunos, registrar suas notas e calcular automaticamente a média final de cada um, acessando os valores diretamente pelas chaves do mapa, como aluno['notas']. A partir da média calculada, o programa deve classificar o aluno em “Aprovado” (média ≥ 7), “Recuperação” (5 ≤ média < 7) ou “Reprovado” (média < 5). A listagem final deve apresentar os alunos agrupados por categoria, utilizando laços de repetição e condicionais para percorrer e filtrar os dados. O uso de operadores de null safety é essencial para tratar casos em que notas ou nomes possam estar ausentes. Como desafio adicional, o aluno poderá implementar uma funcionalidade de busca por nome, permitindo atualizar as notas de um aluno já existente. Esse projeto deve evidenciar a capacidade de manipular dados estruturados e realizar cálculos acessando e modificando chaves específicas em um Map.

```

<br>

## 📝 Funcionalidades 

<br>

✔️ Cadastrar notas,alnos e manipular notas

✔️ Sistema de "Aprovado,Reprovado e Recuperção"

✔️ 


<br>

## 📜 Tecnologias usadas 

<br>

➖ **VScode**

➖ **Dart**

<br>

## 📁 Estrutura de pastas utilizada

<br>

```

📁 GESTOR-DE-NOTAS
│
│──📁 ── Api 
│       │
│       │── 📁 ocupacao
│       │         │
│       │         │── 📄 atualizar_ocupacao.php
│       │         │── 📄 excluir_ocupacao.php
│       │         └── 📄 exibir_ocupacao.php
│       │
│       │── 📁 usuario
│       │         │
│       │         │── 📄 criar_usuario.php
│       │         └── 📄 exibir_usuario.php
│       │
│       │── 📁 vagas
│       │         │
│       │         └─── 📄 exibir_vagas.php
│       │
│       └── 📁 veiculo
│                 │
│                 │── 📄 criar_veiculo.php
│                 │── 📄 excluir_veiculo.php
│                 └── 📄 exibir_veiculo.php
│
│── 📁 conexao
│       │
│       └── 📄 conexao.php
│
│
│
│── 📁 css
│       │
│       └── 📄 estilo.css
│
│── 📁 img ── Imagens em geral
│ 
│── 📁 js
│       │
│       └── 📄 script.js
│
│── 📁 public
│       │
│       │── 📄 cadastro_usuario.php
│       │── 📄 cadastro_veiculo.php
│       │── 📄 footer.php
│       │── 📄 header.php
│       │── 📄 inicial.php
│       └── 📄 login.php
│       
│── 💾 estacionamento_bd.sql
│       
│── 📄 index.php
│       
└── 📧 REAME.MD

```

<br>

## 🔨 Como utilizar

<br>

### 1. Clone o repositório:

```bash
git clone https://github.com/viniciusestevamsilva/gestor-de-estacionamento.git
```

### 2. Importe o arquivo no seu banco de dados MySQL:
```
estacionamento_bd.sql
```

### 3.Configure a conexão com o banco de dados no arquivo(caso precise):
```
/gestor-de-estacionamento/conexao/conexao.php
```

### 4.Coloque os arquivos em um servidor local (como XAMPP ou WAMP).

### 5.Acesse via navegador:
```
http://localhost/pasta-de-sua-escolha/gestor-de-estacionamento/index.php
```

<br>

