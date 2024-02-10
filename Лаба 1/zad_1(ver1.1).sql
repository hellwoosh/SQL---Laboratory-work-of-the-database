CREATE TABLE university
(
	university_id integer PRIMARY KEY,
	university text NOT NULL
);

CREATE TABLE faculty
(
	faculty_id integer PRIMARY KEY,
	faculty text NOT NULL,
	fk_university_id integer REFERENCES university(university_id) NOT NULL
);

CREATE TABLE student
(
	student_id integer PRIMARY KEY,
	surname text NOT NULL,
	"name" text NOT NULL,
	patronymic text NOT NULL,
	fk_faculty_id integer REFERENCES faculty(faculty_id) NOT NULL
)