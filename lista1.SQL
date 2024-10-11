use db_atividade_view;

-- 1. Exibir lista de alunos e seus cursos
create view alunos_compl as
select distinct aluno.nome as aluno,
    disciplina.nome as disciplina,
    curso.nome as curso
from matricula
inner join aluno on aluno.id_aluno = matricula.id_aluno
inner join disciplina on disciplina.id_disciplina = matricula.id_disciplina
inner join curso on curso.id_curso = disciplina.id_curso
;

-- 2. Exibir total de alunos por disciplina
create view total_alunos as
select disciplina.nome as disciplina,
    count(aluno.id_aluno) as total_alunos
from matricula
inner join aluno on aluno.id_aluno = matricula.id_aluno
inner join disciplina on disciplina.id_disciplina = matricula.id_disciplina
group by disciplina.nome
;

-- 3. Exibir alunos e status das suas matrículas
create view status_disciplinas as
select aluno.nome as aluno,
    disciplina.nome as disciplina,
    matricula.status
from matricula
inner join aluno on aluno.id_aluno = matricula.id_aluno
inner join disciplina on disciplina.id_disciplina = matricula.id_disciplina
inner join curso on curso.id_curso = disciplina.id_curso
;

-- 4. Exibir professores e suas turmas


-- 5. Exibir alunos maiores de 20 anos


-- 6. Exibir disciplinas e carga horária total por curso


-- 7. Exibir professores e suas especialidades


-- 8. Exibir alunos matriculados em mais de uma disciplina


-- 9. Exibir alunos e o número de disciplinas que concluíram


-- 10. Exibir todas as turmas de um semestre específico


-- 11. Exibir alunos com matrículas trancadas


-- 12. Exibir disciplinas que não têm alunos matriculados


-- 13. Exibir a quantidade de alunos por status de matrícula


-- 14. Exibir o total de professores por especialidade


-- 15. Exibir lista de alunos e suas idades


-- 16. Exibir alunos e suas últimas matrículas


-- 17. Exibir todas as disciplinas de um curso específico


-- 18. Exibir os professores que não têm turmas


-- 19. Exibir lista de alunos com CPF e email


-- 20. Exibir o total de disciplinas por professor
