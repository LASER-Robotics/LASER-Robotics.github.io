---
layout: default
title: Primeiros passos
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

### Passo 3 - Compilar o projeto com catkin build
Agora que você clonou o repositório e configurou o Gitman, é hora de compilar o projeto usando o Catkin Build.
1. Primeiro, retorne ao diretório user_ros_workspace no MRS Singularity:

``` sh
cd ..
```
2. Em seguida, execute o container MRS Singularity com o seguinte comando: 

``` sh
 ./example_wrapper.sh
```
Nota: O Catkin é o sistema de construção usado pelo ROS para compilar e construir pacotes. O comando catkin build constrói todos os pacotes no seu workspace ROS, resolvendo dependências e compilando-os em uma ordem adequada.
<br />

3. Dentro do container MRS Singularity, você verá um prefixo [MRS_Singularity] no terminal. Navegue até o diretório laser_capyBots dentro do src do workspace ROS:

4. Agora, execute o catkin build para compilar o projeto:

``` sh
catkin build
```

### Passo 4 - Instalar a biblioteca zbar
Ao executar o comando catkin build no passo anterior, é esperado que você receba um erro indicando que a biblioteca zbar está faltando. Isso é normal e vamos corrigir isso agora.

Primeiro, saia do container MRS Singularity digitando exit no terminal:

``` sh
exit
```
Após sair do container va ate a pasta scripts dentro da pasta mrs_singularity e rode o comando no terminal:
``` sh
 ./create_overlay.sh 
```
Abra o arquivo example_wrapper.sh em um editor de texto e altere o valor da variável *OVERLAY=TRUE* no lugar de *OVERLAY=FALSE*.

Em segunda, execute novamente o example_wrapper.sh com sudo:

``` sh
sudo ./example_wrapper.sh
```
Nota Importante: Embora estejamos usando sudo aqui, é importante lembrar que usar sudo regularmente pode ser arriscado e só deve ser usado quando absolutamente necessário. No caso do MRS Singularity, normalmente não temos permissão para executar comandos com sudo dentro do container, mas para instalar o zbar, precisamos usar sudo fora do container.

Agora, você está pronto para instalar a biblioteca zbar. As instruções para fazer isso estão disponíveis no README do nosso repositório laser_vision. Você pode instalar a biblioteca zbar e suas dependências usando o seguinte comando:

``` sh
sudo apt-get install libzbar-dev libzbar0
```
Após a instalação bem-sucedida da biblioteca zbar, você estará pronto para prosseguir e trabalhar em qualquer uma das fases do projeto sem problemas relacionados à ausência da biblioteca zbar.
