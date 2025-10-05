# ===============================================================================
# SETUP PARA ANÁLISE DA QUALIDADE DE VINHOS
# ===============================================================================
# Este script instala todas as dependências e executa a análise completa
# ===============================================================================

cat("=== SETUP DA ANÁLISE DE QUALIDADE DE VINHOS ===\n")
cat("Autor: Diogo da Silva Rego - Mat. 20240045381\n")
cat("Disciplina: Análise Exploratória de Dados\n")
cat("Orientação: Profa. Dra. Ana Hermínia - UFPB\n\n")

# ===============================================================================
# 1. VERIFICAR E INSTALAR PACOTES NECESSÁRIOS
# ===============================================================================

cat("1. Verificando e instalando pacotes necessários...\n")

# Lista de pacotes necessários
required_packages <- c(
  "ggplot2",      # Visualizações
  "dplyr",        # Manipulação de dados
  "corrplot",     # Matriz de correlação
  "knitr",        # Relatórios
  "gridExtra",    # Arranjo de gráficos
  "RColorBrewer", # Paletas de cores
  "scales",       # Formatação de escalas
  "kableExtra",   # Tabelas formatadas
  "rmarkdown"     # Relatórios R Markdown
)

# Função para instalar pacotes se necessário
install_if_missing <- function(packages) {
  for (package in packages) {
    if (!require(package, character.only = TRUE, quietly = TRUE)) {
      cat(paste("Instalando", package, "...\n"))
      install.packages(package, dependencies = TRUE, quiet = TRUE)
      
      # Verificar se instalação foi bem-sucedida
      if (require(package, character.only = TRUE, quietly = TRUE)) {
        cat(paste("✓", package, "instalado com sucesso\n"))
      } else {
        cat(paste("✗ Erro ao instalar", package, "\n"))
      }
    } else {
      cat(paste("✓", package, "já instalado\n"))
    }
  }
}

# Instalar pacotes
install_if_missing(required_packages)

# ===============================================================================
# 2. VERIFICAR VERSÃO DO R
# ===============================================================================

cat("\n2. Verificando versão do R...\n")
r_version <- R.version.string
cat(paste("Versão do R:", r_version, "\n"))

if (as.numeric(R.version$major) >= 4) {
  cat("✓ Versão do R adequada\n")
} else {
  cat("⚠ Recomenda-se R versão 4.0 ou superior\n")
}

# ===============================================================================
# 3. CRIAR ESTRUTURA DE DIRETÓRIOS
# ===============================================================================

cat("\n3. Criando estrutura de diretórios...\n")

directories <- c(
  "dados",
  "graficos", 
  "relatorios",
  "scripts"
)

for (dir in directories) {
  if (!dir.exists(dir)) {
    dir.create(dir)
    cat(paste("✓ Diretório criado:", dir, "\n"))
  } else {
    cat(paste("✓ Diretório já existe:", dir, "\n"))
  }
}

# ===============================================================================
# 4. EXECUTAR ANÁLISE PRINCIPAL
# ===============================================================================

cat("\n4. Executando análise principal...\n")

# Verificar se arquivo principal existe
if (file.exists("wine_quality_analysis.R")) {
  cat("Executando wine_quality_analysis.R...\n")
  source("wine_quality_analysis.R")
  cat("✓ Análise principal concluída\n")
} else {
  cat("⚠ Arquivo wine_quality_analysis.R não encontrado\n")
  cat("Certifique-se de que o arquivo está no diretório atual\n")
}

# ===============================================================================
# 5. GERAR RELATÓRIO R MARKDOWN (SE DISPONÍVEL)
# ===============================================================================

cat("\n5. Gerando relatório R Markdown...\n")

