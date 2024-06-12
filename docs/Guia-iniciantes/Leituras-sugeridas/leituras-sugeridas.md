---
layout: default
title: Leituras sugeridas
parent: Guia para inciantes
nav_order: 1
permalink: Guia-iniciantes/leituras-sugeridas
has_children: false
---

# Leituras sugeridas para inciantes
Em nosso laboratório, a pesquisa e o desenvolvimento vão além da teoria e experimentação tradicionais. Para dominar a complexidade de nossa plataforma de software e utilitários e implementar novas técnicas em condições realistas, é essencial ter um sólido entendimento dos fundamentos. Este guia foi elaborado para facilitar sua introdução ao nosso ambiente de programação, reduzindo o atrito inicial e acelerando seu aprendizado.


# Softwares essenciais para aprender

## Ubuntu 
Recomendamos o Ubuntu 22.04 como sistema nativo para garantir a melhor compatibilidade com o ROS 2, que é essencial para nossos projetos atuais. O sistema contêiner Singularity pode ser usado para suportar o ROS 1 (ao utiliza o Ubuntu 22.04) e para executar o sistema em outras distribuições Linux ou Windows WLS.
Não recomendamos o uso de máquina virtuais! Embora funcione, existe uma grade queda de desempenho ao simular vôos de drones em tempo real.


## Shell de Comandos Bash
O Bash é o shell padrão do Ubuntu e é amplamente utilizado para executar programas, criar scripts e gerenciar o sistema de arquivos

- ## Habilidades necessárias:
    - Navegação no sistema de arquivos
    - Criação e execução de scripts de shell
    - Utilização de comandos como grep, pipe (), redirecionamento de saída, echo, ssh, scp, rsync, cat e gerenciamento de dispositivos de armazenamento (lsblk, mount, sync, umount)


# Ferramentas e Frameworks de Desenvolvimento

## ROS 2 (Robot Operating System)
O ROS atua como um middleware entre Ubuntu e C++, facilitando a comunicação assíncrona entre nossos programas. Ele é amplamente utilizado na robótica e oferece uma variedade de utilitários pré-programados, incluindo driver de sensores e ferramentas de visualização.
- ## Recomendações para o início:
- Explore os tutoriais dispoveis em ROS 2 Documentation
- Instale o sistema MRS Singularity pra obter todas as ferramentas necessárias

## Catkin
Catkin é o gerenciador de pacotes e espaço de trabalho utilizado pelo ROS. Ele é essencial para construir pacotes ROS e gerenciar suas dependências. Visite o site para entender mais.

## GIT
GIT é um sistema de versionamento de código que usamos para armazenar e colaborar em nossos projetos. Ele oferece recursos para clonagem de repositórios, commit de mudanças, envio e recebimento de alterações em um servidor, criação de ramificações, fusão e resolução de conflitos de mesclagem.
- ## Recomendações para o início:
- Explore os tutoriais disponíveis em Try Git e Git Documentation
- Após explorar os tutoriais, visite nosso Guia de Git para inciantes!

## TMUX
TMUX é um multiplexador de terminal que permite dividir um terminal em vários painéis e criar janelas. Ele é programável por script e ideal para automatizar processos e iniciar vários programas simultaneamente.
- ## Recomendações para configuração
- Visite Tmux
- Confira a lista de combinações de teclas básicas para as configurações específicas que utilizamos em: Tmux

## Tmuxinator
Tmuxinator é uma extensão do TMUX que permite automatizar configurações complexas de terminais, facilitando o desenvolvimento e as simulações. Tmuxinator usa arquivos .xml contendo uma descrição de uma sessão tmux. Ele nos permite definir e automatizar configurações complexas de múltiplos terminais.
Visite Tmuxinator para saber mais.

## Vim
Vim é um editor de texto baseado em TUI (Interface de Usuário e Texto) que oferece recursos poderosos para edição de código. Ele é especialmente útil para programação em C++, ROS, Python e Bash. 
Para um aprendizado acelerado sobre o Vim, recomendamos que assistas as seguintes videoaulas: aula 1 e aula 2.
Visite Vim para saber mais.

## C++
C++ é a principal linguagem de programação utilizada em nossos projetos. Ele oferece desempenho otimizado e verificação de integridade em tempo de compilação. Assim, recomendamos o aprendizado e vivência em C++.
- ## Recomendações para o início:
- Visite o Minitutorial de C++.
- Visite a Biblioteca padrão C++.

