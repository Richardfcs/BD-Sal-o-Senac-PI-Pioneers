
-- INSERÇÃO 11 CLIENTES DISTINTOS (OK)
INSERT INTO cliente (idCliente, nome, sexo, email, telefone, dataNasc, dataRegistro)
VALUES
("12345679", "João Silva", 'M', "joaosilva@gmail.com", "81987654321", "1992-10-05", "2024-03-12"),
("12345680", "Ana Paula Costa", 'F', "anapaulacosta@yahoo.com", "81996543210", "1988-07-22", "2024-03-12"),
("12345681", "Carlos Henrique Santos", 'M', "carlossantos@hotmail.com", "81995432109", "1995-11-30", "2024-03-12"),
("12345682", "Julia Almeida", 'F', "julia.almeida@gmail.com", "81994567890", "2000-02-15", "2024-03-12"),
("12345683", "Lucas Martins", 'M', "lucasmartins@gmail.com", "81993334455", "1998-08-25", "2024-03-12"),
("12345684", "Beatriz Oliveira", 'F', "beatriz.oliveira@outlook.com", "81992223344", "2003-12-05", "2024-03-12"),
("12345685", "Pedro Souza", 'M', "pedrosouza@gmail.com", "81991112233", "1996-04-10", "2024-03-12"),
("12345686", "Camila Rocha", 'F', "camilarocha@gmail.com", "81990001122", "2002-09-20", "2024-03-12"),
("12345687", "Gabriel Lima", 'M', "gabriellima@hotmail.com", "81998887766", "1999-01-18", "2024-03-12"),
("12345688", "Fernanda Ribeiro", 'F', "fernandaribeiro@outlook.com", "81997775544", "1987-06-30", "2024-03-12"),
("12345689", "Ricardo Alves", 'M', "ricardoalves@gmail.com", "81996664433", "1991-03-05", "2024-03-12");

-- INSERÇÃO 11 ENDEREÇOS DE CLIENTE DISTINTOS (OK)
INSERT INTO enderecoCli (idEnderecoCli, uf, cidade, bairro, rua, numero, comp, cep, Cliente_idCliente)
VALUES
("13572469", "PE", "Recife", "Boa Viagem", "Avenida Conselheiro Aguiar", 500, "Bloco 3", "51020-120", "12345679"),
("13572470", "PE", "Olinda", "Carmo", "Rua do Sol", 45, "Casa 2", "53020-150", "12345680"),
("13572471", "PE", "Jaboatão dos Guararapes", "Centro", "Rua Barão de Itamaracá", 124, "Sala 9", "54300-150", "12345681"),
("13572472", "PE", "Caruaru", "Indianópolis", "Rua Afonso Pereira", 201, "Apartamento 305", "55020-380", "12345682"),
("13572473", "PE", "Petrolina", "Centro", "Avenida Cardoso Pimentel", 120, "Ponto Comercial", "56300-000", "12345683"),
("13572474", "PE", "Garanhuns", "Heliópolis", "Rua Manoel Borba", 78, "Edifício Santa Clara", "55295-500", "12345684"),
("13572475", "PE", "Cabo de Santo Agostinho", "Centro", "Rua Dona Maria", 55, "Casa 3", "54500-020", "12345685"),
("13572476", "PE", "Ipojuca", "Porto de Galinhas", "Rua Litorânea", 125, "Flat Sol", "55590-000", "12345686"),
("13572477", "PE", "Araripina", "Centro", "Rua Getúlio Vargas", 400, "Comércio 7", "56280-000", "12345687"),
("13572478", "PE", "Surubim", "Centro", "Rua Antônio Lins", 88, "Apartamento 101", "55750-000", "12345688"),
("13572479", "PE", "Pesqueira", "São José", "Rua José de Alencar", 320, "Residencial São João", "55250-000", "12345689");

