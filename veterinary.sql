CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT, PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
);

CREATE TABLE invoices (
    invoiceid INT, PRIMARY KEY,
    totalamount NUMERIC(10,2),
    paymentdate TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords(
    recordid INT, PRIMARY KEY,
    recorddate TIMESTAMP,
    diagnosis TEXT,
    prescription TEXT,
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners (owenerid, ofirstname, olastname, address, phone,email)
VALUES
    (1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '123-456-7890', 'juan@example.com'),
    (2, 'Maria', 'Santos', ' 456 Elm St, Quezon City', '987-654-3210','maria@example.com'),
    (3, 'Antonio', 'Gonzales','789 Oak St,Cebu','555-123-4567', 'antonio@example.com '),
    (4, 'Elena', 'Rodriguez', '354 Pine St, Davao ','777-888-9999', 'elena@example.com'),
    (5, 'Ricardo', 'Lim','987 Cedar St, Makati ', ' 222-333-4444','ricardo@example.com'),
    (6, 'Isabel', 'Reyes', '111Acacia St Pasig ', ' 999-000-1111','isabel@example.com'),
    (7, 'Luis', 'Torres', '555 Maple St, Mandaluyong ', '  123-555-7777','luis@example.com'),
    (8, 'Carmen', 'Fernandez', '222 Birch St, Taguig','333-222-1111','carmen@example.com'),
    (9, 'Pedro', 'Santillan', '888 Spruce St, Bacolod', '888-777-6666','pedro@example.com'),
    (10, 'Sofia', 'Villanueva', '777 Walnut St, Iloilo','111-999-3333','sofia@example.com');

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
    (1, 'Fido', 'Dog', 'Golden Retriever', '2018-03-15', 'Male', 'Golden', 1),
    (2, 'Whiskers', 'Cat', 'Siamese', '2019-07-20', 'Female', 'Cream', 2),
    (3, 'Rocky', 'Dog', 'German Shepherd', '2017-05-10', 'Male', 'Black and Tan', 3),
    (4, 'Fluffy', 'Cat', 'Persian', '2020-01-30', 'Male', 'White', 4),
    (5, 'Luna', 'Dog', 'Labrador Retriver', '2019-11-25', 'Female', 'Yellow', 5),
    (6, 'Mochi', 'Cat', 'Maine Coon', '2018-09-12', 'Male', 'Brown Tabby', 6),
    (7, 'Bella', 'Dog', 'Poodle', '2020-04-05', 'Female', 'White', 7),
    (8, 'Simba', 'Cat', 'Bengal', '2018-06-18', 'Male', 'Golden', 8),
    (9, 'Max', 'Dog', 'Golden Retriever', '2018-03-15', 'Male', 'Spotted Rossetted', 9),
    (10, 'Cleo', 'Cat', 'Ragdoll', '2019-12-22', 'Female', 'Seal Point', 10);
    
    