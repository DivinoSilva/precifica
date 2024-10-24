# Precifica-ST

O **Precifica-ST** é uma aplicação Ruby simples que calcula o preço final de um produto com base em seu preço base, percentual de impostos, e aplica descontos, se elegíveis. 
O serviço inclui dois tipos de descontos: um para categorias específicas de produtos e outro para o mês de aniversário do usuário.

## Critérios de aceite

- Aplicar 5% de desconto para produtos da categoria `food` e `beverages`.
- Aplicação 10% de desconto se o usuário estiver no seu mês de aniversário.
- Garantir que apenas o maior desconto será aplicado (os descontos não são cumulativos).
- Cálcular o preço final considerando o preço base, impostos e descontos aplicados.

## Requisitos

- Ruby 3.x ou superior
- Rspec para testes

## Instalação

1. Clone este repositório:

```bash
git clone git@github.com:DivinoSilva/precifica.git
```

2. Navegue até o diretório do projeto:

```bash
cd ~/precifica
```

## Testes

Esta aplicação usa o **RSpec** para testes. Para rodar os testes, execute o seguinte comando:

```bash
rspec spec/
```

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