-- INSERÇÃO 11 FUNCIONÁRIOS DISTINTOS (OK)
INSERT INTO funcionario (cpf, nome, nomeSocial, email, sexo, estadoCivil, ch, salario, dataNasc, comissao, dataAdm, dataDem)
VALUES
("987.654.321-00", "Mariana Souza", "Mari", "mari.souza@gmail.com", 'F', "Casada", 8, "2500", "1985-03-20", "150", "2020-06-15", NULL),
("234.567.890-12", "Carlos Eduardo Lima", NULL, "carloseduardo.lima@outlook.com", 'M', "Divorciado", 6, "1800", "1990-07-12", "120", "2021-09-10", NULL),
("345.678.901-23", "Fernanda Oliveira", NULL, "fernanda_oliveira@yahoo.com", 'F', "Solteira", 8, "2000", "1992-11-05", "100", "2023-01-10", NULL),
("456.789.012-34", "Ricardo Pereira", "Rick", "ricardo.pereira@gmail.com", 'M', "Casado", 7, "2300", "1987-04-22", "180", "2019-03-25", NULL),
("567.890.123-45", "Laura Costa", "Lau", "laura.costa@hotmail.com", 'F', "Solteira", 8, "2000", "1994-06-14", "130", "2021-11-30", NULL),
("678.901.234-56", "Felipe Silva", NULL, "felipesilva@gmail.com", 'M', "Casado", 6, "1750", "1993-12-01", "110", "2022-05-20", NULL),
("789.012.345-67", "Giovana Almeida", "Gio", "giovana.almeida@outlook.com", 'F', "Divorciada", 8, "2100", "1991-02-03", "140", "2020-08-15", NULL),
("890.123.456-78", "André Santos", NULL, "andre.santos@yahoo.com", 'M', "Solteiro", 8, "2200", "1995-07-10", "160", "2018-12-01", NULL),
("901.234.567-89", "Juliana Rodrigues", "Ju", "juliana.rodrigues@gmail.com", 'F', "Casada", 8, "2400", "1988-10-18", "170", "2021-07-02", NULL),
("012.345.678-90", "Eduardo Martins", NULL, "eduardo.martins@outlook.com", 'M', "Solteiro", 8, "2000", "1990-04-30", "140", "2019-04-05", "2023-06-30"),
("123.456.789-01", "Patrícia Souza", "Pati", "patricia.souza@gmail.com", 'F', "Casada", 8, "2500", "1993-08-25", "150", "2020-03-18", NULL);

-- INSERÇÃO 11 ENDEREÇOS DISTINTOS DE FUNCIONÁRIO (OK)
INSERT INTO enderecofunc (uf, cidade, bairro, rua, numero, comp, cep, funcionario_cpf)
VALUES
("PE", "Recife", "Boa Viagem", "Avenida Conselheiro Aguiar", 500, "Bloco 3", "51020-120", "987.654.321-00"),
("PE", "Olinda", "Carmo", "Rua do Sol", 45, "Casa 2", "53020-150", "234.567.890-12"),
("PE", "Jaboatão dos Guararapes", "Centro", "Rua Barão de Itamaracá", 124, "Sala 9", "54300-150", "345.678.901-23"),
("PE", "Caruaru", "Indianópolis", "Rua Afonso Pereira", 201, "Apartamento 305", "55020-380", "456.789.012-34"),
("PE", "Petrolina", "Centro", "Avenida Cardoso Pimentel", 120, "Ponto Comercial", "56300-000", "567.890.123-45"),
("PE", "Garanhuns", "Heliópolis", "Rua Manoel Borba", 78, "Edifício Santa Clara", "55295-500", "678.901.234-56"),
("PE", "Cabo de Santo Agostinho", "Centro", "Rua Dona Maria", 55, "Casa 3", "54500-020", "789.012.345-67"),
("PE", "Ipojuca", "Porto de Galinhas", "Rua Litorânea", 125, "Flat Sol", "55590-000", "890.123.456-78"),
("PE", "Araripina", "Centro", "Rua Getúlio Vargas", 400, "Comércio 7", "56280-000", "901.234.567-89"),
("PE", "Surubim", "Centro", "Rua Antônio Lins", 88, "Apartamento 101", "55750-000", "012.345.678-90"),
("PE", "Pesqueira", "São José", "Rua José de Alencar", 320, "Residencial São João", "55250-000", "123.456.789-01");

