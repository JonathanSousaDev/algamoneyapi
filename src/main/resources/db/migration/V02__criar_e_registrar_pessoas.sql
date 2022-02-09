CREATE TABLE `pessoa` (
	`codigo` BIGINT NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(200) NOT NULL,
	`ativo` TINYINT(1) NOT NULL DEFAULT 1,
	`logradouro` VARCHAR(250) NULL,
	`numero` VARCHAR(50) NULL,
	`complemento` VARCHAR(250) NULL,
	`bairro` VARCHAR(100) NULL,
	`cep` VARCHAR(20) NULL,
	`estado` VARCHAR(50) NULL,
	`cidade` VARCHAR(50) NULL,
	PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `algamoneyapi`.`pessoa` (`nome`, `ativo`, `logradouro`, `numero`, `complemento`, `bairro`, `cep`, `estado`, `cidade`) 
VALUES ('Jonathan Sousa', '1', 'Promorar ', '30', 'Na rua do colégio', 'Teresina ', '64027080', 'PI', 'Teresina');

INSERT INTO `algamoneyapi`.`pessoa` (`nome`, `ativo`, `logradouro`, `numero`, `complemento`, `bairro`, `cep`, `estado`, `cidade`) 
VALUES ('Mariana Alencar', '1', 'Timon', 'H14', 'Reserva das Flores', 'Timon City', '', 'MA', 'Conjunto');

INSERT INTO `algamoneyapi`.`pessoa` (`nome`, `logradouro`, `numero`, `complemento`, `bairro`, `cep`, `estado`, `cidade`) 
VALUES ('Camila da Silva Sousa', '', '', '', '', '', '', '');

INSERT INTO `algamoneyapi`.`pessoa` (`nome`, `ativo`, `logradouro`, `numero`, `complemento`, `bairro`, `cep`, `estado`, `cidade`) 
VALUES ('Marcos Henrique', '1', '', '', '', '', '', '', '');

INSERT INTO `algamoneyapi`.`pessoa` (`nome`, `ativo`, `logradouro`, `numero`, `complemento`, `bairro`, `cep`, `estado`, `cidade`) 
VALUES ('Maria Vanusa Alves', '1', 'Na rua da praça', '122', 'Perto da Praça da Igreja', 'Hugs', '64028080', 'PI', 'Hugo Napoleão');