# Declarando o resource local file
No codigo tem dois blocos de configuracão. O primeiro bloco, **terraform {...}** é um bloco especial de configuracão responsavel por configurar o Terraform. O uso principal é version-locking do seu codigo, mas tambem é configurar onde seu state file é armazenado e onde os providers são baixados.

O segundo bloco de configuracão é bloco resource aquele q declara um resource *local_file*.
***

# Inicializando o workspace