-- INSERÇÃO 11 AGENDAMENTOS DE CLIENTE (OK)
INSERT INTO agendamento (idAgendamento, status, id_cliente, dataAgendamento, Cliente_idCliente)
VALUES
("10293848", "Confirmado", "12345680", "2024-02-05", "12345679"),
("10293849", "Cancelado", "12345681", "2024-02-10", "12345680"),
("10293850", "Pendente", "12345682", "2024-02-12", "12345681"),
("10293851", "Confirmado", "12345683", "2024-02-15", "12345682"),
("10293852", "Pendente", "12345684", "2024-02-17", "12345683"),
("10293853", "Confirmado", "12345685", "2024-02-20", "12345684"),
("10293854", "Cancelado", "12345686", "2024-02-22", "12345685"),
("10293855", "Pendente", "12345687", "2024-02-25", "12345686"),
("10293856", "Confirmado", "12345688", "2024-02-28", "12345687"),
("10293857", "Pendente", "12345689", "2024-03-02", "12345688"),
("10293858", "Confirmado", "12345679", "2024-03-05", "12345689");

-- INSERÇÃO 11 ATENDIMENTOS DE CLIENTE (OK)
INSERT INTO atendimento (idAtendimento, tempoGasto, produtoUtilizado, desconto, Funcionario_cpf, Agendamento_idAgendamento, Produto_idProduto, CentroDeCusto_idCentroDeCusto)
VALUES
("09876544", "2024-01-01 10:00:00", "Condicionador", "15", "987.654.321-00", "10293849", "09128735", "09337584"),
("09876545", "2024-01-02 11:30:00", "Shampoo Hidratante", "10", "234.567.890-12", "10293850", "09128736", "09337585"),
("09876546", "2024-01-03 09:45:00", "Máscara Capilar", NULL, "345.678.901-23", "10293851", "09128737", "09337586"),
("09876547", "2024-01-04 14:00:00", "Creme para as Mãos", "20", "456.789.012-34", "10293852", "09128738", "09337587"),
("09876548", "2024-01-05 13:15:00", "Loção Corporal", "5", "567.890.123-45", "10293853", "09128739", "09337588"),
("09876549", "2024-01-06 16:30:00", "Esfoliante Corporal", NULL, "678.901.234-56", "10293854", "09128740", "09337589"),
("09876550", "2024-01-07 08:00:00", "Protetor Solar", "10", "789.012.345-67", "10293855", "09128741", "09337590"),
("09876551", "2024-01-08 17:30:00", "Shampoo Anticaspa", NULL, "890.123.456-78", "10293856", "09128742", "09337591"),
("09876552", "2024-01-09 12:00:00", "Sérum Facial", "25", "901.234.567-89", "10293857", "09128743", "09337592"),
("09876553", "2024-01-10 18:45:00", "Hidratante Labial", NULL, "012.345.678-90", "10293858", "09128744", "09337593"),
("09876554", "2024-01-11 15:00:00", "Loção Anti-idade", "30", "123.456.789-01", "10293859", "09128745", "09337594");

-- INSERÇÃO 11 CARGOS DE FUNCIONÁRIOS (OK)
INSERT INTO cargo (cbo, nome, faixaSalario)
VALUES
("65549879", "Manicure", "1000"),
("65549880", "Pedicure", "950"),
("65549881", "Esteticista", "1500"),
("65549882", "Maquiador", "1200"),
("65549883", "Massoterapeuta", "1300"),
("65549884", "Depilador", "1100"),
("65549885", "Cosmetólogo", "1600"),
("65549886", "Cabeleireiro Júnior", "1200"),
("65549887", "Cabeleireiro Sênior", "1800"),
("65549888", "Designer de Sobrancelhas", "1300"),
("65549889", "Consultor de Imagem", "2000");

-- INSERÇÃO 11 CENTROS DE CUSTO DISTINTOS DO SALÃO SENAC (OK)
INSERT INTO centrodecusto (idCentroDeCusto, nome)
VALUES
("09337585", "Administração"),
("09337586", "Vendas"),
("09337587", "Marketing"),
("09337588", "Recursos Humanos"),
("09337589", "Financeiro"),
("09337590", "Logística"),
("09337591", "Atendimento ao Cliente"),
("09337592", "Pesquisa e Desenvolvimento"),
("09337593", "TI - Tecnologia da Informação"),
("09337594", "Suporte Técnico");

