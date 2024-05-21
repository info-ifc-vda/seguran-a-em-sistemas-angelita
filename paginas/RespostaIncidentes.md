# Resposta a Incidentes

## Leitura Recomendada
   - [IBM - O que é resposta a incidentes?](https://www.ibm.com/br-pt/topics/incident-response)    
   - [NIST - Computer Security Incident Handling Guide](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
   - [Etapas e estruturas de resposta a incidentes para SANS e NIST](https://minutodaseguranca.blog.br/etapas-e-estruturas-de-resposta-a-incidentes-para-sans-e-nist/)
   -  [The Practice of Network Security Monitoring.pdf](https://github.com/kevanpng/fastIR-logstash-flask-example/blob/master/The%20Practice%20of%20Network%20Security%20Monitoring.pdf)
   - [Incident_Response_Computer_Forensics_3rd_Edition](http://cisweb.bristolcc.edu/~ik/Download/Forensic/Incident_Response_Computer_Forensics_3rd_Edition.pdf)
  - Exemplos de políticas comuns:
     - https://asset.stonex.com/wp-content/uploads/2021/11/pol-024_03-monitoramento-da-seguranca-da-informacao.pdf
     - https://www.ifto.edu.br/acesso-a-informacao/seguranca-da-informacao/documentos-lgpd-ifto/PGISI.pdf
     - https://www.trt4.jus.br/portais/governanca/processo-incidente-seguranca


### Caso de Uso: Incidente de Ransomware em uma Empresa de E-commerce

#### Contexto
A ARZ E-commerce, uma empresa de comércio eletrônico, foi vítima de um ataque de ransomware. O ransomware criptografou dados críticos, incluindo informações de clientes e transações, tornando-os inacessíveis. Os atacantes exigiram um pagamento em criptomoedas para fornecer a chave de decriptação. Este caso de uso ilustra como a equipe de segurança da ARZ E-commerce respondeu ao incidente.

#### Fases da Resposta a Incidentes

**Detecção**
- **Cenário:** Na manhã de segunda-feira, a equipe de TI da ARZ E-commerce notou que vários sistemas estavam inacessíveis e exibia uma mensagem de resgate, indicando que os dados estavam criptografados.
- **Ação:** A equipe de segurança iniciou a investigação após receber alertas de sistemas de monitoramento que detectaram atividades incomuns e tentativas falhas de acesso.

**Análise**
- **Cenário:** A equipe de resposta a incidentes (IRT) foi formada e começou a análise. Eles identificaram que o ransomware se espalhou por meio de um email de phishing que continha um anexo malicioso aberto por um funcionário.
- **Ação:** A IRT coletou logs, analisou tráfego de rede e utilizou ferramentas de forense digital para identificar o vetor de ataque e o escopo do comprometimento.

**Contenção**
- **Cenário:** A IRT precisou conter o ransomware para evitar a propagação para outros sistemas.
- **Ação:** Eles desconectaram os sistemas afetados da rede, bloquearam endereços IP suspeitos e isolaram o servidor infectado. Contataram todos os funcionários para alertá-los sobre o phishing.

**Erradicação**
- **Cenário:** Com os sistemas comprometidos isolados, a equipe precisava remover o ransomware e suas variantes.
- **Ação:** Implementaram ferramentas de remoção de malware e restauraram sistemas a partir de backups seguros. Corrigiram vulnerabilidades identificadas que poderiam ter permitido o ataque.

**Recuperação**
- **Cenário:** A empresa precisava retornar às operações normais e assegurar que o sistema estivesse seguro.
- **Ação:** Restauraram dados críticos a partir dos backups, validaram a integridade dos sistemas restaurados e monitoraram continuamente para garantir que não houvesse remanescentes do ransomware. A comunicação foi feita com clientes e stakeholders sobre o incidente e as ações tomadas.

#### Lições Aprendidas e Implementação de Políticas

- **Revisão das Políticas de Segurança:** Após o incidente, a ARZ E-commerce revisou suas políticas de segurança, incluindo a implementação de treinamentos mais rigorosos sobre segurança para todos os funcionários.
- **Melhoria dos Procedimentos de Backup:** Garantiram que os backups fossem realizados com mais frequência e armazenados de forma segura.
- **Monitoramento e Resposta:** Implementaram ferramentas avançadas de monitoramento e resposta para detectar e responder mais rapidamente a futuros incidentes.