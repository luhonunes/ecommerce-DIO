-- Inserção de registros na tabela client
INSERT INTO client (Fname, Minit, Lname, CPF, Address)
VALUES ('John', 'D', 'Doe', '12345678900', '123 Main St'),
       ('Jane', 'E', 'Smith', '98765432100', '456 Elm St');

-- Inserção de registros na tabela product
INSERT INTO product (Pname, classification_kids, category, avaliacao, size)
VALUES ('Product 1', true, 'Brinquedos', 4.5, 'Small'),
       ('Product 2', false, 'Eletronico', 3.2, 'Medium');

-- Inserção de registros na tabela payments
INSERT INTO payments (idclient, idPayment, typePayment, limitAvallable)
VALUES (1, 1, 'Boleto', 1000),
       (1, 2, 'Cartão', 500),
       (2, 3, 'Cartão', 800);

-- Inserção de registros na tabela orders
INSERT INTO orders (client_id, orderStatus, orderDescription, sendValue, paymentCash)
VALUES (1, 'Confirmado', 'Pedido confirmado', 20, false),
       (2, 'Em processamento', 'Aguardando processamento', 15, true);

-- Inserção de registros na tabela productStorage
INSERT INTO productStorage (storageLocation, quantity)
VALUES ('Warehouse A', 100),
       ('Warehouse B', 200);

-- Inserção de registros na tabela supplier
INSERT INTO supplier (SocialName, CNPJ, contact)
VALUES ('Supplier 1', '12345678901234', '987654321'),
       ('Supplier 2', '98765432109876', '123456789');

-- Inserção de registros na tabela seller
INSERT INTO seller (SocialName, AbstName, CNPT, CPF, location, contact)
VALUES ('Seller 1', 'Seller One', '12345678901234', '123456789', 'Location 1', '987654321'),
       ('Seller 2', 'Seller Two', '98765432109876', '987654321', 'Location 2', '123456789');

-- Inserção de registros na tabela productSeller
INSERT INTO productSeller (idPseller, idProduct, prodQuantity)
VALUES (1, 1, 10),
       (1, 2, 5),
       (2, 2, 3);

-- Inserção de registros na tabela productorder
INSERT INTO productorder (idPOproduct, idPOorder, poQuantity, poStatus)
VALUES (1, 1, 2, 'Disponível'),
       (2, 1, 1, 'Sem estoque');

-- Inserção de registros na tabela storageLocation
INSERT INTO storageLocation (idLproduct, idLstorage, location)
VALUES (1, 1, 'Warehouse A'),
       (2, 2, 'Warehouse B');
