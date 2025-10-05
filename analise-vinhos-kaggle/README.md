🍷 Análise Exploratória da Qualidade de Vinhos


















































📋 Sobre o Projeto

Este projeto apresenta uma análise exploratória completa do conjunto de dados de qualidade de vinhos, aplicando técnicas estatísticas fundamentais para identificar padrões e características que influenciam a qualidade do produto. O estudo foi desenvolvido como trabalho prático da disciplina Análise Exploratória de Dados, demonstrando a aplicação de métodos estatísticos descritivos e inferenciais.

🎯 Contexto Acadêmico

•
Disciplina: Análise Exploratória de Dados

•
Orientação: Profa. Dra. Ana Hermínia - UFPB

•
Aluno: Diogo da Silva Rego

•
Matrícula: 20240045381

•
Período: 2024




🎯 Objetivos

Objetivo Geral

Realizar uma análise exploratória abrangente do conjunto de dados de qualidade de vinhos para identificar padrões, tendências e relações entre as variáveis físico-químicas e a qualidade final do produto.

Objetivos Específicos

•
✅ Criar tabelas de frequências por intervalos para variáveis quantitativas

•
✅ Gerar tabelas de medidas descritivas (média, mediana, quartis, etc.)

•
✅ Desenvolver visualizações para variáveis quantitativas e qualitativas

•
✅ Realizar análise bivariada entre variáveis-chave

•
✅ Identificar correlações entre características físico-químicas e qualidade

•
✅ Interpretar resultados no contexto da produção vinícola




📊 Dataset

Fonte dos Dados

•
Origem: Kaggle - Wine Quality Dataset

•
Tipo: Dados reais de análises físico-químicas de vinhos

•
Tamanho: Aproximadamente 1.600 observações

•
Período: Dados coletados de vinhos portugueses

Variáveis Analisadas

Variável
Tipo
Descrição
fixed.acidity
Quantitativa
Acidez fixa (ácido tartárico - g/dm³)
volatile.acidity
Quantitativa
Acidez volátil (ácido acético - g/dm³)
citric.acid
Quantitativa
Ácido cítrico (g/dm³)
residual.sugar
Quantitativa
Açúcar residual (g/dm³)
chlorides
Quantitativa
Cloretos (cloreto de sódio - g/dm³)
alcohol
Quantitativa
Teor alcoólico (% por volume)
quality
Qualitativa Ordinal
Qualidade (escala 3-8)





🔍 Metodologia

Abordagem Estatística

O projeto seguiu a metodologia clássica de Análise Exploratória de Dados (AED), conforme estabelecida por John Tukey, com foco em:

1.
📈 Análise Univariada

•
Distribuição de frequências

•
Medidas de tendência central e dispersão

•
Identificação de outliers

•
Análise da forma das distribuições



2.
📊 Análise Bivariada

•
Correlações entre variáveis

•
Tabelas de contingência

•
Gráficos de dispersão

•
Análise de associações



3.
🎨 Visualização de Dados

•
Histogramas para distribuições

•
Boxplots para comparações

•
Gráficos de dispersão para correlações

•
Tabelas descritivas formatadas



Ferramentas Utilizadas

•
R - Linguagem principal para análise

•
ggplot2 - Visualizações elegantes

•
dplyr - Manipulação de dados

•
Base R - Estatísticas descritivas




📈 Principais Resultados

1. Análise da Acidez Fixa

•
Distribuição: Aproximadamente normal com leve assimetria à direita

•
Média: 8.32 g/dm³

•
Mediana: 7.90 g/dm³

•
Amplitude: 4.60 - 15.90 g/dm³

•
Interpretação: A maioria dos vinhos concentra-se entre 7-8 unidades de acidez fixa

2. Distribuição da Qualidade

Qualidade
Frequência
Percentual
3
10
0.6%
4
53
3.3%
5
681
42.6%
6
638
39.9%
7
199
12.4%
8
18
1.1%


