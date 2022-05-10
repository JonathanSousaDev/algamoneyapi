CREATE TABLE lancamento (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(50) NOT NULL,
	data_vencimento DATE NOT NULL,
	data_pagamento DATE,
	valor DECIMAL(10,2) NOT NULL,
	observacao VARCHAR(100),
	tipo VARCHAR(20) NOT NULL,
	codigo_categoria BIGINT(20) NOT NULL,
	codigo_pessoa BIGINT(20) NOT NULL,
	FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo),
	FOREIGN KEY (codigo_pessoa) REFERENCES pessoa(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO lancamento (`codigo`, `descricao`, `data_vencimento`, `data_pagamento`, `valor`, `tipo`, `codigo_categoria`, `codigo_pessoa`) VALUES ('1', 'Venda de Mouse', '2022-04-25', '2022-04-25', '150', 'RECEITA', '4', '1');
INSERT INTO lancamento (`codigo`, `descricao`, `data_vencimento`, `data_pagamento`, `valor`, `tipo`, `codigo_categoria`, `codigo_pessoa`) VALUES ('2', 'Jantar com Família', '2022-03-10', NULL, '320', 'DESPESA', '3', '2');
INSERT INTO lancamento (`codigo`, `descricao`, `data_vencimento`, `data_pagamento`, `valor`, `tipo`, `codigo_categoria`, `codigo_pessoa`) VALUES ('3', 'Mesas', '2022-01-01', NULL, '645', 'DESPESA', '3', '1');
INSERT INTO lancamento (`codigo`, `descricao`, `data_vencimento`, `data_pagamento`, `valor`, `tipo`, `codigo_categoria`, `codigo_pessoa`) VALUES ('4', 'Teclados', '2022-01-01', '2022-04-25', '122', 'DESPESA', '1', '1');