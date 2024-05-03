# Firewall

Um firewall é um recurso de segurança de rede que monitora e controla o tráfego de entrada e saída com base em regras de segurança predeterminadas. O objetivo principal de um firewall é estabelecer uma barreira entre uma rede interna confiável e redes externas não confiáveis, como a Internet, para bloquear acessos maliciosos e ataques cibernéticos. Ele pode ser implementado como software, hardware ou uma combinação de ambos. O papel fundamental do firewall é proteger contra atividades maliciosas, bloqueando acessos não autorizados enquanto permite comunicações legítimas.

A necessidade de firewalls decorre da crescente incidência de ameaças cibernéticas e a necessidade de redes seguras, especialmente para organizações que gerenciam dados sensíveis. Firewalls são a primeira linha de defesa contra potenciais invasores, bloqueando acessos não autorizados e protegendo dados e recursos dentro da rede.


## Como Funciona um Firewall?

Firewalls funcionam como um ponto de checagem de segurança em que o tráfego de dados é examinado com base em regras pré-definidas. Se o tráfego atende aos critérios de segurança, ele é permitido; caso contrário, é bloqueado. Essa função é essencial para prevenir ataques cibernéticos e limitar o alcance de atividades mal-intencionadas dentro de uma rede.

## Sistema de Firewall: Componentes Essenciais

### Frames
Frames são unidades de dados na camada de enlace de dados que encapsulam pacotes da camada de rede. Eles são essenciais para a transmissão física de dados em uma rede e alguns firewalls avançados inspecionam esses frames para proteger contra ataques específicos de camada de enlace, como ARP spoofing ou MAC flooding.

### Pacotes
Pacotes são as unidades básicas de comunicação em uma rede. Constituídos por cabeçalhos e dados, eles transportam informações essenciais como endereços IP de origem e destino. Firewalls analisam esses pacotes para determinar se devem ser bloqueados ou permitidos, baseando-se em critérios predefinidos como endereços, portas e protocolos.

### Estados
Firewalls stateful monitoram e mantêm o registro das conexões de rede ativas, permitindo decisões de filtragem baseadas no estado das sessões. Esse monitoramento ajuda a garantir que apenas tráfego legítimo e correspondente a sessões autorizadas seja permitido.

### Proxies
Funcionando como intermediários, os proxies nos firewalls gerenciam as solicitações de conexão dos usuários, fazendo-as em nome deles após uma avaliação de segurança. Essa funcionalidade aumenta a segurança ao ocultar os endereços IP internos e proporcionar uma camada adicional de filtragem e verificação.

### IDS/IPS
Os Sistemas de Detecção de Intrusão (IDS) e Prevenção de Intrusão (IPS) são tecnologias integradas em muitos firewalls modernos. O IDS monitora o tráfego em busca de atividades suspeitas, enquanto o IPS pode bloquear esse tráfego automaticamente, oferecendo uma resposta proativa a ameaças emergentes.

### Antivírus de Rede
O antivírus de rede verifica o tráfego em busca de vírus e malware, impedindo que estes infectem os sistemas ou se propaguem através da rede. Integrado a firewalls, o antivírus de rede é uma linha de defesa crucial contra conteúdo malicioso.

### Verificadores de Integridade
Estas ferramentas avaliam a integridade dos arquivos e sistemas, alertando para alterações não autorizadas que possam indicar uma intrusão. Embora mais comuns em sistemas de antivírus e IPS, alguns firewalls de próxima geração também incluem esta funcionalidade para proteção reforçada.

## Tipos de Firewall e Suas Características

1. **Firewalls de Filtragem de Pacotes**: Estes firewalls operam principalmente na camada de rede (Camada 3) do modelo OSI. Eles são a forma mais básica de proteção, filtrando o tráfego diretamente nos endereços IP e nas portas de destino e origem. Esses firewalls não mantêm registros de conexões, e cada pacote é verificado de forma isolada, sem considerar o contexto das conexões anteriores. Devido à sua natureza simples, eles são rápidos, mas menos seguros, pois não reconhecem padrões de tráfego ou o estado das conexões.
   
