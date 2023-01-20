CREATE SCHEMA IF NOT EXISTS `projeto_escola` DEFAULT CHARACTER SET utf8 ;
USE `projeto_escola` ;

CREATE TABLE IF NOT EXISTS `projeto_escola`.`Alunos` (
  `idAlunos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `cpf` VARCHAR(11) NULL,
  `email` VARCHAR(45) NULL,
  `telefone` INT NULL,
  PRIMARY KEY (`idAlunos`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `projeto_escola`.`Professores` (
  `idProfessor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `cpf` VARCHAR(11) NULL,
  `salario` DECIMAL(8,2) NULL,
  `telefone` INT NULL,
  `formacao` VARCHAR(45) NULL,
  PRIMARY KEY (`idProfessor`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `projeto_escola`.`Cursos` (
  `idCursos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `cargah` INT NULL,
  `vagas` INT NULL,
  PRIMARY KEY (`idCursos`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `projeto_escola`.`Disciplinas` (
  `idDisciplina` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `aulas` INT NULL,
  PRIMARY KEY (`idDisciplina`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `projeto_escola`.`Turmas` (
  `idTurmas` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(20) NULL,
  `tamanho` INT NULL,
  PRIMARY KEY (`idTurmas`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `projeto_escola`.`Matricula` (
  `idMatricula` INT NOT NULL AUTO_INCREMENT,
  `Cursos_idCursos1` INT NOT NULL,
  `Alunos_idAlunos1` INT NOT NULL,
  `Turmas_idTurmas1` INT NOT NULL,
  `Disciplinas_idDisciplina1` INT NOT NULL,
  `Professores_idProfessor` INT NOT NULL,
  `data` DATE NULL,
  INDEX `fk_Matricula_Disciplinas1_idx` (`Disciplinas_idDisciplina1` ASC),
  INDEX `fk_Matricula_Cursos1_idx` (`Cursos_idCursos1` ASC),
  INDEX `fk_Matricula_Alunos1_idx` (`Alunos_idAlunos1` ASC),
  INDEX `fk_Matricula_Turmas1_idx` (`Turmas_idTurmas1` ASC),
  PRIMARY KEY (`idMatricula`),
  INDEX `fk_Matricula_Professores1_idx` (`Professores_idProfessor` ASC),
  CONSTRAINT `fk_Matricula_Disciplinas1`
    FOREIGN KEY (`Disciplinas_idDisciplina1`)
    REFERENCES `projeto_escola`.`Disciplinas` (`idDisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Matricula_Cursos1`
    FOREIGN KEY (`Cursos_idCursos1`)
    REFERENCES `projeto_escola`.`Cursos` (`idCursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Matricula_Alunos1`
    FOREIGN KEY (`Alunos_idAlunos1`)
    REFERENCES `projeto_escola`.`Alunos` (`idAlunos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Matricula_Turmas1`
    FOREIGN KEY (`Turmas_idTurmas1`)
    REFERENCES `projeto_escola`.`Turmas` (`idTurmas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Matricula_Professores1`
    FOREIGN KEY (`Professores_idProfessor`)
    REFERENCES `projeto_escola`.`Professores` (`idProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO ALUNOS VALUES (1,'LUIZ PEDRO MARQUES FILHO',54125478556,'PEDROMARQUESF73@GMAIL.COM',35557825);
INSERT INTO ALUNOS VALUES (2,'EDUARDO DUTRA DE SOUZA',78452445645,'EDUDS151@GMAIL.COM',35531523);
INSERT INTO ALUNOS VALUES (3,'GABRIEL JAIME DE OLIVEIRA',78451545457,'GABRIELJAIME31@HOTMAIL.COM',35517452);
INSERT INTO ALUNOS VALUES (4,'PEDRO HIROSHI YAZAWA',12345485784,'PHYAZAWA@GMAIL.COM',35549563);
INSERT INTO ALUNOS VALUES (5,'DIOGO DE MELO MARQUES',78745454541,'DIOGOMELO1@GMAIL.COM',35514254);
INSERT INTO ALUNOS VALUES (6,'NIKOLLAS ANTONI',12478214784,'NIKKOLAS.ANTONI@HOTMAIL.COM',35557845);
INSERT INTO ALUNOS VALUES (7,'VITÓRIA BATISTA DE OLIVEIRA',87845454515,'VIVIOLIVEIRA13@HOTMAIL.COM',35556325);
INSERT INTO ALUNOS VALUES (8,'RICARDO INÁCIO DOS SANTOS',89746565651,'RICKSINACIO1@GMAIL.COM',35559263);
INSERT INTO ALUNOS VALUES (9,'GIULIA TEIXEIRA FIOROTTO',74484244841,'GIULIAGUARANESIA@HOTMAIL.COM',35557845);
INSERT INTO ALUNOS VALUES (10,'ANA JÚLIA RODRIGUES',74874545412,'ANAJULIARODRIGUES3@GMAIL.COM',35514526);

INSERT INTO ALUNOS VALUES (11,'DANILO INÁCIO CASTRO',54125478556,'DANILO.CASTRO@HOTMAIL.COM',35557825);
INSERT INTO ALUNOS VALUES (12,'MILLENY JODAS FERREIRA',78452445645,'MIZINHA.JODAS@GMAIL.COM',35545213);
INSERT INTO ALUNOS VALUES (13,'GIOVANNA PEDROSO DE OLIVEIRA',78451545457,'GIOVANNA.PEDROSO31@HOTMAIL.COM',35554787);
INSERT INTO ALUNOS VALUES (14,'VYH SANTOS DE OLIVEIRA',12345485784,'VYHSANTOS31@GMAIL.COM',35256324);
INSERT INTO ALUNOS VALUES (15,'DANIELA FORTUNATO MARQUEZINE',78745454541,'DANIELAFORT13@GMAIL.COM',35114521);
INSERT INTO ALUNOS VALUES (16,'VITÓRIA ROMANO MORAES',12478214784,'VIROMANO12@HOTMAIL.COM',35545451);
INSERT INTO ALUNOS VALUES (17,'PAULO RICARDO DE OLIVEIRA',87845454515,'P4.OLIVEIRA@HOTMAIL.COM',35598721);
INSERT INTO ALUNOS VALUES (18,'THIERRY DOS REIS MARQUES',89746565651,'THIERRY.LOL@GMAIL.COM',35512473);
INSERT INTO ALUNOS VALUES (19,'LUCIANA CAROLLINE FERNANDES',74484244841,'CAROL.FERNANDES@HOTMAIL.COM',35124578);
INSERT INTO ALUNOS VALUES (20,'LUCAS SOARES BATISTA',74874545412,'LUCASSOARESBATISTA@GMAIL.COM',35536254);

INSERT INTO ALUNOS VALUES (21,'LAÍS MARTINS DE OLIVEIRA',54125478556,'NARINHALALA@GMAIL.COM',35564562);
INSERT INTO ALUNOS VALUES (22,'DANIEL JOSÉ DOS SANTOS',34564534234,'DANIEL.SANTOS2@GMAIL.COM',34511214);
INSERT INTO ALUNOS VALUES (23,'CARLOS VINICIUS EXPEDITO DE SOUZA',23231575651,'CARLOSFERA12@HOTMAIL.COM',37885565);
INSERT INTO ALUNOS VALUES (24,'MARIA LAURA MENDES',17421414321,'MLAURAMENDES@GMAIL.COM',35545646);
INSERT INTO ALUNOS VALUES (25,'LUIS ANTONIO RIBEIRO PANISSA',45115451252,'LUISPANISSA@GMAIL.COM',35846324);
INSERT INTO ALUNOS VALUES (26,'GABRIEL INÁCIO REIS',75421212454,'GABRIELFREEFIRE@HOTMAIL.COM',35486452);
INSERT INTO ALUNOS VALUES (27,'ANNE MERY GARCIA',45412345754,'ILOVEJESUS@HOTMAIL.COM',35684684);
INSERT INTO ALUNOS VALUES (28,'LÍVIA REIS DE MORAIS',63523454524,'LIVIA.JURUAIA@GMAIL.COM',35566351);
INSERT INTO ALUNOS VALUES (29,'LETÍCIA DIAS FREITAS',65623264784,'LETICIA.MENDES31@HOTMAIL.COM',35254136);
INSERT INTO ALUNOS VALUES (30,'IGOR DOS SANTOS CASTRO',45645455754,'IGUINHOBR12@GMAIL.COM',35574452);

SELECT * FROM ALUNOS;

INSERT INTO PROFESSORES VALUES (1,'AUGUSTO JÚNIOR FERREIRA',78745454424,5200.00,35534714,'REDES');
INSERT INTO PROFESSORES VALUES (2,'JOÃO MARCELO DOS SANTOS',15268952423,6400.00,35235241,'BANCO DE DADOS');
INSERT INTO PROFESSORES VALUES (3,'RAMÓN MARQUES DE MORAES',15236541251,4500.50,31254425,'ENGENHARIA DA COMPUTAÇÂO');
INSERT INTO PROFESSORES VALUES (4,'EUGÊNIO DE SOUZA GONÇALVES',25416378524,6000.00,35554521,'EMPREENDEDORISMO');
INSERT INTO PROFESSORES VALUES (5,'RICARDO MARTINS DE OLIVEIRA',52413265462,9700.50,35547852,'PROGRAMAÇÃO');

INSERT INTO PROFESSORES VALUES (6,'CARLOS MOURA DE APARECIDA',12244751215,5400.00,35552145,'ENGENHARIA AGRONÔMICA');
INSERT INTO PROFESSORES VALUES (7,'RONALDO MELO MORAES',41262549532,7400.00,35454521,'BOVINOCULTURA');
INSERT INTO PROFESSORES VALUES (8,'MARINA GONÇALVES PEDROSO',36468428125,6600.50,35656523,'FRUTICULTURA');
INSERT INTO PROFESSORES VALUES (9,'MARTA VIEIRA RODRIGUES',78432175154,8100.50,34154541,'MEDICINA VETERINÁRIA');
INSERT INTO PROFESSORES VALUES (10,'ANA MARIA DIAS',12579546244,7100.00,35554545,'ZOOLOGIA');

INSERT INTO PROFESSORES VALUES (11,'GABRIELA DOS SANTOS CRUZ',45236596224,6200.00,35545412,'ECOLOGIA');
INSERT INTO PROFESSORES VALUES (12,'LETICÍA MARTINS AMADO',14256325871,6900.00,35514516,'ENGENHARIA DE ALIMENTOS');
INSERT INTO PROFESSORES VALUES (13,'CARLA DIAS LORENZO',96524452232,5200.50,35547485,'ENGENHARIA DE ALIMENTOS');
INSERT INTO PROFESSORES VALUES (15,'JOÃO PEDRO DA CRUZ',12154353555,7600.00,35557195,'BIOLOGIA');
INSERT INTO PROFESSORES VALUES (14,'MARCOS CASTRO PEREIRA',14151321224,5900.50,35556236,'NUTRIÇÃO');

SELECT * FROM PROFESSORES;

INSERT INTO DISCIPLINAS VALUES (1,'REDES',100);
INSERT INTO DISCIPLINAS VALUES (2,'BANCO DE DADOS',80);
INSERT INTO DISCIPLINAS VALUES (3,'TECNOLOGIAS WEB',150);
INSERT INTO DISCIPLINAS VALUES (4,'EMPREENDEDORISMO',100);
INSERT INTO DISCIPLINAS VALUES (5,'LINGUAGENS DE PROGRAMAÇÃO',200);

INSERT INTO DISCIPLINAS VALUES (6,'FRUTICULTURA',150);
INSERT INTO DISCIPLINAS VALUES (7,'ZOOTECNIA',200);
INSERT INTO DISCIPLINAS VALUES (8,'NUTRIÇÃO ANIMAL',100);
INSERT INTO DISCIPLINAS VALUES (9,'IRRIGAÇÃO',80);
INSERT INTO DISCIPLINAS VALUES (10,'BOVINOS',200);

INSERT INTO DISCIPLINAS VALUES (11,'CONTROLE SANITÁRIO',100);
INSERT INTO DISCIPLINAS VALUES (12,'CARNES',80);
INSERT INTO DISCIPLINAS VALUES (13,'VEGETAIS',150);
INSERT INTO DISCIPLINAS VALUES (14,'MICROBIOLOGIA',100);
INSERT INTO DISCIPLINAS VALUES (15,'NUTRIÇÃO ALIMENTAR',200);

selecT * FROM DISCIPLINAS;

INSERT INTO CURSOS VALUES (1,'INFORMÁTICA',800,10);
INSERT INTO CURSOS VALUES (2,'ALIMENTOS',600,10);
INSERT INTO CURSOS VALUES (3,'AGROPECUÁRIA',1000,10);

SELECT * FROM CURSOS;

INSERT INTO TURMAS VALUES (1,'INFO',10);
INSERT INTO TURMAS VALUES (3,'AGRO',10);
INSERT INTO TURMAS VALUES (5,'ALIM',10);

SELECT * FROM TURMAS;

-- INFORMATICA

describe MATRICULA;

INSERT INTO MATRICULA VALUES (1,1,1,1,1,1,'2018/02/20');
INSERT INTO MATRICULA VALUES (2,1,1,1,2,2,'2018/02/20');
INSERT INTO MATRICULA VALUES (3,1,1,1,3,3,'2018/02/20');
INSERT INTO MATRICULA VALUES (4,1,1,1,4,4,'2018/02/20');
INSERT INTO MATRICULA VALUES (5,1,1,1,5,5,'2018/02/20');

INSERT INTO MATRICULA VALUES (6,1,2,1,1,1,'2019/06/18');
INSERT INTO MATRICULA VALUES (7,1,2,1,2,2,'2019/06/18');
INSERT INTO MATRICULA VALUES (8,1,2,1,3,3,'2019/06/18');
INSERT INTO MATRICULA VALUES (9,1,2,1,4,4,'2019/06/18');
INSERT INTO MATRICULA VALUES (10,1,2,1,5,5,'2019/06/18');

INSERT INTO MATRICULA VALUES (11,1,3,1,1,1,'2018/05/13');
INSERT INTO MATRICULA VALUES (12,1,3,1,2,2,'2018/05/13');
INSERT INTO MATRICULA VALUES (13,1,3,1,3,3,'2018/05/13');
INSERT INTO MATRICULA VALUES (14,1,3,1,4,4,'2018/05/13');
INSERT INTO MATRICULA VALUES (15,1,3,1,5,5,'2018/05/13');

INSERT INTO MATRICULA VALUES (16,1,4,1,1,1,'2018/05/15');
INSERT INTO MATRICULA VALUES (17,1,4,1,2,2,'2018/05/15');
INSERT INTO MATRICULA VALUES (18,1,4,1,3,3,'2018/05/15');
INSERT INTO MATRICULA VALUES (19,1,4,1,4,4,'2018/05/15');
INSERT INTO MATRICULA VALUES (20,1,4,1,5,5,'2018/05/15');

INSERT INTO MATRICULA VALUES (21,1,5,1,1,1,'2019/08/05');
INSERT INTO MATRICULA VALUES (22,1,5,1,2,2,'2019/08/05');
INSERT INTO MATRICULA VALUES (23,1,5,1,3,3,'2019/08/05');
INSERT INTO MATRICULA VALUES (24,1,5,1,4,4,'2019/08/05');
INSERT INTO MATRICULA VALUES (25,1,5,1,5,5,'2019/08/05');

INSERT INTO MATRICULA VALUES (26,1,6,1,1,1,'2018/01/04');
INSERT INTO MATRICULA VALUES (27,1,6,1,2,2,'2018/01/04');
INSERT INTO MATRICULA VALUES (28,1,6,1,3,3,'2018/01/04');
INSERT INTO MATRICULA VALUES (29,1,6,1,4,4,'2018/01/04');
INSERT INTO MATRICULA VALUES (30,1,6,1,5,5,'2018/01/04');

INSERT INTO MATRICULA VALUES (31,1,7,1,1,1,'2019/10/17');
INSERT INTO MATRICULA VALUES (32,1,7,1,2,2,'2019/10/17');
INSERT INTO MATRICULA VALUES (33,1,7,1,3,3,'2019/10/17');
INSERT INTO MATRICULA VALUES (34,1,7,1,4,4,'2019/10/17');
INSERT INTO MATRICULA VALUES (35,1,7,1,5,5,'2019/10/17');

INSERT INTO MATRICULA VALUES (36,1,8,1,1,1,'2019/08/14');
INSERT INTO MATRICULA VALUES (37,1,8,1,2,2,'2019/08/14');
INSERT INTO MATRICULA VALUES (38,1,8,1,3,3,'2019/08/14');
INSERT INTO MATRICULA VALUES (39,1,8,1,4,4,'2019/08/14');
INSERT INTO MATRICULA VALUES (40,1,8,1,5,5,'2019/08/14');

INSERT INTO MATRICULA VALUES (41,1,9,1,1,1,'2018/06/12');
INSERT INTO MATRICULA VALUES (42,1,9,1,2,2,'2018/06/12');
INSERT INTO MATRICULA VALUES (43,1,9,1,3,3,'2018/06/12');
INSERT INTO MATRICULA VALUES (44,1,9,1,4,4,'2018/06/12');
INSERT INTO MATRICULA VALUES (45,1,9,1,5,5,'2018/06/12');

INSERT INTO MATRICULA VALUES (46,1,10,1,1,1,'2019/04/30');
INSERT INTO MATRICULA VALUES (47,1,10,1,2,2,'2019/04/30');
INSERT INTO MATRICULA VALUES (48,1,10,1,3,3,'2019/04/30');
INSERT INTO MATRICULA VALUES (49,1,10,1,4,4,'2019/04/30');
INSERT INTO MATRICULA VALUES (50,1,10,1,5,5,'2019/04/30');


-- ALIMENTOS

INSERT INTO MATRICULA VALUES (51,2,11,5,11,11,'2019/04/30');
INSERT INTO MATRICULA VALUES (52,2,11,5,12,12,'2019/04/30');
INSERT INTO MATRICULA VALUES (53,2,11,5,13,13,'2019/04/30');
INSERT INTO MATRICULA VALUES (54,2,11,5,14,14,'2019/04/30');
INSERT INTO MATRICULA VALUES (55,2,11,5,15,15,'2019/04/30');

INSERT INTO MATRICULA VALUES (56,2,12,5,11,11,'2019/05/17');
INSERT INTO MATRICULA VALUES (57,2,12,5,12,12,'2019/05/17');
INSERT INTO MATRICULA VALUES (58,2,12,5,13,13,'2019/05/17');
INSERT INTO MATRICULA VALUES (59,2,12,5,14,14,'2019/05/17');
INSERT INTO MATRICULA VALUES (60,2,12,5,15,15,'2019/05/17');

INSERT INTO MATRICULA VALUES (61,2,13,5,11,11,'2019/05/10');
INSERT INTO MATRICULA VALUES (62,2,13,5,12,12,'2019/05/10');
INSERT INTO MATRICULA VALUES (63,2,13,5,13,13,'2019/05/10');
INSERT INTO MATRICULA VALUES (64,2,13,5,14,14,'2019/05/10');
INSERT INTO MATRICULA VALUES (65,2,13,5,15,15,'2019/05/10');

INSERT INTO MATRICULA VALUES (66,2,14,5,11,11,'2019/08/10');
INSERT INTO MATRICULA VALUES (67,2,14,5,12,12,'2019/08/10');
INSERT INTO MATRICULA VALUES (68,2,14,5,13,13,'2019/08/10');
INSERT INTO MATRICULA VALUES (69,2,14,5,14,14,'2019/08/10');
INSERT INTO MATRICULA VALUES (70,2,14,5,15,15,'2019/08/10');

INSERT INTO MATRICULA VALUES (71,2,15,5,11,11,'2019/08/01');
INSERT INTO MATRICULA VALUES (72,2,15,5,12,12,'2019/08/01');
INSERT INTO MATRICULA VALUES (73,2,15,5,13,13,'2019/08/01');
INSERT INTO MATRICULA VALUES (74,2,15,5,14,14,'2019/08/01');
INSERT INTO MATRICULA VALUES (75,2,15,5,15,15,'2019/08/01');

INSERT INTO MATRICULA VALUES (76,2,16,5,11,11,'2019/02/01');
INSERT INTO MATRICULA VALUES (77,2,16,5,12,12,'2019/02/01');
INSERT INTO MATRICULA VALUES (78,2,16,5,13,13,'2019/02/01');
INSERT INTO MATRICULA VALUES (79,2,16,5,14,14,'2019/02/01');
INSERT INTO MATRICULA VALUES (80,2,16,5,15,15,'2019/02/01');

INSERT INTO MATRICULA VALUES (81,2,17,5,11,11,'2019/03/08');
INSERT INTO MATRICULA VALUES (82,2,17,5,12,12,'2019/03/08');
INSERT INTO MATRICULA VALUES (83,2,17,5,13,13,'2019/03/08');
INSERT INTO MATRICULA VALUES (84,2,17,5,14,14,'2019/03/08');
INSERT INTO MATRICULA VALUES (85,2,17,5,15,15,'2019/03/08');

INSERT INTO MATRICULA VALUES (86,2,18,5,11,11,'2019/03/15');
INSERT INTO MATRICULA VALUES (87,2,18,5,12,12,'2019/03/15');
INSERT INTO MATRICULA VALUES (88,2,18,5,13,13,'2019/03/15');
INSERT INTO MATRICULA VALUES (89,2,18,5,14,14,'2019/03/15');
INSERT INTO MATRICULA VALUES (90,2,18,5,15,15,'2019/03/15');

INSERT INTO MATRICULA VALUES (91,2,19,5,11,11,'2019/05/20');
INSERT INTO MATRICULA VALUES (92,2,19,5,12,12,'2019/05/20');
INSERT INTO MATRICULA VALUES (93,2,19,5,13,13,'2019/05/20');
INSERT INTO MATRICULA VALUES (94,2,19,5,14,14,'2019/05/20');
INSERT INTO MATRICULA VALUES (95,2,19,5,15,15,'2019/05/20');

INSERT INTO MATRICULA VALUES (96,2,20,5,11,11,'2019/03/20');
INSERT INTO MATRICULA VALUES (97,2,20,5,12,12,'2019/03/20');
INSERT INTO MATRICULA VALUES (98,2,20,5,13,13,'2019/03/20');
INSERT INTO MATRICULA VALUES (99,2,20,5,14,14,'2019/03/20');
INSERT INTO MATRICULA VALUES (100,2,20,5,15,15,'2019/03/20');

-- AGROPECUARIA

INSERT INTO MATRICULA VALUES (101,3,21,3,6,8,'2019/03/20');
INSERT INTO MATRICULA VALUES (102,3,21,3,7,9,'2019/03/20');
INSERT INTO MATRICULA VALUES (103,3,21,3,8,10,'2019/03/20');
INSERT INTO MATRICULA VALUES (104,3,21,3,9,6,'2019/03/20');
INSERT INTO MATRICULA VALUES (105,3,21,3,10,7,'2019/03/20');

INSERT INTO MATRICULA VALUES (106,3,22,3,6,8,'2019/05/25');
INSERT INTO MATRICULA VALUES (107,3,22,3,7,9,'2019/05/25');
INSERT INTO MATRICULA VALUES (108,3,22,3,8,10,'2019/05/25');
INSERT INTO MATRICULA VALUES (109,3,22,3,9,6,'2019/05/25');
INSERT INTO MATRICULA VALUES (110,3,22,3,10,7,'2019/05/25');

INSERT INTO MATRICULA VALUES (111,3,23,3,6,8,'2019/08/12');
INSERT INTO MATRICULA VALUES (112,3,23,3,7,9,'2019/08/12');
INSERT INTO MATRICULA VALUES (113,3,23,3,8,10,'2019/08/12');
INSERT INTO MATRICULA VALUES (114,3,23,3,9,6,'2019/08/12');
INSERT INTO MATRICULA VALUES (115,3,23,3,10,7,'2019/08/12');

INSERT INTO MATRICULA VALUES (116,3,24,3,6,8,'2019/07/14');
INSERT INTO MATRICULA VALUES (117,3,24,3,7,9,'2019/07/14');
INSERT INTO MATRICULA VALUES (118,3,24,3,8,10,'2019/07/14');
INSERT INTO MATRICULA VALUES (119,3,24,3,9,6,'2019/07/14');
INSERT INTO MATRICULA VALUES (120,3,24,3,10,7,'2019/07/14');

INSERT INTO MATRICULA VALUES (121,3,25,3,6,8,'2019/07/19');
INSERT INTO MATRICULA VALUES (122,3,25,3,7,9,'2019/07/19');
INSERT INTO MATRICULA VALUES (123,3,25,3,8,10,'2019/07/19');
INSERT INTO MATRICULA VALUES (124,3,25,3,9,6,'2019/07/19');
INSERT INTO MATRICULA VALUES (125,3,25,3,10,7,'2019/07/19');

INSERT INTO MATRICULA VALUES (126,3,26,3,6,8,'2019/07/10');
INSERT INTO MATRICULA VALUES (127,3,26,3,7,9,'2019/07/10');
INSERT INTO MATRICULA VALUES (128,3,26,3,8,10,'2019/07/10');
INSERT INTO MATRICULA VALUES (129,3,26,3,9,6,'2019/07/10');
INSERT INTO MATRICULA VALUES (130,3,26,3,10,7,'2019/07/10');

INSERT INTO MATRICULA VALUES (131,3,27,3,6,8,'2019/05/10');
INSERT INTO MATRICULA VALUES (132,3,27,3,7,9,'2019/05/10');
INSERT INTO MATRICULA VALUES (133,3,27,3,8,10,'2019/05/10');
INSERT INTO MATRICULA VALUES (134,3,27,3,9,6,'2019/05/10');
INSERT INTO MATRICULA VALUES (135,3,27,3,10,7,'2019/05/10');

INSERT INTO MATRICULA VALUES (136,3,28,3,6,8,'2019/04/10');
INSERT INTO MATRICULA VALUES (137,3,28,3,7,9,'2019/04/10');
INSERT INTO MATRICULA VALUES (138,3,28,3,8,10,'2019/04/10');
INSERT INTO MATRICULA VALUES (139,3,28,3,9,6,'2019/04/10');
INSERT INTO MATRICULA VALUES (140,3,28,3,10,7,'2019/04/10');

INSERT INTO MATRICULA VALUES (141,3,29,3,6,8,'2019/04/15');
INSERT INTO MATRICULA VALUES (142,3,29,3,7,9,'2019/04/15');
INSERT INTO MATRICULA VALUES (143,3,29,3,8,10,'2019/04/15');
INSERT INTO MATRICULA VALUES (144,3,29,3,9,6,'2019/04/15');
INSERT INTO MATRICULA VALUES (145,3,29,3,10,7,'2019/04/15');

INSERT INTO MATRICULA VALUES (146,3,29,3,6,8,'2019/03/15');
INSERT INTO MATRICULA VALUES (147,3,29,3,7,9,'2019/03/15');
INSERT INTO MATRICULA VALUES (148,3,29,3,8,10,'2019/03/15');
INSERT INTO MATRICULA VALUES (149,3,29,3,9,6,'2019/03/15');
INSERT INTO MATRICULA VALUES (150,3,29,3,10,7,'2019/03/15');

SELECT * FROM matricula;


-- PERGUNTAS --

-- Quais alunos possuem aula de de controle sanitário? --

select alunos.nome AS Nome_Aluno, alunos.email AS Email_Aluno
from matricula
inner join alunos on alunos.idAlunos = matricula.Alunos_idAlunos1
inner join disciplinas on disciplinas.idDisciplina = matricula.Disciplinas_idDisciplina1
where disciplinas.idDisciplina = 11
ORDER BY alunos.nome;

-- Qual(is) professor(es) que leciona(m) no curso de Alimentos e qual sua disciplina? --

select professores.nome AS Nome_Professor, disciplinas.nome AS Nome_Disciplina
from matricula
inner join disciplinas on disciplinas.idDisciplina = matricula.Disciplinas_idDisciplina1
inner join professores on professores.idProfessor = matricula.Professores_idProfessor
where matricula.Cursos_idCursos1 = 2
GROUP BY professores.idProfessor
ORDER BY professores.nome;

-- Qual(is) professor(es) do curso de agropecuária tem salário(s) maiore(s) que 7.000,00? --

SELECT professores.nome AS Nome_Professor, professores.salario AS Salario_Professor
FROM matricula
INNER JOIN professores ON professores.idProfessor = matricula.Professores_idProfessor
WHERE professores.salario >= 7000 AND matricula.Cursos_idCursos1 = 3
GROUP BY professores.idProfessor
ORDER BY professores.salario;

-- Qual disciplina tem a maior quantidade de aulas no curso de Informática e qual a quantidade? --

SELECT disciplinas.nome AS Nome_Disciplina, disciplinas.aulas AS Quantidade_Aulas
FROM matricula
INNER JOIN disciplinas ON disciplinas.idDisciplina = matricula.Disciplinas_idDisciplina1
INNER JOIN cursos ON cursos.idCursos = matricula.Cursos_idCursos1
WHERE disciplinas.aulas = (SELECT MAX(disciplinas.aulas) FROM disciplinas) 
AND cursos.idCursos = 1
GROUP BY disciplinas.idDisciplina;

-- Qual(is) professor(es) é/são formados em algum tipo de ENGENHARIA? Mostre também qual a engenharia. --

SELECT professores.nome AS Nome_Professor, professores.formacao AS Formacao_Professor
FROM professores
WHERE professores.formacao LIKE 'ENGENHARIA%';

