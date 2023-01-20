# Projeto-Escola-BancoDados

O banco de dados consiste na elaboração de um projeto para auxiliar na organização de uma escola que oferece ensino técnico (REFERÊNCIA na escola IFSULDEMINAS - Campus Muzambinho), onde o banco receberá os dados no momento da matrícula e inserirá nas tabelas adequadas, facilitando a organização dos dados. O banco de dados contará com 5 tabelas chave (Alunos - tb_alunos, Professores - tb_professores, Cursos - tb_cursos, Disciplinas - tb_disciplinas, Turmas - tb_turmas), comunicando entre elas e com a principal, que chamaremos de Matrícula (tb_matricula).

Tabela Aluno
A tabela aluno é a que recebe os dados necessários do estudante para a realização
da matrícula.

Tabela Professores
A tabela de professores é a que recebe os dados do professor que leciona as aulas na
escola. Contém: idProfessor, nome, cpf, salário, telefone e formação.

Tabela Cursos
A tabela de cursos é a que recebe os dados dos cursos que estão disponíveis para
aplicação para os alunos. Contém: idCursos, nome, carga horária e quantidade de vagas.

Tabela Turmas
A tabela de turmas que recebe os dados das turmas (ex: INFO_D) contidas na escola.
Contém: idTurmas, nome e tamanho da turma.

Tabela Disciplinas
A tabela de disciplinas que recebe os dados das disciplinas ministradas em que cada curso,
por cada professor na escola. Contém: idDisciplinas, nome, as aulas e uma chave
estrangeira ligada aos professores (Professores_idProfessor).

Tabela Matrícula
A tabela da Matrícula é a final, que é gerada a partir de uma ligação N:N e serve de base
para a maioria das consultas que serão realizadas, por ser a tabela central. Contém
idMatricula, data da matrícula e as seguintes chaves estrangeiras: Cursos_idCursos,
Alunos_idAlunos, Turmas_idTurmas, Disciplinas_idDisciplinas.

![image](https://user-images.githubusercontent.com/92394980/213717033-b3011f82-26c2-4037-98ac-38f99c4ca22e.png)



