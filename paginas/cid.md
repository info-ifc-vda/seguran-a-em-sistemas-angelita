# Tríade CID - Os pilares da segurança da informação
Os pilares da segurança da informação são fundamentais para entender como proteger sistemas, redes e dados. Eles são frequentemente representados pelas iniciais "CID", que não têm relação com a agência de inteligência, mas sim com Confidencialidade, Integridade e Disponibilidade. 

### 1. Confidencialidade

**Definição Técnica:** A confidencialidade refere-se à proteção de informações para que só sejam acessíveis a pessoas autorizadas. 

**Analogia:** Imagine que você tem um diário secreto. Você colocaria um cadeado nele para garantir que apenas pessoas de confiança, com a chave (ou a senha, no contexto digital), possam ler o que está escrito.

**Como é Implementada:**
- Criptografia: Transformando dados em um formato que só pode ser lido por quem tem a chave correta.
- Controle de Acesso: Restringindo o acesso a informações com base em permissões de usuário.

### 2. Integridade

**Definição Técnica:** Integridade é garantir que as informações sejam precisas e não sejam alteradas de forma inadequada.

**Analogia:** Pense em uma receita de família passada por gerações. Você quer ter certeza de que a receita não seja alterada inadvertidamente, mantendo sua "integridade" original.

**Como é Implementada:**
- Hashes e Somas de Verificação: Métodos que detectam mudanças não autorizadas nos dados.
- Controles de Acesso: Previnem alterações não autorizadas.
- Auditorias e Logs: Para rastrear quem fez o quê e quando.

### 3. Disponibilidade

**Definição Técnica:** Disponibilidade refere-se à garantia de que informações e recursos estejam acessíveis aos usuários autorizados quando necessários.

**Analogia:** Pense em uma biblioteca. Os livros precisam estar disponíveis sempre que os leitores precisarem. Se a biblioteca está sempre fechada ou os livros estão frequentemente ausentes, ela não é útil.

**Como é Implementada:**
- Redundância de Dados: Armazenando cópias de dados em locais diferentes.
- Manutenção de Hardware/Software: Garantindo que sistemas estejam operacionais.
- Planos de Recuperação de Desastres: Preparando-se para eventos que possam comprometer a acessibilidade.

--- 

Autenticidade e Não-Repúdio se unem à tríade CID e integram os conceitos fundamentais da segurança da informação, complementando os pilares de Confidencialidade, Integridade e Disponibilidade. 

### Autenticidade

**Definição Técnica:** Autenticidade é a garantia de que uma informação, transação ou entidade é realmente o que se declara ser. 

**Analogia:** Imagine autenticidade como um crachá de identificação em um evento exclusivo. O crachá garante que a pessoa que o porta é quem diz ser, evitando que impostores entrem no evento.

**Como é Implementada:**
- **Autenticação:** É o processo de verificar a identidade de um usuário, dispositivo ou entidade. Exemplos incluem senhas, tokens de segurança, biometria (como impressão digital ou reconhecimento facial).
- **Certificados Digitais:** Usados principalmente em comunicações pela internet, como HTTPS, para autenticar a identidade de um site.

### Não-Repúdio

**Definição Técnica:** Não-Repúdio é a garantia de que uma pessoa ou entidade não pode negar a validade de suas próprias ações ou compromissos. 

**Analogia:** Pense no não-repúdio como uma carta registrada com assinatura na entrega. Uma vez que o destinatário assina para receber a carta, ele não pode negar que a recebeu.

**Como é Implementada:**
- **Assinaturas Digitais:** São como uma assinatura manuscrita, mas em formato digital. Elas vinculam eletronicamente um remetente a um documento, transação ou mensagem, tornando difícil para o remetente negar sua autoria ou envio.
- **Logs e Auditorias:** Registros detalhados de ações realizadas em sistemas, que ajudam a rastrear e provar quem fez o quê.

### :bulb: Para pensar

1. Como a criptografia ajuda a manter a confidencialidade das informações?
2. Dê um exemplo de como a integridade dos dados pode ser comprometida.
3. Por que a redundância de dados é importante para a disponibilidade?
1. Como um sistema pode verificar a autenticidade de um usuário? Dê um exemplo prático.
2. Por que as assinaturas digitais são importantes para garantir o não-repúdio?

