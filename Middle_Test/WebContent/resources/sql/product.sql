CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(50),
	p_unitPrice  INTEGER,
	p_description TEXT,
   	p_category VARCHAR(20),
	p_makeCoutry VARCHAR(20),
	p_unitsInStock LONG,
	p_fileName  VARCHAR(100),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;