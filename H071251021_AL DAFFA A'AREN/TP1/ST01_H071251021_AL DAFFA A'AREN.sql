-- NOMOR 1
CREATE TABLE pegawai (
	id_pegawai SERIAL PRIMARY KEY,
	nama_pegawai VARCHAR(100) NOT NULL,
	umur INT NOT NULL,
	gaji NUMERIC(12,2) NOT NULL,
	email VARCHAR(150) NOT NULL,
	tanggal_masuk DATE NOT NULL,
	status_keaktifan BOOLEAN
);

-- NOMOR 2
CREATE TABLE seller (
	id_seller BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nama_toko VARCHAR(100) NOT NULL UNIQUE,
	nama_pemilik VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL UNIQUE,
	nomor_rekening VARCHAR(20) UNIQUE,
	saldo NUMERIC(15,2) DEFAULT 0 CHECK(saldo >= 0),
	rating_toko NUMERIC (2,1) DEFAULT 0.0 CHECK(rating_toko BETWEEN 0.0 AND 5.0),
	komisi DOUBLE PRECISION CHECK(komisi > 0 AND komisi <= 100),
	tanggal_daftar TIMESTAMP,
	status BOOLEAN DEFAULT FALSE,
	deskripsi TEXT
);

SELECT * FROM seller;
SELECT * FROM pegawai;

DROP TABLE seller;