-- Função para somar o número de clientes cadastrados em um dia específico
DELIMITER //

CREATE FUNCTION SomarClientesCadastradosPorDia(data_consulta DATE)
RETURNS INT
BEGIN
    DECLARE total_clientes INT;
    
    SELECT COUNT(*) INTO total_clientes
    FROM Clientes
    WHERE DATE(DataCadastro) = data_consulta;
    
    RETURN total_clientes;
END //

DELIMITER ;
