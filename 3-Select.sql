-- 20 CONSULTAS / PERGUTAS / RELATÓRIOS DO BANCO UTILIZANDO JOIN E/OU SUBSELECT --
-- ---------------------------------------------------------------------------------

-- 1º - Visão geral de funcionários.
-- (CPF, NOME, GÊNERO, DATA DE NASCIMENTO, IDADE, ESTADO CIVIL, EMAIL, CH, DATA ADM, BAIRRO, CIDADE)
-- [JOIN]

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		join enderecoFunc on cpf = funcionario_cpf
			order by nome;

-- 2º - Relatório de funcionários que possuem dependentes: 11
-- [INNER JOIN]

select dep.cpf "CPF do Dependente", dep.nome "Dependente", 
	timestampdiff(year, dep.dataNasc, now()) "Idade do Dependente",
    dep.parentesco "Parentesco", func.nome "Responsável"
	from dependente dep
		inner join funcionario func on func.cpf = dep.funcionario_cpf
			order by func.nome;
            
-- 3º - Quantos dependentes cada funcionário possui?: 1
-- [INNER JOIN]

select func.cpf "CPF", func.nome "Funcionario", 
	count(dep.cpf) "Quantidade de Dependentes"
    from funcionario func
		inner join dependente dep on dep.funcionario_cpf = func.cpf
			group by func.cpf
				order by func.nome;
                
-- 4º - Lista de Salário bruto de funcionarios:
-- [INNER JOIN]

select upper(func.nome) "Funcionário", func.cpf as "CPF",
	concat(func.ch, 'h') "Carga-horária", 
    concat('R$ ', format(func.salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(func.comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(func.salario + func.comissao, 2, 'de_DE')) "Salário Final"
	from funcionario func
		inner join dependente dep on dep.funcionario_cpf = func.cpf
				order by func.nome;      

-- 5º - Relatório de Investimento com funcionários:
-- [INNER JOIN]

select
	count(func.cpf) "Quantidade de Funcionários", 
    concat("R$ ", format(avg(func.salario), 2, 'de_DE')) "Média Salarial",
    concat("R$ ", format(avg(func.comissao), 2, 'de_DE')) "Média das Comissões",
    concat("R$ ", format(sum(func.salario + func.comissao), 2, 'de_DE')) "Investimento com Funcionário"
	from funcionario func
		inner join dependente dep on dep.funcionario_cpf = func.cpf
				order by func.nome;    

-- 6º - Quantidade de Vendas de cada funcionario: 
-- [INNER JOIN]

select func.nome "Vendedor", 
	count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(vnd.valorTotal - coalesce(vnd.desconto, 0)), 2, 'de_DE')) "Faturamento"
	from venda vnd
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			group by func.cpf
				order by sum(vnd.valorTotal - coalesce(vnd.desconto, 0)) desc;

-- 7º - Vendas realizadas por funcionarios entre 2021 e 2024: 10
-- [INNER JOIN]

select func.nome "Vendedor", 
	count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(vnd.valorTotal - coalesce(vnd.desconto, 0)), 2, 'de_DE')) "Faturamento"
	from venda vnd
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			where vnd.dataVenda between '2021-01-01' and '2024-03-31'
				group by func.cpf
					order by sum(vnd.valorTotal - coalesce(vnd.desconto, 0)) desc;

-- 8º - Lista de Funcionarios HOMENS: 5
-- [JOIN]

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		join enderecoFunc on cpf = funcionario_cpf
        where sexo = 'M'
			order by nome;
            
-- 9º - Lista de Funcionarias MULHERES: 6
-- [JOIN]

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		join enderecoFunc on cpf = funcionario_cpf
        where sexo = 'F'
			order by nome;
            
-- 10º - Lista de Funcionarios CASADOS(AS): 5
-- [JOIN]

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		join enderecoFunc on cpf = funcionario_cpf
        WHERE estadoCivil IN ("Casado", "Casada")
			order by nome;

-- 11º - Lista de Funcionarios SOLTEIROS(AS): 4
-- [JOIN]

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		join enderecoFunc on cpf = funcionario_cpf
        WHERE estadoCivil IN ("Solteiro", "Solteira")
			order by nome;

-- 12º - Lista de Funcionarios DIVORCIADOS(AS): 2
-- [JOIN]

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		join enderecoFunc on cpf = funcionario_cpf
        WHERE estadoCivil IN ("Divorciado", "Divorciada")
			order by nome;
            