-- INSERÇÃO 11 COMPRAS DISTINTAS DE CLIENTES (OK)
INSERT INTO compras (idCompras, cumpomFiscal, dataComp, dataVenc, dataPag, dataEntrega, desconto, valorFrete, Fornecedor_cnpj)
VALUES
("00119923", "654321", "2024-01-02 14:30:00", "2024-09-10 14:30:00", "2024-01-02 14:30:00", "2024-01-04 16:00:00", "5", "10", "34.567.890/0001-02"),
("00119924", "987654", "2024-01-03 09:00:00", "2024-09-11 09:00:00", "2024-01-03 09:00:00", "2024-01-05 10:30:00", "15", "8", "45.678.901/0001-03"),
("00119925", "321654", "2024-01-04 11:00:00", "2024-09-12 11:00:00", "2024-01-04 11:00:00", "2024-01-06 12:30:00", "10", "12", "56.789.012/0001-04"),
("00119926", "159753", "2024-01-05 13:15:00", "2024-09-13 13:15:00", "2024-01-05 13:15:00", "2024-01-07 15:00:00", "20", "15", "67.890.123/0001-05"),
("00119927", "753951", "2024-01-06 08:45:00", "2024-09-14 08:45:00", "2024-01-06 08:45:00", "2024-01-08 09:30:00", "5", "9", "78.901.234/0001-06"),
("00119928", "456987", "2024-01-07 10:30:00", "2024-09-15 10:30:00", "2024-01-07 10:30:00", "2024-01-09 11:15:00", "10", "14", "89.012.345/0001-07"),
("00119929", "852369", "2024-01-08 15:00:00", "2024-09-16 15:00:00", "2024-01-08 15:00:00", "2024-01-10 16:00:00", "8", "13", "90.123.456/0001-08"),
("00119930", "147258", "2024-01-09 12:00:00", "2024-09-17 12:00:00", "2024-01-09 12:00:00", "2024-01-11 13:00:00", "12", "7", "01.234.567/0001-09"),
("00119931", "369258", "2024-01-10 14:45:00", "2024-09-18 14:45:00", "2024-01-10 14:45:00", "2024-01-12 15:30:00", "18", "10", "12.345.678/0001-10"),
("00119932", "654987", "2024-01-11 09:30:00", "2024-09-19 09:30:00", "2024-01-11 09:30:00", "2024-01-13 10:00:00", "10", "11", "23.456.789/0001-01");

-- INSERÇÃO 11 FORNECEDORES DISTINTOS DO SALÃO SENAC (OK)
INSERT INTO fornecedor (cnpj, nome, email)
VALUES
("23.456.789/0001-01", "Bella Hair", "contato@bellahair.com.br"),
("34.567.890/0001-02", "Beleza Pura", "atendimento@belezapura.com"),
("45.678.901/0001-03", "Cosmetic Solutions", "suporte@cosmeticsolutions.com"),
("56.789.012/0001-04", "Estética & Cia", "contato@esteticaecia.com.br"),
("67.890.123/0001-05", "Luxe Beauty", "luxebeauty@luxeco.com.br"),
("78.901.234/0001-06", "Salon Supplies", "info@salonsupplies.com"),
("89.012.345/0001-07", "Glamour Produtos", "contato@glamourprodutos.com"),
("90.123.456/0001-08", "Prime Beauty", "vendas@primebeauty.com.br"),
("01.234.567/0001-09", "Hair Masters", "clientes@hairmasters.com.br"),
("12.345.678/0001-10", "Cabelos & Estilo", "cabelosestilo@cabelos.com.br");

-- INSERÇÃO 11 DEPARTAMENTOS DISTINTOS DO SALÃO DE BELEZA SENAC (OK)
INSERT INTO departamento (idDepartamento, nome, local, email)
VALUES
("33526595", "Senac Cabeleireiro", "Rua dos Três Irmãos - Santo Amaro", "cabeleireiro_senac@gmail.com"),
("33526596", "Senac Estética Facial", "Avenida Norte - Pina", "estetica_facial_senac@gmail.com"),
("33526597", "Senac Estética Corporal", "Rua da Aurora - Boa Vista", "estetica_corp_senac@gmail.com"),
("33526598", "Senac Manicure e Pedicure", "Rua do Sol - Santo Amaro", "manicure_senac@gmail.com"),
("33526599", "Senac Maquiagem", "Avenida Cruz Cabugá - Iputinga", "maquiagem_senac@gmail.com"),
("33526600", "Senac Depilação", "Rua do Príncipe - Capibaribe", "depilacao_senac@gmail.com"),
("33526601", "Senac Massoterapia", "Rua do Lima - Graças", "massoterapia_senac@gmail.com"),
("33526602", "Senac Recepção", "Rua Henrique Dias - Ilha do Leite", "recepcao_senac@gmail.com"),
("33526603", "Senac Vendas e Produtos", "Avenida Beira Rio - Afogados", "vendas_produtos_senac@gmail.com"),
("33526604", "Senac Administração", "Rua Imperial - Boa Viagem", "administracao_senac@gmail.com"),
("33526605", "Senac Consultoria de Imagem", "Rua do Bom Jesus - Recife Antigo", "consultoria_imagem_senac@gmail.com");

