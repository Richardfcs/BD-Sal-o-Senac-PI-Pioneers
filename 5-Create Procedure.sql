delimiter $$

-- Procedure para cadastrar um produto
create procedure cadProduto(in pidProduto int, 
                           in pdescricao varchar(100), 
                           in pquantidade int, 
                           in pvalor decimal(10,2))
begin
    insert into produto (idProduto, descricao, quantidade, valor)
    values (pidProduto, pdescricao, pquantidade, pvalor);
end $$

-- Procedure para atualizar o estoque de um produto
create procedure atualizaEstoque(in pidProduto int,
                                 in pquantidade int)
begin
    update produto
    set quantidade = quantidade + pquantidade
    where idProduto = pidProduto;
end $$

-- Procedure para excluir um cliente
create procedure excluiCliente(in pcpf varchar(14))
begin
    delete from cliente where cpf = pcpf;
    delete from enderecocli where cpfCli = pcpf;
    delete from planosaude where cpfCli = pcpf;
end $$

-- Procedure para listar todos os clientes
create procedure listaClientes()
begin
    select * from cliente;
end $$

-- Procedure para cadastrar um funcionário
create procedure cadFuncionario(in pidFuncionario int,
                                in pnome varchar(45),
                                in psexo char(1),
                                in pdataNasc date,
                                in pcargo varchar(45),
                                in psalario decimal(10,2))
begin
    insert into funcionario (idFuncionario, nome, sexo, dataNasc, cargo, salario)
    values (pidFuncionario, pnome, psexo, pdataNasc, pcargo, psalario);
end $$

-- Procedure para atualizar o salário de um funcionário
create procedure atualizaSalario(in pidFuncionario int, 
                                 in pnovoSalario decimal(10,2))
begin
    update funcionario
    set salario = pnovoSalario
    where idFuncionario = pidFuncionario;
end $$

-- Procedure para cadastrar um fornecedor
create procedure cadFornecedor(in pidFornecedor int,
                               in pnome varchar(45),
                               in ptelefone varchar(15),
                               in pendereco varchar(100))
begin
    insert into fornecedor (idFornecedor, nome, telefone, endereco)
    values (pidFornecedor, pnome, ptelefone, pendereco);
end $$

-- Procedure para registrar uma venda
create procedure registraVenda(in pidVenda int,
                               in pcpfCliente varchar(14),
                               in pidProduto int,
                               in pquantidade int,
                               in pvalorTotal decimal(10,2))
begin
    insert into venda (idVenda, cpfCliente, idProduto, quantidade, valorTotal)
    values (pidVenda, pcpfCliente, pidProduto, pquantidade, pvalorTotal);
    
    -- Atualiza estoque do produto
    call atualizaEstoque(pidProduto, -pquantidade);
end $$

-- Procedure para cadastrar um departamento
create procedure cadDepartamento(in pidDepartamento int,
                                 in pnome varchar(45))
begin
    insert into departamento (idDepartamento, nome)
    values (pidDepartamento, pnome);
end $$

-- Procedure para buscar produtos com estoque abaixo de um limite
create procedure produtosBaixoEstoque(in plimite int)
begin
    select * from produto
    where quantidade < plimite;
end $$

delimiter ;