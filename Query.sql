CREATE TABLE "user"(
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	password VARCHAR(500) NOT NULL,
	token VARCHAR(100),
	confirmed BOOLEAN NOT NULL,
	created_at TIMESTAMP without time zone NOT NULL,
	updated_at TIMESTAMP without time zone NOT NULL,

	CONSTRAINT uq_email_con001 UNIQUE (email)
);

CREATE TABLE project(
	id SERIAL PRIMARY KEY NOT NULL,
	"user" INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	description VARCHAR(500) NOT NULL,
	delivery_date TIMESTAMP without time zone NOT NULL,
	client VARCHAR(50) NOT NULL,
	created_at TIMESTAMP without time zone NOT NULL,
	updated_at TIMESTAMP without time zone NOT NULL,
	
	CONSTRAINT fk_user_x_project_con002
	FOREIGN KEY ("user")
	REFERENCES "user"(id)
	ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE task(
	id SERIAL PRIMARY KEY NOT NULL,
	project INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	description VARCHAR(500) NOT NULL,
	record_status BOOLEAN NOT NULL,
	delivery_date TIMESTAMP without time zone NOT NULL,
	priority VARCHAR(50) NOT NULL,
	created_at TIMESTAMP without time zone NOT NULL,
	updated_at TIMESTAMP without time zone NOT NULL,
	
	CONSTRAINT fk_project_x_task_con003
	FOREIGN KEY (project)
	REFERENCES project(id)
	ON UPDATE CASCADE ON DELETE CASCADE
)