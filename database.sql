CREATE TABLE tb_golongan (
    gol_id TINYINT(3) NOT NULL AUTO_INCREMENT,
    gol_kode VARCHAR(10) NOT NULL,
    gol_nama VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT NULL,
    PRIMARY KEY(kat_id)
);

CREATE TABLE tb_pelanggan (
    pel_id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pel_id_gol TINYINT(3) NOT NULL,
    pel_no VARCHAR(20) NOT NULL,
    pel_nama VARCHAR(50) NOT NULL,
    pel_alamat TEXT NOT NULL,
    pel_HP VARCHAR(30) NOT NULL,
    pel_ktp VARCHAR(50) NOT NULL,
    pel_seri VARCHAR(50) NOT NULL,
    pel_meteran INT(11) NOT NULL,
    pel_aktif VARCHAR(11) NOT NULL,
    pel_id_user INT(11) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT NULL,
    PRIMARY KEY(pel_id)
);

CREATE TABLE tb_users (
	user_id INT(11) NOT NULL AUTO_INCREMENT,
	user_email VARCHAR(50) NOT NULL,
	user_password VARCHAR(100) NOT NULL,
	user_nama VARCHAR(100) NOT NULL,
    user_alamat TEXT DEFAULT NULL,
    user_hp VARCHAR(25) DEFAULT NULL,
    user_pos VARCHAR(5) DEFAULT NULL,
    user_role TINYINT(2),
    user_aktif TINYINT(2),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT NULL,
	PRIMARY KEY(user_id),
	UNIQUE KEY(user_email)
);

INSERT INTO
	tb_users
VALUES
	(
		1,
		'admin@gmail.com',
		'*4ACFE3202A5FF5CF467898FC58AAB1D615029441',
		'Lolakamal',
        'Medan',
        '5564',
        '76532',
        '1',
        '0',
		'2023-11-03 03:40:43',
		NULL
	),
    (
		2,
		'user@gmail.com',
		'*D5D9F81F5542DE067FFF5FF7A4CA4BDD322C578F',
		'Kamal',
        'Medan',
        '097',
        '98642',
        '2',
        '0',
		'2023-11-03 03:40:43',
		NULL
	);