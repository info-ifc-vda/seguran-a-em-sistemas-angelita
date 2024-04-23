# Análise de Vulnerabilidades com SonarQube Usando Docker
## Configuração do Ambiente

Usaremos um docker-compose.yaml que configura quatro serviços: SonarQube, PostgreSQL e DVWA. Este arquivo Docker Compose simplifica a configuração e a execução dos contêineres necessários para a análise.

### Passo a Passo
1. Você deverá baixar o arquivo [`install.sh`](../docker/sonarqube/install.sh)
2. Atribua as permissões necessárias e execute o instalador
```bash
chmod +x install.sh
./install.sh
```
3. Baixe o arquivo [`docker-compose.yml`](../docker/sonarqube/docker-compose.yml), que contém todas as definições dos contêineres usados nesse laboratório.
4. Baixe o arquivo [`run.sh`](../docker/sonarqube/run.sh) e atribua as permissões necessárias para execução. Execute o script `run.sh`.
```bash
chmod +x run.sh
./run.sh
```
5. Aguarde a conclusão do script. Isso pode demorar alguns minutos.
6. Depois que o SonarQube estiver operacional, acesse o endereço `http://localhost:9000` para visualizar a interface gráfica do  SonarQube. 
   1. Credenciais de acesso:
      1. Usuário: `admin`
      2. Senha: `bitnami`
7. Baixe o script [`run-sonarscanner.sh`](../docker/sonarqube/run-sonarscanner.sh). Vamos utilizá-lo logo em seguida.
8. Vamos criar um novo projeto para análise do DVWA.
   1. Clique na aba `Projects` e adicione um novo projeto **local** com o nome dvwa. Nesta análise iremos utilizar as configurações globais.
   2. Configure o método de análise para `Locally`
   3. Crie um token, que será utilizado pelo scanner para buscar vulnerabilidades.
9.  Agora vamos configurar o DVWA
   1. Acesse o endereço `http://localhost:8081`. Credenciais de acesso:
       1.  Usuário: `admin`
       2.  Senha: `admin`
   2.  Clique no botão *Create/Reset Database*
10. Você precisará acessar novamente a interface, porém a senha do admin mudou para *password* 

---
### Sobre o DVWA (Damn Vulnerable Web Application)

#### O que é o DVWA?

O Damn Vulnerable Web Application (DVWA) é uma aplicação web PHP/MySQL extremamente vulnerável. Ela foi projetada com o propósito de ser uma ferramenta educativa para profissionais e estudantes de segurança da informação. O DVWA oferece um ambiente seguro e legal para testar e aprender sobre técnicas comuns de exploração de vulnerabilidades na web, com variados níveis de dificuldade, permitindo aos usuários praticar ataques como SQL injection, XSS e muitos outros em um contexto controlado.

#### Por que usar o DVWA?

- **Educação em Segurança**: O DVWA é ideal para aprender e ensinar segurança da informação, pois proporciona uma série de desafios práticos.
- **Testes de Penetração**: Serve como uma plataforma para testar ferramentas de segurança e técnicas de penetração.
- **Desenvolvimento Seguro**: Auxilia desenvolvedores a entender melhor as vulnerabilidades de segurança e como evitar tais falhas em suas próprias aplicações.

---
### Sobre o SonarScanner

#### O que é o SonarScanner?

O SonarScanner é uma ferramenta de linha de comando usada para realizar análises de código fonte e detectar problemas de qualidade e vulnerabilidades de segurança. É parte do ecossistema SonarQube e pode ser usado com qualquer linguagem de programação suportada pelo SonarQube, incluindo Java, C#, PHP, JavaScript, Python, entre outras.

#### Como Realizar o Scan com o SonarScanner

Para realizar uma análise com o SonarScanner no ambiente configurado com Docker, siga estas etapas:

1. **Execução**:
   - Execute o script `run-sonarscanner.sh` com o comando abaixo:
     ```bash
     chmod +x run-sonarscanner.sh
     ./run-sonarscanner.sh
     ```
   - O script irá solicitar um token. Informe o token criado no passo 8 da configuração do ambiente.
   - Após o `enter` o script iniciará a varredura de vulnerabiliades.

5. **Visualização dos Resultados**:
   - Após a conclusão da análise, acesse `http://localhost:9000`.
   - Navegue até o projeto `dvwa` no SonarQube para ver os resultados da análise, incluindo vulnerabilidades e problemas de qualidade detectados.
