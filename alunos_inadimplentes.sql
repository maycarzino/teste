use edumanager;

SELECT 
    p.*, m.*, a.nome AS nome_aluno
FROM
    pagamentos p
        JOIN
    matriculas m ON p.id_matricula = m.id
        JOIN
    alunos a ON m.id_aluno = a.id
WHERE
    p.data_pagamento IS NULL
        AND m.status = 'ativa'
        AND m.data_fim BETWEEN DATE_ADD(CURRENT_DATE(), INTERVAL - 30 DAY) AND CURRENT_DATE()