-- INSERÇÃO 11 DEPENDENTES DISTINTOS DE FUNCIONÁRIOS (OK)
INSERT INTO dependente (cpf, nome, parentesco, dataNasc, Funcionario_cpf)
VALUES
("400.892.564-67", "Maria Clara", "Filha", "2020-07-22", "987.654.321-00"),
("400.292.255-87", "João Pedro", "Filho", "2018-03-10", "234.567.890-12"),
("400.292.266-45", "Ana Beatriz", "Filha", "2017-11-05", "345.678.901-23"),
("400.292.257-12", "Carlos Eduardo", "Filho", "2021-01-13", "456.789.012-34"),
("400.282.258-45", "Luiza Gomes", "Filha", "2019-08-25", "567.890.123-45"),
("400.282.269-45", "Mateus Costa", "Filho", "2016-02-17", "678.901.234-56"),
("400.282.270-78", "Fernanda Souza", "Filha", "2022-06-03", "789.012.345-67"),
("400.282.271-45", "Gabriel Alves", "Filho", "2018-12-30", "890.123.456-78"),
("400.282.272-45", "Letícia Santos", "Filha", "2020-10-12", "901.234.567-89"),
("400.282.273-12", "Rafael Oliveira", "Filho", "2021-09-04", "012.345.678-90"),
("400.289.274-45", "Beatriz Lima", "Filha", "2017-05-15", "123.456.789-01");

-- INSERT 11 DESPESAS DO SALÃO (OK)
INSERT INTO despesa (idDespesa, nome, valor, dataVenc, dataPag, juros, Compras_idCompras)
VALUES
("32459868", "Energia Elétrica", "350", "2024-09-15 10:00:00", "2024-09-12 10:00:00", "30", "00119924"),
("32459869", "Internet", "150", "2024-09-20 12:00:00", "2024-09-18 12:00:00", "10", "00119925"),
("32459870", "Produtos de Limpeza", "200", "2024-09-05 09:00:00", "2024-09-03 09:00:00", "0", "00119926"),
("32459871", "Aluguel", "2000", "2024-09-01 08:00:00", "2024-09-01 08:00:00", "0", "00119927"),
("32459872", "Sistemas de Gestão", "300", "2024-09-10 14:00:00", "2024-09-08 14:00:00", "15", "00119928"),
("32459873", "Material de Escritório", "100", "2024-09-12 11:00:00", "2024-09-10 11:00:00", "5", "00119929"),
("32459874", "Marketing Digital", "500", "2024-09-18 16:00:00", "2024-09-15 16:00:00", "0", "00119930"),
("32459875", "Manutenção de Equipamentos", "400", "2024-09-25 13:00:00", "2024-09-22 13:00:00", "0", "00119931"),
("32459876", "Segurança", "250", "2024-09-14 10:00:00", "2024-09-13 10:00:00", "10", "00119932"),
("32459877", "Folha de Pagamento", "3500", "2024-09-05 09:00:00", "2024-09-03 09:00:00", "0", "00119933"),
("32459878", "Impostos", "450", "2024-09-30 17:00:00", "2024-09-28 17:00:00", "25", "00119934");

