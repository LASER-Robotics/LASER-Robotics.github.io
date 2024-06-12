---
layout: default
title: Guia de git
parent: Guia para inciantes
nav_order: 2
permalink: Guia-iniciantes/guia-git
has_children: false
---

# Guia para iniciantes - Git
O Git é um sistema de controle de versão amplamente utilizado que permite rastrear as alterações em arquivos e coordenar o trabalho em projetos entre várias pessoas. Neste guia, vamos explorar como se conectar ao GitHub usando chaves SSH, uma maneira mais segura e conveniente de autenticar-se.

### Passo 1 - Verificar chaves SSH existentes
Antes de gerar um novo par de chaves, é importante verificar se já existem chaves SSH em sua máquina. Para listar as chaves existentes, execute o seguinte comando:
``` sh
ls -al ~/.ssh
```

### Passo 2 - Gerar um novo par de chaves
Caso não exista nenhum par de chaves, precisamos gerar um novo par. Falamos "par de chaves" porque, assim que gerarmos uma chave, serão criados dois arquivos: um público (.pub) e um privado. O conteúdo do arquivo público é o que futuramente colocaremos no GitHub para fazer a conexão.
Para criar uma chave RSA, execute:
``` sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Passo 3 - Adicionar chave privada ao ssh-agent
O ssh-agent é um gerenciador de chaves SSH. Para que a conexão funcione, devemos adicionar a chave privada a esse gerenciador. Siga os passos abaixo:

1. Inicie o ssh-agent:
``` sh
eval $(ssh-agent -s)
```

2. Inclua a chave privada:
``` sh
ssh-add ~/.ssh/id_rsa
```

### Passo 4 - Copiar chave pública
Agora que já adicionamos a chave privada no ssh-agent, vamos copiar a chave pública que faz par com ela, para incluirmos no nosso GitHub. 
No mesmo terminal execute:
``` sh
cat ~/.ssh/id_ed25519.pub
```

### Passo 5 - Adicionar chave ao Github
1. Abra o GitHub e vá no ícone de perfil > Settings, no canto superior direito.
2. Na barra lateral de configurações do usuário, clique em "SSH and GPG keys".
3. Clique no botão "New SSH key".
4. No campo "Título", adicione um rótulo descritivo para a nova chave. Por exemplo, se estiver usando seu computador pessoal, você pode chamar essa chave de "Computador pessoal".
5. ole a chave pública que está na área de transferência no campo "Chave".
6. Clique em "Add SSH key" e pronto!

### Passo 6 - Testando a configuração SSH
Para verificar se a conexão SSH foi estabelecida corretamente, execute o seguinte comando:
``` sh
ssh -T git@github.com
```
Aguarde as mensagens e digite "yes" para continuar. Verifique se a mensagem resultante contém seu nome de usuário e o sucesso da sua autenticação.