if (file.exists("wine_analysis_report.Rmd")) {
  tryCatch({
    # Gerar relatório HTML
    rmarkdown::render("wine_analysis_report.Rmd", 
                     output_format = "html_document",
                     output_file = "relatorios/wine_analysis_report.html")
    cat("✓ Relatório HTML gerado: relatorios/wine_analysis_report.html\n")
    
    # Tentar gerar PDF (se LaTeX disponível)
    tryCatch({
      rmarkdown::render("wine_analysis_report.Rmd", 
                       output_format = "pdf_document",
                       output_file = "relatorios/wine_analysis_report.pdf")
      cat("✓ Relatório PDF gerado: relatorios/wine_analysis_report.pdf\n")
    }, error = function(e) {
      cat("⚠ Não foi possível gerar PDF (LaTeX pode não estar instalado)\n")
    })
    
  }, error = function(e) {
    cat("✗ Erro ao gerar relatório R Markdown:", e$message, "\n")
  })
} else {
  cat("⚠ Arquivo wine_analysis_report.Rmd não encontrado\n")
}

# ===============================================================================
# 6. MOVER ARQUIVOS PARA DIRETÓRIOS APROPRIADOS
# ===============================================================================

cat("\n6. Organizando arquivos...\n")

# Mover gráficos
graphics_files <- list.files(pattern = "\\.(png|jpg|jpeg|pdf)$")
if (length(graphics_files) > 0) {
  file.copy(graphics_files, "graficos/", overwrite = TRUE)
  file.remove(graphics_files)
  cat(paste("✓", length(graphics_files), "gráficos movidos para graficos/\n"))
}

# Mover dados
data_files <- list.files(pattern = "\\.(csv|RData)$")
if (length(data_files) > 0) {
  file.copy(data_files, "dados/", overwrite = TRUE)
  file.remove(data_files)
  cat(paste("✓", length(data_files), "arquivos de dados movidos para dados/\n"))
}

# Mover relatórios de texto
report_files <- list.files(pattern = "\\.(txt|html|pdf)$")
if (length(report_files) > 0) {
  file.copy(report_files, "relatorios/", overwrite = TRUE)
  file.remove(report_files)
  cat(paste("✓", length(report_files), "relatórios movidos para relatorios/\n"))
}

# ===============================================================================
# 7. RESUMO FINAL
# ===============================================================================

cat("\n=== RESUMO DA EXECUÇÃO ===\n")
cat("✓ Pacotes instalados e carregados\n")
cat("✓ Estrutura de diretórios criada\n")
cat("✓ Análise principal executada\n")
cat("✓ Arquivos organizados\n")

# Listar arquivos gerados
cat("\nArquivos gerados:\n")
cat("📊 Gráficos:\n")
graphics_in_dir <- list.files("graficos/", pattern = "\\.(png|jpg|jpeg|pdf)$")
for (file in graphics_in_dir) {
  cat(paste("   -", file, "\n"))
}

cat("📋 Dados:\n")
data_in_dir <- list.files("dados/", pattern = "\\.(csv|RData)$")
for (file in data_in_dir) {
  cat(paste("   -", file, "\n"))
}

cat("📄 Relatórios:\n")
reports_in_dir <- list.files("relatorios/", pattern = "\\.(txt|html|pdf)$")
for (file in reports_in_dir) {
  cat(paste("   -", file, "\n"))
}

# ===============================================================================
# 8. INSTRUÇÕES FINAIS
# ===============================================================================

cat("\n=== INSTRUÇÕES FINAIS ===\n")
cat("1. Verifique os gráficos na pasta 'graficos/'\n")
cat("2. Consulte os dados processados na pasta 'dados/'\n")
cat("3. Leia os relatórios na pasta 'relatorios/'\n")
cat("4. Para reexecutar, rode: source('setup_wine_analysis.R')\n")
cat("5. Para análise interativa, abra wine_analysis_report.Rmd no RStudio\n")

cat("\n🍷 ANÁLISE DA QUALIDADE DE VINHOS CONCLUÍDA COM SUCESSO! 🍷\n")
cat("Todos os arquivos estão organizados e prontos para uso.\n")