Insight: A maioria dos vinhos (82.5%) concentra-se nas qualidades 5 e 6, indicando padrão médio de qualidade.

3. Análise Bivariada: Acidez Fixa vs. Ácido Cítrico

•
Correlação: Moderada positiva

•
Padrão: Vinhos com maior acidez fixa tendem a ter mais ácido cítrico

•
Implicação: Possível relação entre diferentes tipos de acidez na composição

4. Relação Qualidade vs. Álcool

•
Observação: Vinhos de maior qualidade tendem a ter maior teor alcoólico

•
Faixas de Álcool:

•
8.0-9.3%: Predominam qualidades 3-4

•
9.3-10.6%: Concentração em qualidades 5-6

•
10.6-12.0%: Maior frequência de qualidades superiores






📊 Visualizações Criadas

1. Histograma da Acidez Fixa

•
Objetivo: Mostrar a distribuição dos valores de acidez fixa

•
Resultado: Distribuição aproximadamente normal

•
Insight: Concentração entre 6-10 g/dm³

2. Gráfico de Dispersão: Acidez Fixa vs. Ácido Cítrico

•
Objetivo: Explorar correlação entre diferentes tipos de acidez

•
Resultado: Correlação positiva moderada

•
Insight: Relação linear entre as variáveis

3. Análise de Qualidade por Intervalos de Álcool

•
Objetivo: Investigar relação entre teor alcoólico e qualidade

•
Resultado: Vinhos com mais álcool tendem a ter melhor qualidade

•
Insight: Álcool pode ser indicador de qualidade




🔍 Insights e Descobertas

🍇 Para a Indústria Vinícola

1.
Controle de Acidez: A acidez fixa é bem controlada na produção, com distribuição normal

2.
Padrão de Qualidade: Poucos vinhos atingem qualidades extremas (3 ou 8)

3.
Teor Alcoólico: Correlação positiva com qualidade sugere importância na fermentação

4.
Oportunidade: Foco em produzir vinhos de qualidade 7-8 (baixa frequência atual)

📊 Para Análise Estatística

1.
Distribuições: Maioria das variáveis segue padrões aproximadamente normais

2.
Outliers: Presença de valores extremos que merecem investigação

3.
Correlações: Relações interessantes entre variáveis químicas

4.
Segmentação: Possibilidade de classificar vinhos por grupos de qualidade

🎯 Para Consumidores

1.
Qualidade Média: Maioria dos vinhos no mercado tem qualidade 5-6

2.
Vinhos Premium: Qualidades 7-8 são raras (13.5% do total)

3.
Indicadores: Teor alcoólico pode ser um indicativo de qualidade




🛠️ Estrutura do Projeto

Plain Text


wine-quality-analysis/
├── 📄 README.md                    # Este arquivo
├── 📊 wine_analysis.R              # Script principal de análise
├── 📈 Visualizações/
│   ├── histogram_acidez_fixa.png   # Distribuição da acidez fixa
│   ├── scatter_acidez_citrico.png  # Correlação entre acidez
│   └── quality_distribution.png    # Distribuição da qualidade
├── 📋 Dados/
│   ├── wine_quality.csv           # Dataset original
│   └── wine_processed.csv         # Dados processados
├── 📚 Relatórios/
│   ├── analise_completa.pdf       # Relatório final
│   └── tabelas_descritivas.html   # Tabelas formatadas
└── 📖 Documentação/
    ├── metodologia.md             # Detalhes metodológicos
    └── interpretacoes.md          # Interpretações dos resultados





🚀 Como Reproduzir a Análise

Pré-requisitos

Plain Text


# Instalar pacotes necessários
install.packages(c("ggplot2", "dplyr", "corrplot", "knitr"))


Execução

Plain Text


# 1. Carregar bibliotecas
library(ggplot2)
library(dplyr)

# 2. Carregar dados
wine_data <- read.csv("dados/wine_quality.csv")

