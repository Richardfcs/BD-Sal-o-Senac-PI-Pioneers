-- View 1: Agendamentos clientes
create view clientesAgenados as select
 c.idCliente, 
    c.nome As ClienteNome, 
    a.idAgendamento, 
    a.status AS StatusAgendamento, 
    a.dataAgendamento
from cliente c
	join Agendamento a ON c.idCliente = a.Cliente_idCliente;

-- View 2: Funcionários e os serviços vendidos
create view FuncionarioServicoVenda as select 
f.nome AS FuncionarioNome, 
    s.nome AS ServicoNome, 
    ivs.quantidade, 
    ivs.valorVenda, 
    v.dataVenda
from Funcionario f
	join ItensVendaServico  ivs ON f.cpf = ivs.Funcionario_cpf
    join Servico  s ON ivs.Servico_idServiço = s.idServiço
    join Venda v ON ivs.Venda_idVenda = v.idVenda;
    
-- View 3: Produtos vendidos nas compras
create view ProdutoCompra as select
p.nome AS ProdutoNome, 
    ic.quantidade, 
    ic.valorComp, 
    c.dataComp
from produto p
	join ItensCompra  ic ON p.idProduto = ic.Produto_idProduto
    join Compras c ON ic.Compras_idCompras = c.idCompras;
    
-- View 4: Relatório financeiro do centro de custo
create view ClientesComAgendamentos as select
c.idCliente, 
    c.nome AS ClienteNome, 
    a.idAgendamento, 
    a.status AS StatusAgendamento, 
    a.dataAgendamento
from Cliente c
	join Agendamento a on c.idCliente = a.Cliente_idCliente;
    
-- View 5: Feedback de clientes sobre produtos
create view FeedbackprodutoCliente as select 
f.comentarios, 
    f.avaliacao, 
    c.nome AS ClienteNome, 
    p.nome AS ProdutoNome
from Feedback f
	join Cliente c on f.Cliente_idCliente = c.idCliente
    join Produto p on f.idFeedback = p.idProduto;
    
-- View 6: Funcionario, cargo e departamento
create view FuncionarioCargodepartamento as select
f.nome AS FuncionarioNome, 
    c.nome AS CargoNome, 
    d.nome AS DepartamentoNome
from Funcionario f
	join Trabalhar t on f.cpf = t.Funcionario_cpf
    join cargo c on t.Cargo_cbo = c.cbo
    join Departamento d on t.Departamento_idDepartamento = d.idDepartamento;
    
-- View 7: Histórico de vendas
create view HistoricoVenda as select
 v.idVenda, 
    v.dataVenda, 
    v.valorTotal, 
    f.nome AS FuncionarioNome, 
    c.nome AS ClienteNome
from Venda v
	join Funcionario f on v.Funcionario_cpf = f.cpf
    join Cliente c on v.Cliente_idCliente = c.idCliente;
    
-- View 8: Relatório de despesas e compras
create view RelatorioDespesaCompras as select
 d.nome AS DespesaNome, 
    d.valor, 
    d.dataVenc, 
    c.cumpomFiscal, 
    c.dataComp
from Despesa d 
	join compras c on d.Compras_idCompras = c.idCompras;
    
-- View 9: Resumo de vendas por produto
create view ResumoVendaproduto as select
p.nome AS ProdutoNome, 
    SUM(ivp.quantidade) AS QuantidadeVendida, 
    SUM(ivp.valorDeVenda) AS TotalVendas
from Produto p
	join ItensVendaProd ivp on p.idProduto = ivp.Produto_idProduto
    group by p.nome;
    
-- View 10: Funcionários com dependentes
create view FuncionarioDependente as select
f.nome AS FuncionarioNome, 
    d.nome AS DependenteNome, 
    d.parentesco
from Funcionario f
	join Dependente d on f.cpf = d.Funcionario_cpf;