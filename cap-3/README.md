# Capitulo 3

## Functional programming

Neste capítulo, foi abordardo os tópicos a seguir:

- Usando toda a gama input variables, local values, e output values.
- Deixando o Terraform mais expressivo com functions e expressões for.
- Incorporando dois novos providers: Random e Archive.
- Modelando com *templatefile()*.
- Escalando resources com *count*.
***

## Visão geral

A Functional programming é um paradigma de programação declarativo que permite realizar várias tarefas em uma única linha de código. Ao compor funções modulares pequenas, é possível dizer ao computador o que você deseja que ele faça, em vez de como fazer. A programação funcional recebe esse nome porque, como o próprio nome sugere, os programas consistem quase que inteiramente de funções. Os princípios fundamentais da programação funcional são os seguintes:

- Pure functions: As funções retornam o mesmo valor para os mesmos argumentos, sem nunca ter efeitos colaterais.

- First-class and higher-order functions: As funções são tratadas como qualquer outra variável e podem ser salvas, passadas adiante e utilizadas para criar funções de ordem superior.

- Immutability: Os dados nunca são modificados diretamente. Em vez disso, novas estruturas de dados são criadas sempre que os dados precisam ser alterados.


> **Observação:** Para manter o repositorio organizado o codigo do terraform ficará na pasta **code** juntamente com o README contendo a explicacão