2. **Firewalls com Inspeção de Estado**: Atuando na camada de transporte (Camada 4) do modelo OSI, os firewalls de estado, ou firewalls de inspeção de estado, realizam uma verificação dinâmica e mantêm um registro do estado das conexões de rede, como sessões TCP abertas e fechadas. Eles monitoram o estado completo de uma sessão de comunicação ativa e fazem decisões de filtragem que dependem tanto do estado quanto do contexto da sessão. Esses firewalls asseguram que somente pacotes correspondentes a uma sessão conhecida e ativa sejam permitidos, o que os torna mais seguros contra certos tipos de ataques, como spoofing de sessão.

3. **Deep Packet Inspection (DPI):** O DPI é uma funcionalidade avançada que pode ser encontrada em firewalls de inspeção de estado e de próxima geração, e opera predominantemente na camada de aplicação (Camada 7) do modelo OSI. Esta tecnologia vai além da inspeção de cabeçalhos de pacotes, analisando o conteúdo dos dados dentro dos pacotes para detectar malwares, violações de políticas de uso, e tentativas de intrusão escondidas em tráfego aparentemente legítimo, como um pedido HTTP.
   
4. **Firewalls de Proxy (Nível de Aplicativo)**: Esses firewalls operam na camada de aplicação (Camada 7) do modelo OSI. Eles atuam intermediando e inspecionando todo o tráfego que entra e sai da rede, criando conexões de espelho para cada atividade de rede. Esta abordagem aumenta significativamente a segurança, pois permite uma análise detalhada do conteúdo dos pacotes. No entanto, pode haver uma redução na velocidade de transmissão de dados devido ao processo de inspeção intensiva.

5. **Firewalls de Próxima Geração (NGFW)**: Os NGFW combinam as funcionalidades dos firewalls tradicionais com capacidades adicionais, como sistemas de prevenção de intrusões (IPS) e DPI. Eles atuam em várias camadas do modelo OSI, geralmente entre as camadas de rede e aplicação (Camadas 3 a 7). Estes firewalls são projetados para oferecer uma defesa robusta contra ameaças modernas e complexas, integrando múltiplas tecnologias de segurança em uma única solução.
   
6. **Proxy:** Atuando como intermediário, os firewalls proxy operam na camada de aplicação (Camada 7) do modelo OSI. Eles fazem solicitações de conteúdo na Internet em nome dos usuários internos, ocultando os endereços IP reais dos usuários e fornecendo uma camada adicional de filtragem e inspeção de conteúdo. Esta função é vital para proteger a identidade dos usuários e para o controle detalhado do tráfego de rede.
7. **Network Address Translation (NAT):** NAT é uma funcionalidade que se encontra tipicamente na camada de rede (Camada 3) do modelo OSI. É comumente implementada em firewalls e roteadores, permitindo que dispositivos em uma rede privada usem endereços IP privados enquanto se comunicam com a Internet usando endereços IP públicos. NAT ajuda a conservar os endereços IP públicos e adiciona uma camada de segurança ao ocultar a estrutura interna da rede para o mundo externo.

## Firewall de rede e firewall de host
Existem dois tipos principais de firewalls: firewalls de rede e firewalls de host. Ambos servem ao propósito fundamental de proteger sistemas e redes, mas operam em diferentes escopos e camadas da infraestrutura de TI.

### Firewalls de Rede:

1. **Definição e Escopo**: Firewalls de rede são dispositivos físicos ou softwares implementados para proteger toda uma rede. Eles atuam como barreiras entre a rede interna de uma organização e redes externas, como a Internet, filtrando o tráfego que entra e sai com base em regras de segurança predefinidas.

2. **Funcionalidades**: 
   - **Inspeção de Estado**: Acompanham o estado das conexões ativas para garantir que apenas tráfego legítimo seja permitido.
   - **Filtragem por Camadas**: Podem operar desde a camada de rede até a camada de aplicação, oferecendo uma defesa em profundidade.
   - **VPN e NAT**: Frequentemente incluem funcionalidades como VPN e NAT para segurança adicional e gerenciamento de endereços.

3. **Implementação**: Podem ser implementados como dispositivos dedicados (hardware) em um ponto estratégico da rede, geralmente entre a rede interna e o gateway de internet, ou como uma solução virtualizada em ambientes de nuvem.

### Firewalls de Host:

1. **Definição e Escopo**: Firewalls de host são instalados diretamente em dispositivos individuais ou servidores para proteger o sistema operacional e as aplicações contra acessos não autorizados ou maliciosos. Eles monitoram e controlam o tráfego de entrada e saída do próprio dispositivo.

