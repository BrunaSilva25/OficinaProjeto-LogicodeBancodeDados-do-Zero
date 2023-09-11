-- Recuperar serviços realizados em uma ordem de serviço específica
SELECT Servico.Nome, ServicoRealizado.Quantidade
FROM ServicoRealizado
INNER JOIN Servico ON ServicoRealizado.ServicoID = Servico.ServicoID
WHERE ServicoRealizado.OrdemID = 1;