-- INSERT 11 FEEDBACKS DE CLIENTES DISTINTOS (OK)
INSERT INTO feedback (idFeedback, avaliacao, comentarios, Cliente_idCliente)
VALUES
("14695833", "8", "Atendimento excelente!", "12345680"),
("14695834", "7", "Gostei do ambiente.", "23456781"),
("14695835", "8", "Corte perfeito!", "34567892"),
("14695836", "10", "Tudo maravilhoso, recomendo!", "45678903"),
("14695837", "6", "Serviço de qualidade, mas demorou um pouco.", "56789014"),
("14695838", "6", "Atendimento bom, mas poderia ser mais rápido.", "67890125"),
("14695839", "7", "Fui bem atendido e fiquei satisfeito.", "78901236"),
("14695840", "7", "Manicure caprichada, gostei.", "89012347"),
("14695841", "8", "Produtos bons e atendimento gentil.", "90123458"),
("14695842", "10", "Superou minhas expectativas!", "01234569"),
("14695843", "9", "Faltou um pouco mais de atenção.", "12345670");

-- INSERT 11 FÉRIAS DE FUNCIONÁRIOS (OK)
INSERT INTO ferias (idFerias, dataInicio, dataFim, qntDias, anoRef, Funcionario_cpf)
VALUES
("46971326", "2024-03-01", "2024-03-15", 15, "2024", "234.567.890-12"),
("46971327", "2024-04-10", "2024-04-24", 15, "2024", "345.678.901-23"),
("46971328", "2024-05-01", "2024-05-14", 14, "2024", "456.789.012-34"),
("46971329", "2024-06-05", "2024-06-20", 16, "2024", "567.890.123-45"),
("46971330", "2024-07-01", "2024-07-10", 10, "2024", "678.901.234-56"),
("46971331", "2024-08-15", "2024-08-30", 16, "2024", "789.012.345-67"),
("46971332", "2024-09-05", "2024-09-19", 15, "2024", "890.123.456-78"),
("46971333", "2024-10-01", "2024-10-15", 15, "2024", "901.234.567-89"),
("46971334", "2024-11-10", "2024-11-24", 15, "2024", "012.345.678-90"),
("46971335", "2024-12-01", "2024-12-14", 14, "2024", "123.456.789-01"),
("46971336", "2024-12-20", "2024-12-31", 12, "2024", "234.567.890-12");

-- INSERT 11 PAGAMENTOS DE CLIENTES (OK)
INSERT INTO formpag (idFormPag, valorPago, dataPagamento, tipo, parcela, Venda_idVenda)
VALUES
("98562313", "220", "2024-12-21", "Débito", "1", "28955737"),
("98562314", "150", "2024-12-22", "Crédito", "2", "28955738"),
("98562315", "200", "2024-12-23", "PIX", "0", "28955739"),
("98562316", "170", "2024-12-24", "Boleto", "1", "28955740"),
("98562317", "210", "2024-12-25", "Crédito", "3", "28955741"),
("98562318", "180", "2024-12-26", "Débito", "2", "28955742"),
("98562319", "190", "2024-12-27", "PIX", "0", "28955743"),
("98562320", "250", "2024-12-28", "Boleto", "1", "28955744"),
("98562321", "160", "2024-12-29", "Débito", "1", "28955745"),
("98562322", "230", "2024-12-30", "Crédito", "2", "28955746"),
("98562323", "210", "2024-12-31", "PIX", "0", "28955747");

-- INSERT 11 VENDAS DO SALÃO (OK)
INSERT INTO venda (idVenda, dataVenda, valorTotal, desconto, Funcionario_cpf, Cliente_idCliente)
VALUES
("28955736", "2024-01-03 10:00:00", "162", "10", "345.678.901-23", "23456781"),
("28955737", "2024-01-04 16:00:00", "150", "5", "456.789.012-34", "34567892"),
("28955738", "2024-01-05 11:30:00", "200", "20", "567.890.123-45", "45678903"),
("28955739", "2024-01-06 15:00:00", "170", "12", "678.901.234-56", "56789014"),
("28955740", "2024-01-07 09:30:00", "210", "15", "789.012.345-67", "67890125"),
("28955741", "2024-01-08 13:00:00", "180", "8", "890.123.456-78", "78901236"),
("28955742", "2024-01-09 14:15:00", "190", "18", "901.234.567-89", "89012347"),
("28955743", "2024-01-10 17:30:00", "250", "10", "012.345.678-90", "90123458"),
("28955744", "2024-01-11 10:45:00", "160", "5", "123.456.789-01", "01234569"),
("28955745", "2024-01-12 11:00:00", "230", "20", "234.567.890-12", "12345670"),
("28955746", "2024-01-13 18:00:00", "210", "10", "345.678.901-23", "23456781");

