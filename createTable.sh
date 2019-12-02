#!/usr/bin/env bash 

sqlite3 java.db <<EOF 
create table course(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	"course" TEXT,
	"qr" TEXT,
	"ref" TEXT,
	"major" TEXT,
);

.import course.csv tmpTab

insert into course(
	course,
	qr,
	ref,
	major
) select * from tmpTab;
EOF
