delimiter $$

create trigger trg_aft_insert_itensvendaprod after insert
on itensvendaprod
for each row
begin
    -- Atualiza a quantidade em estoque do produto
    update produto
    set quantidade = quantidade - new.quantidade
    where idProduto = new.Produto_idProduto;

    -- Atualiza o valor total da venda
    update venda
    set valorTotal = valorTotal + 
                     (new.valorDeVenda * new.quantidade - new.descontoProd)
    where idVenda = new.Venda_idVenda;
end $$

DELIMITER ;

---------------------------------------------------------------------------------------------

DELIMITER $$

create trigger trg_aft_delete_itensvendaprod after delete
on itensvendaprod
for each row
begin
    -- Atualiza a quantidade em estoque do produto
    update produto
    set quantidade = quantidade + old.quantidade
    where idProduto = old.Produto_idProduto;

    -- Atualiza o valor total da venda
    update venda
    set valorTotal = valorTotal - 
                     (old.valorDeVenda * old.quantidade - old.descontoProd)
    where idVenda = old.Venda_idVenda;
end $$

DELIMITER ;
---------------------------------------------------------------------------------------------

DELIMITER $$

CREATE TRIGGER trg_bfr_insert_dependente
BEFORE INSERT ON dependente
FOR EACH ROW
BEGIN
    -- Verifica se o dependente tem mais de 22 anos
    IF TIMESTAMPDIFF(YEAR, NEW.dataNasc, CURDATE()) > 22 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Não é permitido adicionar dependentes maiores de 22 anos.';
    END IF;
END$$

DELIMITER ;

---------------------------------------------------------------------------------------------

DELIMITER $$

create trigger trg_aft_update_itensvendaprod after update
on itensvendaprod
for each row
begin
    -- Atualiza a quantidade em estoque do produto
    update produto
    set quantidade = quantidade + old.quantidade - new.quantidade
    where idProduto = new.Produto_idProduto;

    -- Atualiza o valor total da venda
    update venda
    set valorTotal = valorTotal - 
                     (old.valorDeVenda * old.quantidade - old.descontoProd) + 
                     (new.valorDeVenda * new.quantidade - new.descontoProd)
    where idVenda = new.Venda_idVenda;
end $$

DELIMITER ;

---------------------------------------------------------------------------------------------

DELIMITER $$

CREATE TRIGGER trg_aft_insert_funcionario 
AFTER INSERT ON funcionario
FOR EACH ROW
BEGIN
    -- Atualiza a idade do funcionário com base na data de nascimento
    UPDATE funcionario
    SET idade = TIMESTAMPDIFF(YEAR, NEW.dataNasc, CURDATE())
    WHERE cpf = NEW.cpf;
END$$

DELIMITER ;

---------------------------------------------------------------------------------------------

DELIMITER $$

CREATE TRIGGER trg_before_insert_ferias
BEFORE INSERT ON Ferias
FOR EACH ROW
BEGIN
  IF NEW.dataInicio > NEW.dataFim THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'A data de início das férias deve ser anterior à data de fim.';
  END IF;
END$$

DELIMITER ;