-- Tabela Cliente
CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);

-- Tabela Veículo
CREATE TABLE Veiculo (
    VeiculoID INT PRIMARY KEY,
    Modelo VARCHAR(255),
    Ano INT,
    Placa VARCHAR(10),
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

-- Tabela Serviço
CREATE TABLE Servico (
    ServicoID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Preco DECIMAL(10, 2)
);

-- Tabela OrdemDeServico
CREATE TABLE OrdemDeServico (
    OrdemID INT PRIMARY KEY,
    Data DATE,
    VeiculoID INT,
    ClienteID INT,
    FOREIGN KEY (VeiculoID) REFERENCES Veiculo(VeiculoID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

-- Tabela ServicoRealizado
CREATE TABLE ServicoRealizado (
    ID INT PRIMARY KEY,
    OrdemID INT,
    ServicoID INT,
    Quantidade INT,
    FOREIGN KEY (OrdemID) REFERENCES OrdemDeServico(OrdemID),
    FOREIGN KEY (ServicoID) REFERENCES Servico(ServicoID)
);

-- Inserir dados de exemplo
INSERT INTO Cliente (ClienteID, Nome, Endereco, Telefone)
VALUES (1, 'João da Silva', 'Rua A, 123', '123-456-7890');

INSERT INTO Veiculo (VeiculoID, Modelo, Ano, Placa, ClienteID)
VALUES (1, 'Toyota Corolla', 2020, 'ABC1234', 1);

INSERT INTO Servico (ServicoID, Nome, Preco)
VALUES (1, 'Troca de Óleo', 50.00);

INSERT INTO OrdemDeServico (OrdemID, Data, VeiculoID, ClienteID)
VALUES (1, '2023-09-10', 1, 1);

INSERT INTO ServicoRealizado (ID, OrdemID, ServicoID, Quantidade)
VALUES (1, 1, 1, 1);
