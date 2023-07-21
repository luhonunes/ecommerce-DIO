CREATE DATABASE ecommerce CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ecommerce;

CREATE TABLE client (
    idclient INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(50),
    Minit CHAR(2),
    Lname VARCHAR(50),
    CPF VARCHAR(11) NOT NULL,
    Address VARCHAR(100),
    CONSTRAINT unique_cpf_client UNIQUE (CPF)
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE product (
    idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(100) NOT NULL,
    classification_kids BOOLEAN DEFAULT FALSE,
    category VARCHAR(20) NOT NULL,
    avaliacao FLOAT DEFAULT 0,
    size VARCHAR(10),
    CONSTRAINT check_category CHECK (category IN ('Eletronico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis'))
) ENGINE=InnoDB;

CREATE TABLE payments (
    idclient INT,
    idPayment INT,
    typePayment VARCHAR(20) NOT NULL,
    limitAvallable FLOAT,
    PRIMARY KEY (idclient, idPayment),
    CONSTRAINT check_typePayment CHECK (typePayment IN ('Boleto', 'Cartão', 'Dois cartoes'))
) ENGINE=InnoDB;

CREATE TABLE orders (
    idorder INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT, -- Renomeie a coluna para "client_id"
    orderStatus VARCHAR(20) NOT NULL,
    orderDescription VARCHAR(255),
    sendValue FLOAT DEFAULT 10,
    paymentCash BOOL DEFAULT FALSE,
    CONSTRAINT fk_orders_client FOREIGN KEY (client_id) REFERENCES client (idclient),
    CONSTRAINT check_orderStatus CHECK (orderStatus IN ('Cancelado', 'Confirmado', 'Em processamento')) -- Corrected the orderStatus value
) ENGINE=InnoDB;

CREATE TABLE productStorage (
    idProdStorage INT AUTO_INCREMENT PRIMARY KEY,
    storageLocation VARCHAR(255),
    quantity INT DEFAULT 0
) ENGINE=InnoDB;

CREATE TABLE supplier (
    idsupplier INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(15) NOT NULL,
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE (CNPJ)
) ENGINE=InnoDB;

CREATE TABLE seller (
    idseller INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(255) NOT NULL,
    AbstName VARCHAR(255),
    CNPT VARCHAR(15),
    CPF VARCHAR(9),
    location VARCHAR(255),
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_cnpj_seller UNIQUE (CNPT),
    CONSTRAINT unique_cpf_seller UNIQUE (CPF)
) ENGINE=InnoDB;

CREATE TABLE productSeller (
    idPseller INT,
    idProduct INT,
    prodQuantity INT DEFAULT 1,
    PRIMARY KEY (idPseller, idProduct),
    CONSTRAINT fk_product_seller FOREIGN KEY (idPseller) REFERENCES seller (idseller),
    CONSTRAINT fk_product_product FOREIGN KEY (idProduct) REFERENCES product (idProduct)
) ENGINE=InnoDB;

CREATE TABLE productorder (
    idPOproduct INT,
    idPOorder INT,
    poQuantity INT DEFAULT 1,
    poStatus VARCHAR(20) DEFAULT 'Disponível',
    PRIMARY KEY (idPOproduct, idPOorder),
    CONSTRAINT fk_productorder_product FOREIGN KEY (idPOproduct) REFERENCES product (idProduct),
    CONSTRAINT fk_productorder_order FOREIGN KEY (idPOorder) REFERENCES orders (idorder),
    CONSTRAINT check_poStatus CHECK (poStatus IN ('Disponível', 'Sem estoque'))
) ENGINE=InnoDB;

CREATE TABLE storageLocation (
    idLproduct INT,
    idLstorage INT,
    location VARCHAR(255) NOT NULL,
    PRIMARY KEY (idLproduct, idLstorage),
    CONSTRAINT fk_storage_location_product FOREIGN KEY (idLproduct) REFERENCES product (idProduct),
    CONSTRAINT fk_storage_location_storage FOREIGN KEY (idLstorage) REFERENCES productStorage (idProdStorage)
) ENGINE=InnoDB;