-- 13º - Lista de funcionários com dependentes MENINOS: 5
-- [INNER JOIN]

SELECT 
    dep.cpf AS "CPF do Dependente", 
    dep.nome AS "Dependente", 
    TIMESTAMPDIFF(YEAR, dep.dataNasc, NOW()) AS "Idade do Dependente",
    dep.parentesco AS "Parentesco", 
    func.nome AS "Responsável"
FROM 
    dependente dep
INNER JOIN 
    funcionario func ON func.cpf = dep.funcionario_cpf
WHERE 
    dep.parentesco = "Filho" 
ORDER BY 
    func.nome;
    
-- 14º - Lista de funcionários com dependentes MENINAS: 6
-- [INNER JOIN]

SELECT 
    dep.cpf AS "CPF do Dependente", 
    dep.nome AS "Dependente", 
    TIMESTAMPDIFF(YEAR, dep.dataNasc, NOW()) AS "Idade do Dependente",
    dep.parentesco AS "Parentesco", 
    func.nome AS "Responsável"
FROM 
    dependente dep
INNER JOIN 
    funcionario func ON func.cpf = dep.funcionario_cpf
WHERE 
    dep.parentesco = "Filha" 
ORDER BY 
    func.nome;
    
-- 15º - Lista de funcionários com dependentes menores de 6 ANOS: 7
-- [INNER JOIN]

SELECT 
    dep.cpf AS "CPF do Dependente", 
    dep.nome AS "Dependente", 
    TIMESTAMPDIFF(YEAR, dep.dataNasc, NOW()) AS "Idade do Dependente",
    dep.parentesco AS "Parentesco", 
    func.nome AS "Responsável"
FROM 
    dependente dep
INNER JOIN 
    funcionario func ON func.cpf = dep.funcionario_cpf
WHERE 
    TIMESTAMPDIFF(YEAR, dep.dataNasc, NOW()) < 6
ORDER BY 
    func.nome;

------------------------------------------------------------------------------------------------


-- 16° -  Lista de funcionários que trabalham em cidades diferentes da sede da empresa

SELECT 
    f.cpf AS "CPF", 
    UPPER(f.nome) AS "Funcionário", 
    e.cidade AS "Cidade do Funcionário", 
    emp.cidade AS "Cidade da Sede"
FROM 
    funcionario f
JOIN 
    enderecoFunc e ON f.cpf = e.funcionario_cpf
JOIN 
    empresa emp ON emp.idEmpresa = f.empresa_id
WHERE 
    e.cidade != emp.cidade
ORDER BY 
    f.nome;

------------------------------------------------------------------------------------------------

-- 17° -  Funcionários que nunca realizaram vendas

SELECT 
    f.cpf AS "CPF", 
    UPPER(f.nome) AS "Funcionário"
FROM 
    funcionario f
LEFT JOIN 
    venda v ON f.cpf = v.Funcionario_cpf
WHERE 
    v.idVenda IS NULL
ORDER BY 
    f.nome;

------------------------------------------------------------------------------------------------

-- 18° -  Dependentes que possuem mais de um responsável

SELECT 
    d.cpf AS "CPF do Dependente", 
    d.nome AS "Dependente", 
    COUNT(f.cpf) AS "Número de Responsáveis"
FROM 
    dependente d
JOIN 
    funcionario f ON d.funcionario_cpf = f.cpf
GROUP BY 
    d.cpf
HAVING 
    COUNT(f.cpf) > 1
ORDER BY 
    d.nome;

------------------------------------------------------------------------------------------------

-- 19° -  Funcionários que realizam vendas com descontos superiores a 10%

SELECT 
    f.cpf AS "CPF", 
    UPPER(f.nome) AS "Funcionário", 
    COUNT(v.idVenda) AS "Vendas com Desconto"
FROM 
    venda v
JOIN 
    funcionario f ON f.cpf = v.Funcionario_cpf
WHERE 
    v.desconto > v.valorTotal * 0.1
GROUP BY 
    f.cpf
ORDER BY 
    COUNT(v.idVenda) DESC;

------------------------------------------------------------------------------------------------

-- 20° -  Média salarial dos funcionários por bairro

SELECT 
    e.bairro AS "Bairro", 
    CONCAT('R$ ', FORMAT(AVG(f.salario), 2, 'de_DE')) AS "Média Salarial"
FROM 
    funcionario f
JOIN 
    enderecoFunc e ON f.cpf = e.funcionario_cpf
GROUP BY 
    e.bairro
ORDER BY 
    AVG(f.salario) DESC;