-- INSERT 11 PRODUTOS DO SALÃO (OK)
INSERT INTO produto (idProduto, nome, descricao, valor, quantidade, dataValidade)
VALUES
("21657846", "Condicionador", "Hidratante e nutritivo", 5, 1, "2024-12-31"),
("21657847", "Creme de Pentear", "Para cabelos cacheados", 8, 3, "2025-06-15"),
("21657848", "Máscara Capilar", "Revitalizante", 5, 2, "2025-05-20"),
("21657849", "Spray de Brilho", "Para dar brilho intenso", 5, 5, "2024-11-10"),
("21657850", "Óleo de Argan", "Repara e hidrata os fios", 4, 3, "2025-01-25"),
("21657851", "Gel Redutor", "Para combate à celulite", 3, 6, "2024-12-31"),
("21657852", "Shampoo Bifásico", "Para cabelos oleosos", 8, 2, "2025-03-12"),
("21657853", "Tônico Capilar", "Estimula o crescimento", 5, 4, "2025-08-30"),
("21657854", "Cera Modeladora", "Para definição de cachos", 2, 2, "2025-02-15"),
("21657855", "Fixador de Penteado", "De longa duração", 2, 7, "2025-05-01"),
("21657856", "Sérum Capilar", "Anti-frizz", 5, 3, "2025-07-10");

-- INSERT 11 ITENS COMPRA (OK)
INSERT INTO itenscompra (quantidade, valorComp, Produto_idProduto, Compras_idCompras)
VALUES
(3, "45", "12567899", "12364579"),
(1, "12", "12567900", "12364580"),
(5, "30", "12567901", "12364581"),
(2, "18", "12567902", "12364582"),
(4, "50", "12567903", "12364583"),
(6, "60", "12567904", "12364584"),
(3, "20", "12567905", "12364585"),
(7, "80", "12567906", "12364586"),
(2, "25", "12567907", "12364587"),
(1, "15", "12567908", "12364588"),
(4, "40", "12567909", "12364589");

-- INSERT 11 ITENS VENDA PRODUTO
INSERT INTO itensvendaprod (valorDeVenda, quantidade, descontoProd, Venda_idVenda, Produto_idProduto)
VALUES
(15, 3, 5, 12459879, 32458979),
(20, 1, 0, 12459880, 32458980),
(25, 4, 10, 12459881, 32458981),
(30, 2, 5, 12459882, 32458982),
(40, 5, 15, 12459883, 32458983),
(50, 1, 0, 12459884, 32458984),
(12, 7, 5, 12459885, 32458985),
(18, 6, 0, 12459886, 32458986),
(22, 3, 10, 12459887, 32458987),
(28, 4, 5, 12459888, 32458988),
(35, 2, 10, 12459889, 32458989);

-- INSERT 11 ITEM VENDA SERVIÇO
INSERT INTO itensvendaservico (idItensVendaServico, valorVenda, quantidade, desconto, Funcionario_cpf, Servico_idServiço, Venda_idVenda)
VALUES
("45658979", 30, 1, 5, "126.456.789-11", "15596848", "35468972"),
("45658980", 45, 2, 10, "126.456.789-12", "15596849", "35468973"),
("45658981", 60, 3, 15, "126.456.789-13", "15596850", "35468974"),
("45658982", 50, 1, 0, "126.456.789-14", "15596851", "35468975"),
("45658983", 40, 5, 5, "126.456.789-15", "15596852", "35468976"),
("45658984", 20, 4, 10, "126.456.789-16", "15596853", "35468977"),
("45658985", 35, 2, 0, "126.456.789-17", "15596854", "35468978"),
("45658986", 70, 3, 20, "126.456.789-18", "15596855", "35468979"),
("45658987", 80, 1, 10, "126.456.789-19", "15596856", "35468980"),
("45658988", 55, 6, 5, "126.456.789-20", "15596857", "35468981"),
("45658989", 65, 2, 5, "126.456.789-21", "15596858", "35468982");