2. **Funcionalidades**:
   - **Regras Baseadas em Aplicações**: Podem controlar o tráfego baseado em aplicações específicas, permitindo ou bloqueando comunicações com base na política de segurança do host.
   - **Monitoramento de Integridade**: Alguns firewalls de host avançados incluem funcionalidades para monitorar a integridade do sistema e prevenir mudanças não autorizadas nos arquivos críticos.

3. **Implementação**: Geralmente, são softwares instalados em cada dispositivo que precisa de proteção, como laptops, desktops e servidores. Eles são especialmente importantes em ambientes onde os dispositivos podem se conectar a várias redes externas, como em configurações móveis ou de trabalho remoto.

### Diferenças entre Firewall de Rede e Firewall de Host
- **Escopo de Proteção**: Firewalls de rede protegem uma rede inteira, enquanto firewalls de host protegem dispositivos individuais.
- **Gerenciamento**: Firewalls de rede centralizam a gestão de segurança, enquanto firewalls de host requerem configuração e manutenção em cada dispositivo.
- **Uso de Recursos**: Firewalls de host podem consumir recursos do sistema local, o que pode afetar o desempenho do dispositivo host.


## Modos de implementação 
A implementação de firewalls pode ocorrer em diferentes níveis do sistema operacional, dependendo do tipo e da função do firewall. 

1. **Firewalls de Host**: Muitos firewalls de host são implementados no nível do kernel do sistema operacional. Isso é especialmente verdadeiro para firewalls que precisam interagir intimamente com as funções de rede do sistema para monitorar e filtrar eficazmente o tráfego de entrada e saída. A implementação no nível do kernel permite que o firewall opere com alta eficiência e interaja diretamente com os componentes de rede do sistema operacional, facilitando a implementação de políticas de segurança detalhadas e a interceptação de pacotes de rede.

2. **Firewalls de Rede**: Esses firewalls geralmente operam fora do sistema operacional de dispositivos individuais, como dispositivos autônomos ou integrados em hardware de rede (como roteadores). Eles não estão implementados no nível do kernel do sistema operacional dos dispositivos que protegem. No entanto, em ambientes virtualizados ou baseados em nuvem, firewalls de rede podem ser implementados como softwares que operam em uma camada mais baixa, próxima ao kernel, para gerenciar o tráfego entre máquinas virtuais e redes.

3. **Firewalls Baseados em Software**: Alguns firewalls baseados em software, especialmente aqueles projetados para ambientes específicos ou para tarefas específicas dentro de uma infraestrutura de TI, podem operar em um nível acima do kernel, utilizando APIs do sistema operacional para filtrar o tráfego. Estes não são tão profundos quanto os firewalls de kernel, mas ainda assim oferecem proteção significativa com uma abordagem mais focada e menos intrusiva no sistema.

A escolha de onde implementar um firewall depende da necessidade específica de segurança, do ambiente de rede, e do equilíbrio entre desempenho e segurança. Em um nível de kernel, os firewalls podem oferecer maior controle e segurança, mas também requerem integração e manutenção mais complexas.

## Visualizador Firewall
- [Firewall Visualization Tool](../simuladores/Firewall%20Visualization%20Tool.jar)

## Leitura Recomendada
- [O que é um firewall? Definição e explicação](https://www.kaspersky.com.br/resource-center/definitions/firewall)
- [O que é firewall de rede?](https://www.fortinet.com/br/resources/cyberglossary/firewall)
- [What Is Deep Packet Inspection (DPI)?](https://www.fortinet.com/resources/cyberglossary/dpi-deep-packet-inspection)

## Atividade
- [Atividade prática](../labs/lab-firewall.md)

## Firewall Linux: Iptables
- [Introdução a Iptables](https://blog.ironlinux.com.br/introducao-ao-iptables/)
- [Guia Foca GNU/Linux
Capítulo 10 - Firewall iptables](https://www.ppgia.pucpr.br/pt/arquivos/techdocs/linux/foca-avancado/ch-fw-iptables.html)
- [Exemplo de regras Iptables](http://www.inf.ufsc.br/~bosco.sobral/ensino/ine5680/material-seg-redes/2014-1/iptables-script.htm)