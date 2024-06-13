---
layout: default
title: Fase 3
parent: Robocup
nav_order: 1
permalink: robocup/primeiros-passos
has_children: false
---
# Primeiros passos - Robocup 2024
Olá, membro da equipe Capybots! Se você está usando Ubuntu 22, é importante instalar o MRS Singularity, que foi ensinado na aba Leituras sugeridas deste mesmo site. Certifique-se de seguir esse guia antes de prosseguir.
Atenção: antes de prosseguir, certifique-se de que você leu o README do repositório do MRS Singularity, pois as instruções mencionadas lá serão necessárias para os próximos passos.

### Passo 1 - Clonar o repositório Capybots
Primeiramente, navegue até o diretório src do workspace ROS no MRS Singularity e clone o repositório da equipe Capybots. Você pode acessar o diretório src com o seguinte comando:

``` sh
cd git/mrs_singularity/user_ros_workspace/src
```
<br />
Agora, clone o repositório da equipe Capybots executando o seguinte comando:

``` sh
git clone git@github.com:LASER-Robotics/laser_capyBots.git
```

### Passo 2 - Instalar o Gitman
Depois de clonar o repositório, instale o Gitman para gerenciar as dependências do projeto. 
Execute o seguinte comando:

``` sh
gitman install
```
Caso você receba uma mensagem de "comando não encontrado", você precisará instalar o pip, um gerenciador de pacotes, e em seguida, usar o pip para instalar o Gitman.

<br />
Primeiro, instale o pip com o seguinte comando:

``` sh
sudo apt install pip
```
<br />
Depois de instalar o pip, instale o Gitman com o seguinte comando:

``` sh
sudo pip install gitman
```
Nota: O Gitman é utilizado para gerenciar repositórios e dependências em projetos complexos com múltiplos repositórios Git. Ele simplifica o processo de clonagem, atualização e sincronização de vários repositórios.