-- INSERTS 11 RELATORIOS FINANCEIROS
INSERT INTO relatoriofinanceiro (idRelatorioFinanceiro, dataInicio, dataFim, receitaTotal, despesaTotal, margemLucro, CentroDeCusto_idCentroDeCusto)
VALUES
("65632150", "2024-02-01", "2024-02-03", 120, 90, 85, "10928375"),
("65632151", "2024-03-10", "2024-03-12", 150, 110, 95, "10928376"),
("65632152", "2024-04-05", "2024-04-07", 200, 150, 80, "10928377"),
("65632153", "2024-05-15", "2024-05-17", 180, 130, 88, "10928378"),
("65632154", "2024-06-20", "2024-06-22", 210, 160, 85, "10928379"),
("65632155", "2024-07-10", "2024-07-12", 140, 100, 90, "10928380"),
("65632156", "2024-08-01", "2024-08-03", 160, 120, 87, "10928381"),
("65632157", "2024-09-05", "2024-09-07", 175, 140, 92, "10928382"),
("65632158", "2024-10-12", "2024-10-14", 190, 145, 90, "10928383"),
("65632159", "2024-11-18", "2024-11-20", 230, 180, 89, "10928384"),
("65632160", "2024-12-01", "2024-12-03", 250, 200, 85, "10928385");

-- INSERTS 11 SERVIÇOS 
INSERT INTO servico (idServiço, nome, descricao, valor)
VALUES
("45231257", "Corte de Cabelo", "Corte masculino ou feminino", 25),
("45231258", "Manicure", "Corte, lixa e esmalte", 15),
("45231259", "Pedicure", "Cuidados com os pés e esmalte", 18),
("45231260", "Penteado", "Penteado para eventos especiais", 40),
("45231261", "Escova", "Escova lisa ou modelada", 30),
("45231262", "Mechas", "Descoloração e tonalização", 80),
("45231263", "Depilação", "Depilação com cera em diversas áreas", 20),
("45231264", "Limpeza de Pele", "Limpeza profunda com extração", 50),
("45231265", "Hidratação Capilar", "Hidratação profunda para cabelos", 35),
("45231266", "Maquiagem", "Maquiagem para eventos", 60),
("45231267", "Alongamento de Cílios", "Aplicação de extensão de cílios", 70);

-- INSERTS 11 TELEFONES
INSERT INTO telefone (idTelefone, numero, Departamento_idDepartamento, Funcionario_cpf, Fornecedor_cnpj)
VALUES
("23568948", "81987451234", "45983266", "123.456.789-11", "23.456.789/0001-02"),
("23568949", "81996512345", "45983267", "123.456.789-12", "23.456.789/0001-03"),
("23568950", "81991298765", "45983268", "123.456.789-13", "23.456.789/0001-04"),
("23568951", "81993456789", "45983269", "123.456.789-14", "23.456.789/0001-05"),
("23568952", "81987654321", "45983270", "123.456.789-15", "23.456.789/0001-06"),
("23568953", "81992567890", "45983271", "123.456.789-16", "23.456.789/0001-07"),
("23568954", "81996547892", "45983272", "123.456.789-17", "23.456.789/0001-08"),
("23568955", "81992345678", "45983273", "123.456.789-18", "23.456.789/0001-09"),
("23568956", "81994456789", "45983274", "123.456.789-19", "23.456.789/0001-10"),
("23568957", "81993321234", "45983275", "123.456.789-20", "23.456.789/0001-11"),
("23568958", "81995233456", "45983276", "123.456.789-21", "23.456.789/0001-12");

-- INSERTS 11 TRABALHAR
INSERT INTO trabalhar (Funcionario_cpf, Cargo_cbo, Departamento_idDepartamento)
VALUES
("123.456.789-12", 12345678, "12345679"),
("123.456.789-13", 65487985, "12345680"),
("123.456.789-14", 19645873, "12345681"),
("123.456.789-15", 32549867, "12345682"),
("123.456.789-16", 14253669, "12345683"),
("123.456.789-17", 15263524, "12345684"),
("123.456.789-18", 59486857, "12345685"),
("123.456.789-19", 75869584, "12345686"),
("123.456.789-20", 25845696, "12345687"),
("123.456.789-21", 96321478, "12345688"),
("123.456.789-22", 98741236, "12345689");