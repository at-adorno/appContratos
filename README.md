# appContratos
Objetivo
Apresentar o desenho do mínimo produto viável de uma solução mobile voltada para o funcionário CAIXA responsável pelo gerenciamento de contratos de terceirizadas.
Visão
Para o funcionário CAIXA responsável por gerir contratos de terceirizadas 
que precisa ter a mão informações que permitam apoio a tomada de decisão 
o CAIXA Contratos de Terceirizadas 
é um aplicativo mobile 
que possibilita ao funcionário ter acesso a informações sobre contratos de terceirizadas, tais como: cláusulas, orçamento e indicadores de desempenho. 
Diferentemente do processo manual de consulta a cada parâmetro em sus respectivo sistema,
o nosso produto vai permitir a consulta móvel e centralizada a todas as informações que permeiam a gestão de contratos de terceirizadas.
Descrição
O produto é:
Uma solução mobile.
Voltado para os funcionários caixa que atuam com contratos de terceirizadas.
Voltado para os contratos firmados entre a CAIXA e as empresas terceirizadas.
Uma forma centralizada de consultar as informações sobre determinado contrato.
Integrado aos sistemas internos.
O Produto não é:
Uma solução web.
Uma solução para cadastramento de contratos.
Uma solução para gerir permissões de acesso a informações de contratos.
Um processo para gerir as entregas contratuais em substituição a existente.
O Produto faz:
Simplifica a consulta a dados dos contratos.
Acesso único a informações em sistemas distintos.
Consulta a dados gerais, situação no SIPLO, resumo financeiro, acionamentos do contrato e indicadores de desempenho do contrato e de seus aditivos.
Download do arquivo PDF do contrato e de seus aditivos.
O Produto não faz:
Alterações em contrato.
Inclusão de termos aditivos.
Provisionamentos de valores financeiros.
Pagamentos de nenhuma natureza.
Entregas de acionamentos contratuais.
Cria indicadores não previstos no sistema originador.
Objetivos Principais
Objetivo 1:
Simplificar a consulta a informações sobre um contrato específico de terceirizadas a qual tenha acesso
Objetivo 2:
Permitir ao funcionário CAIXA acompanhar o andamento/desempenho dos contratos sobre sua gestão
Funcionalidades possíveis com integração com o SIGET
Funcionalidade 1: Através de uma api é possível consumir dados específicos do contrato (http://siget.caixa/caixa.siget/rel/relatorioGeralParametrizado.do?method=detalhamentoRelatorio&nuContrato=08664/2018):

Funcionalidade 2: Também é possível fazer o download de um contrato e seus aditivos em formato .pdf (http://siget.caixa/caixa.siget/rel/relatorioGeralParametrizado.do?method=detalhamentoRelatorio&nuContrato=08664/2018).

Funcionalidade 3: Através do SIGET é possível obter informações consolidadas do SIPLO:

Funcionalidades disponíveis com integração com o SIGCT
Funcionalidade 4: Consultar as equipes existentes no contrato ágil

Funcionalidade 5: Detalhar as sprints de uma equipe de Grupo 1 no contrato ágil.

Funcionalidade 6: Possível consultar e extrair os termos das equipes:

Funcionalidade 7: Utilizar a API do SIGCT para retornar informações sobre:
Contratos
GET: /v1/contratos - Listar os contratos do usuário. Como Gestor gostaria de consultar somente os contratos vinculados ao usuário que está logado no SIGCT:
Usuário
GET /v1/contratos/{numero-contrato}/termos-para-recebimento - Dar visibilidade da qualidade da entrega da contratada.
 Fornecedores
GET /v1/fornecedores/{numero-fornecedor}/avaliacao - Dar visibilidade da qualidade de atendimento da empresa.
 VDP
GET /v1/vdp - Receber informação de validação de entrega que vai entrar em VDP (validação por decurso de prazo) e também as demandas que precisam ser validadas pois já entraram em VDP.
