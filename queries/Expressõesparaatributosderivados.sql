-- Calcular o total gasto em uma ordem de serviço
SELECT OrdemID, SUM(Quantidade * Preco) AS TotalGasto
FROM ServicoRealizado
INNER JOIN Servico ON ServicoRealizado.ServicoID = Servico.ServicoID
GROUP BY OrdemID;
