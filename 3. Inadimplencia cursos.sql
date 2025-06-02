use edumanager;

SELECT 
        m.id_curso,
        c.nome,
        COUNT(*) AS total_matriculas,
        SUM(p.data_pagamento is null) AS inadimplentes
    FROM 
        matriculas m
        LEFT JOIN
    pagamentos p ON m.id = p.id_matricula
        JOIN
    cursos c ON m.id_curso = c.id
WHERE
    m.status = 'ativa'
    group by m.id_curso
  
    
        

