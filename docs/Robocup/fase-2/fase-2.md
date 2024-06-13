---
layout: default
title: Fase 2
parent: Robocup
nav_order: 3
permalink: robocup/fase-2
has_children: false
---

# Fase 2 - Controle de inventário
Na FASE 2, os drones são utilizados para otimizar o controle de estoque, substituindo métodos manuais de contagem. O drone deve percorrer uma prateleira, identificar e ler códigos de barras em 16 caixas diferentes. A pontuação é baseada na precisão da leitura e na capacidade de retorno à base de takeoff. 
Para informações detalhadas, consulte o PDF oficial das regras da FASE 2.

### Adaptação do código da Fase 3 para Fase 2
O código utilizado na competição do ano passado, correspondente à FASE 3, foi adaptado para atender aos requisitos da FASE 2 deste ano. As principais modificações incluem a alteração do nome do código de "FaseTres" para "stage_two" e a mudança do namespace de "fase_2" para "l_rob". Esta alteração segue as boas práticas recomendadas pelo ROS (Robot Operating System) para a organização e clareza do código, proporcionando uma melhor legibilidade e manutenção do software.
<br />
Nomes da classe e namespace antigos:

``` cpp
#include <Fase3.h>
#include <pluginlib\class_list_macros.h>
namespace fase_3
```

<br />
Nomes da classe e namespace novos:

``` cpp
#include <stage_two.h>
#include <pluginlib\class_list_macros.h>
namespace l_rob
```

### Correção de erro na chamada de serviço
Foi identificado e corrigido um erro no código relacionado à chamada de um serviço de cliente. Anteriormente, não havia tratamento para o caso do serviço não retornar corretamente. A correção envolveu a adição de uma verificação após a chamada do serviço, utilizando um if para verificar se a chamada foi bem-sucedida
<br />
Antes da correção, o código era:

``` cpp
mrs_msgs:: PathSrv srv_out = to_pathReference(shelf_path, _frame_, _scanning_speed_);
service_client_trajectory_generation_.call(srv_out);
strategy_[_current_state_] = WAIT;
```
<br />
Após a correção, o trecho de código foi modificado para:

``` cpp
mrs_msgs:: PathSrv srv_out = to_pathReference(shelf_path, _frame_, _scanning_speed_);
if (service_client_trajectory_generation_.call(srv_out)){
    ROS_INFO("Successfully called the trajectory service.");
} else {
    ROS_ERROR("Error when call the service");
    ros::shutdown();
}
strategy_[_current_state_] = WAIT;
```
Com essa modificação, agora o código verifica se o serviço foi chamado com sucesso. Caso contrário, uma mensagem de erro é exibida, e o nó ROS é encerrado para evitar comportamentos indesejados. Essa alteração melhora a robustez e confiabilidade do sistema, assegurando que erros na chamada de serviço sejam adequadamente tratados.

### Correção na geração do caminho da prateleira
Correção de bug presente no código original. Antes existia um erro no else, que no lugar de PoseR tinha PoseL. 
Esse erro passou despercebido ao executar o código na competição do ano passado, pois com a prateleira na parede frontal, o X possuia a mesma coordenada em relação a L e R, pois ele só fazia o drone avançar para frente, enquanto Y variava pois ele fazia o drone ir para o lado.
Este ano, é o X quem varia, pois ele quem vai fazer o drone se deslocar para o lado, assim, ele não pode assumir a mesma posição em relação a L e R, gerando um erro no código.
<br />
Antes:

``` cpp
if(i % 2 != 0){
    if(side_direction % 2 == 0){

        shelf_path.push_back(Eigen::Vector4d(_poseL[0], poseL[1], shelf_heigh, _poseL[3]));
        side_direction++;
        std::cout << "right, height: " << shelf_hight << std::endl;
    } else {
        shelf_path.push_back(Eigen::Vector4d(_poseL[0], poseR[1], shelf_heigh, _poseL[3]));
        side_direction++;
        std::cout << "left, height: " << shelf_hight << std::endl;
    }
}
```
<br />
Depois:

``` cpp
if(i % 2 != 0){
    if(side_direction % 2 == 0){

        shelf_path.push_back(Eigen::Vector4d(_poseL[0], poseL[1], shelf_heigh, _poseL[3]));
        side_direction++;
        std::cout << "right, height: " << shelf_hight << std::endl;
    } else {
        shelf_path.push_back(Eigen::Vector4d(_poseR[0], poseR[1], shelf_heigh, _poseR[3]));
        side_direction++;
        std::cout << "left, height: " << shelf_hight << std::endl;
    }
}
```

### Adaptação do código da Fase 3 para Fase 2
Alteração também sobre o referencial. Esse else está dentro do if acima e atualiza a altura (decrementa 0.5, pois o drone faz o caminho de cima para baixo). Além disso, ele faz o drone receber a posição exata que ele está quando decrementa a altura. Ou seja, se estava na direita quando decrementou, ele vai receber exatamente aquela posição na direita, mas 0.5 mais baixo.
No código original, o drone recebia a posição atual de X sem nenhuma verificação (pois o X só era responsável por fazer o drone ir para frente) e fazia a verificação no Y, se side_direction == 1, ou seja, ele está na esquerda, o drone recebe exatamente aquela posição à esquerda.
No código atual, a prateleira está na posição da frente e quem varia é o X, então é preciso fazer a verificação no começo, pois é preciso chegar se o drone está à direita ou à esquerda para o drone receber a mesma posição, só que 0.5 abaixo. O Y não muda, a altura é decrementada e o orientação também não muda.
<br />
Antes:

``` cpp
} else {
    shelf_height -= 0.5;
    shelf_path.push_back(Eigen::Vector4d(_poseL[0], side_direction == 1) ? _poseL_[1] : _poseR_[1], shelf_height, _poseL[3]);
    std::cout << "down, height: " << shelf_height << std::endl;
}
```
<br />
Depois:

``` cpp
} else {
    shelf_height -= 0.5;
    shelf_path.push_back(Eigen::Vector4d(side_direction == 1) ? _poseL_[0] : _poseR_[0], _poseL_[1], shelf_height, _poseL[3]);
    std::cout << "down, height: " << shelf_height << std::endl;
}
```

## Mudança nas coordenadas
Atualização do Arquivo de Configuração (Default.yaml)
Por fim, no arquivo de configuração default.yaml, os parâmetros da prateleira foram atualizados para refletir sua nova posição na parede frontal da arena. A configuração anterior estava comentada, e a nova configuração está descomentada.

``` cpp
fase3:
    speed:
        flying: 0.5
        scaning: 0.3
    prateleira: 
        posL: [5.25, -6.25, 2.5, 1.75]
        posR: [1.75, -6.25, 2.5, 1.75]
```
No código anterior, o referencial considerava a prateleira na parede frontal da arena. O eixo x permanecia constante, pois o drone se movia apenas para frente. O eixo y fazia o drone deslocar-se lateralmente.
No novo código, a prateleira está posicionada na parede lateral, mudando o referencial do eixo x. Agora, o eixo x faz o drone se mover lateralmente. O eixo y permanece o mesmo para ambas as posições, fazendo o drone se mover para frente. Além disso, foi necessário adicionar um ângulo de 1.75 para a câmera apontar para a prateleira.
Essas mudanças foram implementadas para garantir que o drone possa operar eficientemente e com precisão na nova configuração da Fase 2 da competição RoboCup. O código antigo permanece comentado para referência futura, enquanto o novo código foi atualizado para refletir as novas especificações.


