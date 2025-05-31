# fiware-stack-ppgti

# Projeto Fiware Stack | Tópicos Avançados em Engenharia de Software I | PPGTI

# Serviços:

  FIWARE Short Time Historic (STH) - Comet -> http://HostIP/comet
  
  FIWARE Cygnus (PORTA 5080)               -> http://HostIP/cygnus5080
  FIWARE Cygnus (PORTA 5051)               -> http://HostIP/cygnus5051
  
  FIWARE Orion Context Broker              -> http://HostIP/orion

# Visualização de Dados:  
  
  WireCloud                                -> http://HostIP
  
  Obs.: Concluir configuração de acordo com a documentação -> https://wirecloud.readthedocs.io/en/stable/installation_guide/#database-population)
  
  Grafana                                  -> http://HostIP:3000

# Demais ferramentas:

  NGINX
  
  Obs.: Na primeira inicialização, o Docker criará o volume persistente do NGINX com um subdiretório 'nginx.conf'. É preciso excluir o subdiretório 'nginx.conf' e copiar o arquivo 'nginx.conf' deste repositório para o diretório '~/volumes-docker/nginx/'.
  
  Postgres
  
  MongoDB
  
  Elasticsearch
  
  Memcached

  *KeyCloak (Pendente)

