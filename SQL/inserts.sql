INSERT INTO SUPPLIER (SUP_NAME, SUP_ADDRESS, SUP_ZIPCODE, SUP_PHONE, SUP_CON_FNAME, SUP_CON_LNAME, SUP_CON_PHONE)
VALUES
('Supplier A', 12345, 54321, '111-111-1111', 'John', 'Doe', '111-111-1112'),
('Supplier B', 56789, 98765, '222-222-2222', 'Jane', 'Smith', '222-222-2223'),
('Supplier C', 98765, 56789, '333-333-3333', 'David', 'Johnson', '333-333-3334'),
('Supplier D', 54321, 12345, '444-444-4444', 'Sarah', 'Wilson', '444-444-4445'),
('Supplier E', 65432, 23456, '555-555-5555', 'Michael', 'Brown', '555-555-5556');

INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_TYPE, SUP_ID, PRODUCT_PRICE, PRODUCT_QTY)
VALUES
('A2A2A2A2A2', 'Paintbrush Fan 8mm', 1, 5.25, 100),
('B2B2B2B2B2', 'Canvas 8x12in', 2, 12.50, 50),
('C3C3C3C3C3', 'Oil Paint 35A', 1, 4.25, 75),
('D4D4D4D4D4', 'WaterColor Red 42C', 3, 18.75, 30),
('E5E5E5E5E5', 'Posters', 2, 8.50, 60);

INSERT INTO LINE (ORDER_ID, LINE_NUM, PRODUCT_ID, PRODUCT_PRICE, LINE_QTY, LINE_PRICE)
VALUES
(1, 1, 'A2A2A2A2A2', 5.25, 2, 10.50),
(1, 2, 'B2B2B2B2B2', 12.50, 3, 37.50),
(2, 1, 'C3C3C3C3C3', 4.25, 1, 4.25),
(2, 2, 'D4D4D4D4D4', 18.75, 4, 75.00),
(3, 1, 'E5E5E5E5E5', 8.50, 2, 17.00);

INSERT INTO ORDERS (CUST_ID, ORDER_DATE, ORDER_DELIVERY_DATE, ORDER_TOTAL)
VALUES
(1, '2023-09-23', '2023-09-25', 85.50),
(2, '2023-09-24', '2023-09-27', 68.00),
(3, '2023-09-25', '2023-09-28', 76.50),
(4, '2023-09-26', '2023-09-29', 89.75),
(5, '2023-09-27', '2023-09-30', 102.00);



INSERT INTO CUSTOMER (CONTACT_FNAME, CONTACT_LNAME, CONTACT_PHONENUM, CONTACT_ADDRESS, CONTACT_EMAIL, CUST_BALANCE, ORG_NAME, ORG_PHONENUM, ORG_FAX, ORG_EMAIL)
VALUES
('Bob', 'Ross', '555-6789', '123 Squirrel St', 'happytrees@gmail.com', 234.32, 'TV Network', '8882345', '9991234', 'TVNetwork@TVPLlace.com');

INSERT INTO CUSTOMER (CONTACT_FNAME, CONTACT_LNAME, CONTACT_PHONENUM, CONTACT_ADDRESS, CONTACT_EMAIL, CUST_BALANCE, ORG_NAME, ORG_PHONENUM, ORG_FAX, ORG_EMAIL)
VALUES
('Jackson', 'Pollock', '555-1234', '890 Splatter St', 'messydots@gmail.com', 2343.78, NULL, NULL, NULL, NULL);

INSERT INTO CUSTOMER (CONTACT_FNAME, CONTACT_LNAME, CONTACT_PHONENUM, CONTACT_ADDRESS, CONTACT_EMAIL, CUST_BALANCE, ORG_NAME, ORG_PHONENUM, ORG_FAX, ORG_EMAIL)
VALUES
('Claude', 'Monet', '555-2398', '1488 French St', 'impressionable@gmail.com', 735.50,  NULL, NULL, NULL, NULL);

INSERT INTO CUSTOMER (CONTACT_FNAME, CONTACT_LNAME, CONTACT_PHONENUM, CONTACT_ADDRESS, CONTACT_EMAIL, CUST_BALANCE, ORG_NAME, ORG_PHONENUM, ORG_FAX, ORG_EMAIL)
VALUES
('Salvador', 'Dali', '555-6666', '5139 Woahh St', 'surrealistictendencies@gmail.com', 165.75,  NULL, NULL, NULL, NULL);

INSERT INTO CUSTOMER (CONTACT_FNAME, CONTACT_LNAME, CONTACT_PHONENUM, CONTACT_ADDRESS, CONTACT_EMAIL, CUST_BALANCE, ORG_NAME, ORG_PHONENUM, ORG_FAX, ORG_EMAIL)
VALUES
('Jerry', 'Yarnell', '555-7878', '2342 Notagain St', 'westernsarecool@gmail.com', 2392.00, 'That One Enterprise', '888-2348', '999-8274', 'TOE@TOEentertainment.com');