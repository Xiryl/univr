
drop database nomeDatabase;

create database nomeDatabase;

use nomeDatabase;

CREATE TABLE MATERIAL (
    idMateriale INTEGER AUTO_INCREMENT NOT NULL,
    description varchar(100),
    PRIMARY KEY (idMateriale)
);

CREATE TABLE SPORT (
    idSport INTEGER AUTO_INCREMENT NOT NULL,
    description varchar(100),
    PRIMARY KEY (idSport)
);

CREATE TABLE SHOP (
    cfShop varchar(50) NOT NULL,
    name varchar(100) NOT NULL,
    street varchar(200) NOT NULL,
    position varchar(200) NOT NULL,
    PRIMARY KEY (cfShop)
);

CREATE TABLE BILL (
    idBill INTEGER AUTO_INCREMENT NOT NULL,
    description varchar(200),
    PRIMARY KEY (idBill)
);

CREATE TABLE COURIER (
    idCourier INTEGER AUTO_INCREMENT NOT NULL,
    description varchar(200),
    PRIMARY KEY (idCourier)
);

CREATE TABLE WAREHOUSE_OUT (
    idWarehouseOut INTEGER AUTO_INCREMENT NOT NULL,
    idBill INTEGER NOT NULL,
    cfShop varchar(50) NOT NULL,
    idCourier INTEGER NOT NULL,
    PRIMARY KEY (idWarehouseOut),
    FOREIGN KEY (idBill) REFERENCES BILL (idBill),
    FOREIGN KEY (cfShop) REFERENCES SHOP (cfShop),
    FOREIGN KEY (idCourier) REFERENCES COURIER (idCourier)
);

CREATE TABLE ORDERS (
    idOrder INTEGER AUTO_INCREMENT NOT NULL,
    idWarehouseOut INTEGER NOT NULL,
    date DATETIME NOT NULL,
    PRIMARY KEY (idOrder),
    FOREIGN KEY (idWarehouseOut) REFERENCES WAREHOUSE_OUT (idWarehouseOut)
);

CREATE TABLE ARTICLE_TYPE (
    idArticleType INTEGER AUTO_INCREMENT NOT NULL,
    name varchar(100) NOT NULL,
    description varchar(100) NOT NULL,
    idSport INTEGER NOT NULL,
    idMateriale INTEGER NOT NULL,
    PRIMARY KEY (idArticleType),
    FOREIGN KEY (idSport) REFERENCES SPORT (idSport),
    FOREIGN KEY (idMateriale) REFERENCES MATERIAL (idMateriale)
);

CREATE TABLE ORDER_DETAIL (
    idOrderDetail INTEGER AUTO_INCREMENT NOT NULL,
    idOrder INTEGER NOT NULL,
    idArticleType INTEGER NOT NULL,
    value INTEGER NOT NULL,
    price DOUBLE NOT NULL,
    PRIMARY KEY (idOrderDetail),
    FOREIGN KEY (idOrder) REFERENCES ORDERS (idOrder),
    FOREIGN KEY (idArticleType) REFERENCES ARTICLE_TYPE (idArticleType)
);

CREATE TABLE WAREHOUSE_IN (
    idInternalCode INTEGER AUTO_INCREMENT NOT NULL,
    date DATETIME NOT NULL,
    position varchar(100) NOT NULL,
    idArticleType INTEGER NOT NULL,
    PRIMARY KEY (idInternalCode),
    FOREIGN KEY (idArticleType) REFERENCES ARTICLE_TYPE (idArticleType)
);

CREATE TABLE ARTICLE (
    idArticle INTEGER AUTO_INCREMENT NOT NULL,
    idArticleType INTEGER NOT NULL,
    price DOUBLE NOT NULL,
    date DATETIME NOT NULL,
    PRIMARY KEY (idArticle),
    FOREIGN KEY (idArticleType) REFERENCES ARTICLE_TYPE (idArticleType)
);

CREATE TABLE REPORT (
    idReport INTEGER AUTO_INCREMENT NOT NULL,
    date DATETIME NOT NULL,
    warehouseIn INTEGER NOT NULL,
    warehouseOut INTEGER NOT NULL,
    PRIMARY KEY (idReport) 
);

CREATE TABLE LOG (
    idLog INTEGER AUTO_INCREMENT NOT NULL,
    idUser INTEGER,
    action varchar(250),
    description varchar(250),
    date DATETIME NOT NULL,
    PRIMARY KEY (idLog)
);

CREATE TABLE USER (
    idUser INTEGER AUTO_INCREMENT NOT NULL,
    userType INTEGER NOT NULL,
    name varchar (100) NOT NULL,
    pwd varchar(255) NOT NULL,
    PRIMARY KEY (idUser)
);