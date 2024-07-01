# CPEL MasterControl

## Introdução

O projeto CPEL MasterControl foi originado de um trabalho interdisciplinar acadêmico entre as disciplinas de: Desenvolvimento Web 2, Projeto Aplicado e Engenharia de Software 1.

Idealizado pelos alunos: Wesley, Thales, Bruno, Gustavo e Vanderlei, o projeto visa sanar um problema na empresa CPEL na qual um dos idealizadores trabalha.

## Objetivos

Originalmente, dentro da CPEL, foi encontrado um problema na qual cabia a utilização de tecnologia para resolvê-lo. Com isso, o projeto ganhou forma e sentido, já que poderia ser facilmente resolvido utilizando conceitos aprendidos nas matérias envolvidas.

O problema se resumia em ações manuais que atrapalhavam a produtividade ao longo do dia a dia da empresa. Mais especificamente, uma pessoa dentro da empresa era encarregada de receber os pedidos dos clientes e cadastrar esses pedidos em uma planilha no Excel para um acompanhamento mais detalhado.

A planilha não permitia uma visualização clara dos pedidos que tinham sido cadastrados, consequentemente impossibilitava a atualização desses pedidos. Isso forçava a pessoa encarregada a levar esses pedidos manualmente até os setores responsáveis pela execução dos mesmos. Além disso, para que ela soubesse da atualização dos pedidos, também precisava visitar cada setor após algum tempo (normalmente no fim de cada dia) para entender como estava o andamento de cada pedido.

Com o projeto CPEL MasterControl, buscou-se facilitar esse processo através de uma interface que possibilitasse cadastrar e visualizar os pedidos, permitindo que outros setores vissem os pedidos na fila de execução. Assim, o trabalho manual seria diminuído para colocar os novos pedidos em execução.

## Tecnologias Utilizadas

Utilizamos diversas técnicas e ferramentas para desenvolver a aplicação, garantindo um processo eficiente e resultados de alta qualidade. Entre essas técnicas estão:

1. **Matriz de Requisitos**
2. **Regras de Negócio**
3. **Histórias de Usuário**
4. **Prototipação**
https://www.figma.com/design/8Vy73gnkGsa8bybRUM4nMn/ProjetoNaja?node-id=0-1&t=nuW7I2i0jUZZtYu4-0

Essas técnicas são cruciais para o sucesso do projeto, pois asseguram uma abordagem estruturada e orientada para a entrega de uma solução robusta, alinhada com os objetivos de negócio e as expectativas dos usuários.

## Requisitos do Sistema

Para que os problemas citados anteriormente fossem sanados, os seguintes requisitos funcionais precisam ser preenchidos:

- Autenticação de usuário (login/logout);
- Cadastro de pedidos;
- Visualização de pedidos;
- Atualização dos pedidos.
- Cadastro de itens;
- Visualização dos itens atrelados ao pedido;
- Exclusão dos itens;

Para que esses requisitos funcionem da melhor forma, outros requisitos não funcionais são necessários:

- Responsividade;
- Fluidez;
- Segurança de rotas;
- Design intuitivo;
- Organização Clara;
- Escalabilidade;
- Facilidade de Manutenção;
- Documentação Atualizada;
- Layout Organizado;
- Escolha de Cores e Fontes;

## Arquitetura do Sistema

O projeto foi desenvolvido utilizando o framework Ruby on Rails, tanto para o backend quanto para o frontend, foram utilizadas bibliotecas adicionais.

Para autenticação foi utilizada a biblioteca Devise.

Para o banco de dados foi utilizado SQLITE 3.

## Execução do projeto

Para executar o projeto, é necessário clonar o repositório e realizar os seguintes comandos:

bundle install
rails db
rails db
rails server

# Conclusão

O projeto CPEL MasterControl demonstrou como a aplicação de conceitos aprendidos nas disciplinas de Desenvolvimento Web 2, Projeto Aplicado e Engenharia de Software 1 pode resolver problemas reais enfrentados pelas empresas. Ao automatizar o processo de recebimento e acompanhamento de pedidos na CPEL, conseguimos não apenas melhorar a eficiência e a produtividade, mas também reduzir significativamente o trabalho manual e a possibilidade de erros.

A interface desenvolvida permite uma visualização clara dos pedidos em andamento, facilitando a comunicação e a coordenação entre os diferentes setores da empresa. Com isso, os pedidos são atualizados em tempo real, e os setores responsáveis podem acessar as informações necessárias.