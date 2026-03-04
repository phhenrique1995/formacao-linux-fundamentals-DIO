# 🐧 Linux Fundamentals - Infraestrutura como Código (IAC)

Este repositório contém o projeto final do curso **Linux Fundamentals** da [DIO (Digital Innovation One)](https://www.dio.me/). O objetivo principal é a automação da infraestrutura de usuários, grupos e permissões através de scripts Bash.

---

## 📋 Sobre o Projeto

O desafio consistiu em criar scripts de automação para que toda a infraestrutura de usuários, diretórios e permissões seja configurada automaticamente em novas instâncias Linux. Isso garante que qualquer nova máquina virtual esteja pronta para uso imediato após a execução dos scripts.

### 🏗️ Estrutura de Infraestrutura Criada:

| Diretório | Grupo | Permissões | Acesso |
| :--- | :--- | :--- | :--- |
| `/publico` | - | `777` | Todos os usuários |
| `/adm` | `GRP_ADM` | `770` | Apenas Root e Grupo ADM |
| `/ven` | `GRP_VEN` | `770` | Apenas Root e Grupo VEN |
| `/sec` | `GRP_SEC` | `770` | Apenas Root e Grupo SEC |

---

## 🛠️ Scripts Desenvolvidos

### 🔹 Script 1: Gestão de Convidados
Focado na criação de usuários temporários com segurança básica.
- **Funcionalidade:** Cria usuários `guest10` a `guest13`.
- **Segurança:** Utiliza `openssl` para criptografia de senhas e força a troca de senha no primeiro login (`passwd -e`).

### 🔹 Script 2: Infraestrutura Departamental Completa
Um script robusto que provisiona toda a árvore de diretórios e separação por departamentos.
- **Automação:** Criação de grupos (`GRP_ADM`, `GRP_VEN`, `GRP_SEC`).
- **Usuários:** Adiciona usuários específicos a cada grupo com diretórios home automáticos.
- **Permissões:** Define o dono como `root` e vincula cada diretório ao seu respectivo grupo, bloqueando o acesso de usuários não autorizados.

---

## 📁 Estrutura de Pastas

* `Desafio - Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões`: criar_user.sh | iac1.sh
* `Desafio - Infraestrutura como Código - Script de Provisionamento de um Servidor Web (Apache)`: script-iac2.sh

---

## 🚀 Como Utilizar

1. **Clone este repositório:**
   ```bash
   git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/seu-usuario/seu-repositorio.git)

---

[Formação Linux Fundamentals - DIO](https://www.dio.me/curso-linux)

---

Desenvolvido por [**Pedro Henrique Gomes dos Santos**](https://www.linkedin.com/in/pedro-henrique-gomes-dos-santos/)