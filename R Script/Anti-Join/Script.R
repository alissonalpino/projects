################################ [HEADER] ######################################
### Versão: 1.0
### Modificado por: Alisson Alpino
### Data de atualização: 14/11/2022

### [1 - Define as configurações] ----------------------------------------------

source("lib/config.R")

### [2 - Instala pacotes] ------------------------------------------------------

source("lib/packages.R")

### [3 - Define diretórios] ----------------------------------------------------

source("lib/paths.R")

### [4 - Manipulação de dados] -------------------------------------------------

DF_A <- data.frame(read_excel(input_A))
DF_B <- data.frame(read_excel(input_B))

DF_Dif <- anti_join(DF_A, DF_B, by = "ID")

### [5 - Exportação] -----------------------------------------------------------

write_xlsx(DF_Dif, output)