# 3. Executar análise
source("wine_analysis.R")

# 4. Gerar relatório
rmarkdown::render("wine_analysis.Rmd")


Outputs Esperados

•
Tabelas descritivas em formato HTML

•
Gráficos em alta resolução (PNG)

•
Relatório completo em PDF

•
Datasets processados em CSV




📚 Fundamentação Teórica

Análise Exploratória de Dados

Este projeto aplica os princípios fundamentais da AED estabelecidos por John Tukey:

•
Resistência: Uso de medidas robustas (mediana, quartis)

•
Residuais: Análise de padrões não explicados

•
Re-expressão: Transformações quando necessário

•
Revelação: Descoberta de padrões ocultos

Estatística Descritiva

•
Medidas de Posição: Média, mediana, quartis

•
Medidas de Dispersão: Desvio padrão, amplitude, IQR

•
Medidas de Forma: Assimetria e curtose

•
Análise de Correlação: Pearson e Spearman




🎓 Valor Educacional

Competências Desenvolvidas

•
✅ Manipulação de dados reais e complexos

•
✅ Aplicação de técnicas estatísticas descritivas

•
✅ Criação de visualizações eficazes

•
✅ Interpretação de resultados no contexto aplicado

•
✅ Comunicação científica através de relatórios

Conexão Curricular

•
Estatística Descritiva - Aplicação prática de conceitos

•
Probabilidade - Interpretação de distribuições

•
Inferência Estatística - Base para testes futuros

•
Regressão - Identificação de relações lineares




📊 Tecnologias e Ferramentas

Linguagem Principal

•
R 4.0+ - Análise estatística e visualização

Pacotes Utilizados

Plain Text


library(ggplot2)    # Visualizações elegantes
library(dplyr)      # Manipulação de dados
library(corrplot)   # Matriz de correlações
library(knitr)      # Relatórios dinâmicos
library(gridExtra)  # Arranjo de gráficos


Ferramentas de Apoio

•
RStudio - IDE para desenvolvimento

•
R Markdown - Relatórios reproduzíveis

•
Git - Controle de versão

•
Kaggle - Fonte de dados




🌟 Diferenciais do Projeto

1. 📊 Análise Completa

Não apenas gráficos, mas interpretação contextualizada dos resultados.

2. 🎯 Foco Aplicado

Insights relevantes para a indústria vinícola e consumidores.

3. 📚 Rigor Metodológico

Seguimento das melhores práticas de AED.

4. 🎨 Visualizações Profissionais

Gráficos claros e informativos usando ggplot2.

5. 📖 Documentação Completa

Código comentado e metodologia transparente.




🔮 Próximos Passos

Extensões Possíveis

•
Análise Multivariada com PCA

•
Modelos Preditivos para qualidade

•
Análise de Clusters para segmentação

•
Testes de Hipóteses formais

•
Análise de Séries Temporais (se dados disponíveis)

Aplicações Práticas

•
Sistema de Recomendação de vinhos

•
Controle de Qualidade na produção

•
Precificação baseada em características

•
Marketing Segmentado por perfil de qualidade




📞 Contato

Diogo da Silva Rego

•
🎓 Curso: Estatística - UFPB

•
📧 Email: diogo.silva.rego@academico.ufpb.br

•
🐙 GitHub: @diogo-rego20




🙏 Agradecimentos

•
Profa. Dra. Ana Hermínia (UFPB) - Orientação e diretrizes metodológicas

•
Kaggle Community - Disponibilização do dataset

•
R Core Team - Desenvolvimento da linguagem R

•
Hadley Wickham - Criação do ggplot2 e tidyverse




📄 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo LICENSE para detalhes.




⭐ Se este projeto foi útil para seus estudos, considere dar uma estrela!




"The best thing about being a statistician is that you get to play in everyone's backyard." - John Tukey

Última atualização: Dezembro 2024

