{\rtf1\ansi\ansicpg936\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fnil\fcharset134 PingFangSC-Regular;\f1\fnil\fcharset134 PingFangSC-Medium;\f2\fnil\fcharset134 .PingFangSC-Regular;
\f3\fnil\fcharset0 HelveticaNeue;\f4\fmodern\fcharset0 CourierNewPSMT;\f5\fnil\fcharset0 Menlo-Regular;
}
{\colortbl;\red255\green255\blue255;\red35\green35\blue35;\red255\green255\blue255;\red0\green0\blue255;
\red243\green249\blue254;\red0\green0\blue0;\red0\green68\blue254;\red109\green109\blue109;\red83\green104\blue112;
\red252\green244\blue220;\red115\green138\blue4;\red37\green146\blue134;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 sqlite\'ca\'fd\'be\'dd\'bf\'e2\'bb\'f9\'b1\'be\'c0\'e0\'d0\'cd:integer    real     text   blob \
\
sql \'d3\'ef\'be\'e4\'bc\'f2\'b5\'a5\'b5\'c4\'bf\'c9\'d2\'d4\'b7\'d6\'ce\'aa\'d2\'bb\'cf\'c2\'c8\'fd\'c0\'e0\'a3\'ba\
1.\'ca\'fd\'be\'dd\'b6\'a8\'d2\'e5\'d3\'ef\'be\'e4\'a3\'a8DDL: Data Definition Language\'a3\'a9\
\'b0\'fc\'c0\'a8create\'ba\'cddrop \'b5\'c8\'b2\'d9\'d7\'f7\
2.\'ca\'fd\'be\'dd\'bf\'e2\'b2\'d9\'d7\'f7\'d3\'ef\'be\'e4\'a3\'a8DQL:Data Manipulation Language\'a3\'a9\
\'b0\'fc\'c0\'a8insert\'a1\'a2update\'a1\'a2delete\
3.\'ca\'fd\'be\'dd\'bf\'e2\'b2\'e9\'d1\'af\'d3\'ef\'be\'e4 (DQL:Data query Language)\
\'b9\'d8\'bc\'fc\'d7\'d6select \'d2\'d4\'bc\'b0where(\'cc\'ed\'bc\'d3\'cc\'f5\'bc\'fe)\'a3\'acorder by(\'c5\'c5\'d0\'f2)\'a3\'acgroup by\'a3\'a8\'b7\'d6\'d7\'e9\'a3\'a9 \'ba\'cdhavig(\'cd\'a8\'b3\'a3\'d4\'da\'d2\'bb\'b8\'f6sql\'be\'e4\'d7\'d3\'d7\'ee\'ba\'f3)\
\'b1\'ed\'b5\'c4\'d4\'bc\'ca\'f8\'cc\'f5\'bc\'fe\
\pard\pardeftab720\partightenfactor0

\f1 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \'b9\'d8\'bd\'a1\'d7\'d6:\
\pard\pardeftab720\partightenfactor0
\cf2 Not Null \'a3\'ba\'b9\'e6\'b6\'a8\'d7\'d6\'b6\'ce\'b5\'c4\'d6\'b5\'b2\'bb\'c4\'dc\'ce\'aaNULL\
Unique \'a3\'ba\'b9\'e6\'b6\'a8\'d7\'d6\'b6\'ce\'b5\'c4\'d6\'b5\'b1\'d8\'d0\'eb\'ce\'a8\'d2\'bb\
Default \'a3\'ba\'d6\'b8\'b6\'a8\'d7\'d6\'b6\'ce\'b5\'c4\'c4\'ac\'c8\'cf\'d6\'b5\

\f2 \'c1\'d0\'c8\'e7\'a3\'baname \'d7\'d6\'b6\'ce\'b2\'bb\'c4\'dc\'ce\'aaNuLL\'a3\'ac\'b2\'a2\'c7\'d2\'ce\'a8\'d2\'bbage\'d7\'d6\'b6\'ce\'b2\'bb\'c4\'dc\'ce\'aaNULL,\'b2\'a2\'c7\'d2\'ce\'aa1\
CREATE TABLE t_test(ID INTEGER PRIMARY KEY ANTOINCREMENT,name text NOT NULL Unique,age Integer NOT NULL DEFAULT 1);
\f3\fs32 \

\f2 \

\fs24 \'d6\'f7\'bd\'a1: \'ce\'a8\'d2\'bb\'b1\'ea\'ca\'b6\'d2\'bb\'cc\'f5\'bc\'c7\'c2\'bc\'a3\'ac\'b2\'bb\'c4\'dc\'d3\'d0\'d6\'d8\'b8\'b4\'a3\'ac\'b2\'bb\'c4\'dc\'ce\'aa\'bf\'d5
\fs32 \

\fs24 \'cd\'e2\'bd\'a1\'a3\'ba\'b1\'ed\'b5\'c4\'cd\'e2\'bd\'a1\'ca\'c7\'c1\'ed\'d2\'bb\'b8\'f6\'b1\'ed\'b5\'c4\'d6\'f7\'bc\'fc\'a3\'ac\'bf\'c9\'d2\'d4\'d6\'d8\'b8\'b4\
 
\f4\fs26 \cf4 \cb5 \strokec4 alter\cf6 \strokec6  \cf4 \strokec4 tableA\cf6 \strokec6  \cf4 \strokec4 add\cf6 \strokec6  \cf4 \strokec4 constraint
\f0 \cf6 \strokec6  
\f4 \cf4 \strokec4 foreign\cf6 \strokec6  \cf4 \strokec4 key
\f0 \'a3\'a8name\'a3\'a9
\f4 references\cf6 \strokec6  
\f0 \cf7 tableB
\f4 \strokec8 (\strokec6 ticket_no\strokec8 )\
\

\f0 \'c9\'fd\'d0\'f2\'bd\'b5\'d0\'f2\'b2\'e9\'d1\'af\

\f4 \
\pard\pardeftab720\sl400\partightenfactor0

\f5\fs24 \cf9 \cb10 \strokec9 SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 ORDER\cf9 \strokec9  \cf11 \strokec11 BY\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 1\cf9 \strokec9  \cf11 \strokec11 ASC\cf9 \strokec9 ,
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 2\cf9 \strokec9  \cf11 \strokec11 DESC\cf9 \strokec9 ;\
\pard\pardeftab720\sl400\partightenfactor0

\f0 \cf9 \'b8\'f1\'ca\'bd
\f5 :\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'b5\'c8\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  = 
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 ;\
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'b2\'bb\'b5\'c8\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  != 
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'ca\'c7\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  \cf11 \strokec11 IS\cf9 \strokec9  
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'b2\'bb\'ca\'c7\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  \cf11 \strokec11 IS\cf9 \strokec9  \cf11 \strokec11 NOT\cf9 \strokec9  
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'b4\'f3\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  > 
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'d0\'a1\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  < 
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'c4\'b3\'b8\'f6\'d7\'d6\'b6\'ce\'d2\'c0\'c4\'b3\'b8\'f6\'d6\'b5\'bf\'aa\'cd\'b7\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  \cf11 \strokec11 LIKE\cf9 \strokec9  \cf12 \strokec12 "
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 %"\cf9 \strokec9 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'c4\'b3\'b8\'f6\'d7\'d6\'b6\'ce\'b0\'fc\'ba\'ac\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce
\f5  \cf11 \strokec11 LIKE\cf9 \strokec9  \cf12 \strokec12 "%
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 %"\cf9 \strokec9 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'bc\'c7\'c2\'bc\'b4\'d3\'b6\'e0\'c9\'d9\'d0\'d0\'bf\'aa\'ca\'bc
\f5 ,
\f0 \'b2\'e9\'d1\'af\'b6\'e0\'c9\'d9\'d0\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 LIMIT\cf9 \strokec9  
\f0 \'b4\'d3\'b6\'e0\'c9\'d9\'d0\'d0\'bf\'aa\'ca\'bc
\f5 ,
\f0 \'b2\'e9\'d1\'af\'b6\'e0\'c9\'d9\'d0\'d0
\f5 ;\
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'c3\'fb
\f5 1
\f0 \'b5\'c8\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b2\'a2\'c7\'d2\'d7\'d6\'b6\'ce\'c3\'fb
\f5 2
\f0 \'b4\'f3\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 (
\f0 \'c1\'bd\'b8\'f6\'cc\'f5\'bc\'fe\'b6\'bc\'d2\'aa\'c2\'fa\'d7\'e3
\f5 )\
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 1\cf9 \strokec9  = 
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5  \cf11 \strokec11 AND\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 2\cf9 \strokec9  >
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 1
\f0 \cf9 \strokec9 \'b5\'c8\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'bb\'f2\'d5\'df\'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 2
\f0 \cf9 \strokec9 \'d0\'a1\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 (
\f0 \'c1\'bd\'b8\'f6\'cc\'f5\'bc\'fe\'c2\'fa\'d7\'e3\'d2\'bb\'b8\'f6\'be\'cd\'bf\'c9\'d2\'d4
\f5 )\
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 1\cf9 \strokec9  = 
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5  \cf11 \strokec11 OR\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 2\cf9 \strokec9  <
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 \
\
//
\f0 \'b8\'fc\'d0\'c2\'b1\'ed\'d6\'d0\'d7\'d6\'b6\'ce\'b5\'c8\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b2\'a2\'c7\'d2\'d7\'d6\'b6\'ce\'b4\'f3\'d3\'da\'c4\'b3\'b8\'f6\'d6\'b5\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
\cf11 \strokec11 UPDATE\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 SET\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 1\cf9 \strokec9 = \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 2\cf9 \strokec9 =
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5  \cf11 \strokec11 AND\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 3\cf9 \strokec9  >
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 ;\
//
\f0 \'c9\'be\'b3\'fd
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'b5\'c8\'d3\'da
\f5 J_mailbox
\f0 \'bb\'f2\'d5\'df
\f5 AGE
\f0 \'d0\'a1\'d3\'da
\f5 18
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
\cf11 \strokec11 DELETE\cf9 \strokec9  \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 1\cf9 \strokec9 =
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5  \cf11 \strokec11 OR\cf9 \strokec9  
\f0 \'d7\'d6\'b6\'ce\'c3\'fb
\f5 \cf12 \strokec12 2\cf9 \strokec9  <
\f0 \'c4\'b3\'b8\'f6\'d6\'b5
\f5 ;\
\
\

\f0 \'ca\'be\'c0\'fd
\f5 :\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'d7\'d6\'b6\'ce\'b5\'c8\'d3\'da
\f5 J_mailbox
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  =\cf12 \strokec12 'J_mailbox'\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'d7\'d6\'b6\'ce\'b2\'bb\'b5\'c8\'d3\'da
\f5 J_mailbox
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  !=\cf12 \strokec12 'J_mailbox'\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'d7\'d6\'b6\'ce\'ca\'c7
\f5 J_mailbox
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  \cf11 \strokec11 IS\cf9 \strokec9  \cf12 \strokec12 'J_mailbox'\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'d7\'d6\'b6\'ce\'b2\'bb\'ca\'c7
\f5 J_mailbox
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  \cf11 \strokec11 IS\cf9 \strokec9  \cf11 \strokec11 NOT\cf9 \strokec9  \cf12 \strokec12 'J_mailbox'\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 AGE
\f0 \'d7\'d6\'b6\'ce\'b4\'f3\'d3\'da
\f5 20
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  AGE > \cf12 \strokec12 20\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 AGE
\f0 \'d7\'d6\'b6\'ce\'b4\'f3\'d3\'da
\f5 20
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  AGE < \cf12 \strokec12 20\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'d6\'d0
\f5 NAME
\f0 \'d2\'c0
\f5 J
\f0 \'d7\'d6\'c4\'b8\'bf\'aa\'cd\'b7\'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  \cf11 \strokec11 LIKE\cf9 \strokec9  \cf12 \strokec12 "J%"\cf9 \strokec9 \
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'d6\'d0
\f5 \cf11 \strokec11 NAME
\f0 \cf9 \strokec9 \'b0\'fc\'ba\'ac
\f5 _mail
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  \cf11 \strokec11 LIKE\cf9 \strokec9  \cf12 \strokec12 "%_mail%"\cf9 \strokec9 \
\
//
\f0 \'b2\'e9\'d1\'af\'b1\'ed\'d6\'d0\'bc\'c7\'c2\'bc\'b4\'d3
\f5 \cf12 \strokec12 0
\f0 \cf9 \strokec9 \'d0\'d0\'bf\'aa\'ca\'bc
\f5 ,
\f0 \'b2\'e9\'d1\'af
\f5 \cf12 \strokec12 10
\f0 \cf9 \strokec9 \'d0\'d0\'bc\'c7\'c2\'bc
\f5 \
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  
\f0 \'b1\'ed\'c3\'fb
\f5  \cf11 \strokec11 LIMIT\cf9 \strokec9  \cf12 \strokec12 0\cf9 \strokec9 ,\cf12 \strokec12 10\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'b5\'c8\'d3\'da
\f5 J_mailbox
\f0 \'b2\'a2\'c7\'d2
\f5 AGE
\f0 \'d7\'d6\'b6\'ce\'b4\'f3\'d3\'da
\f5 20
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 (
\f0 \'c1\'bd\'b8\'f6\'cc\'f5\'bc\'fe\'b6\'bc\'d2\'aa\'c2\'fa\'d7\'e3
\f5 )\
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  =\cf12 \strokec12 'J_mailbox'\cf9 \strokec9  \cf11 \strokec11 AND\cf9 \strokec9  AGE > \cf12 \strokec12 20\cf9 \strokec9 ;\
\
//
\f0 \'b2\'e9\'d1\'af
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'b5\'c8\'d3\'da
\f5 J_mailbox
\f0 \'bb\'f2\'d5\'df
\f5 AGE
\f0 \'d7\'d6\'b6\'ce\'d0\'a1\'d3\'da
\f5 20
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 (
\f0 \'c1\'bd\'b8\'f6\'cc\'f5\'bc\'fe\'c2\'fa\'d7\'e3\'d2\'bb\'b8\'f6\'be\'cd\'bf\'c9\'d2\'d4
\f5 )\
SELECT * \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9  =\cf12 \strokec12 'J_mailbox'\cf9 \strokec9  \cf11 \strokec11 OR\cf9 \strokec9  AGE < \cf12 \strokec12 20\cf9 \strokec9 ;\
\
//
\f0 \'b8\'fc\'d0\'c2
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'b5\'c8\'d3\'da
\f5 J_mailbox
\f0 \'b2\'a2\'c7\'d2
\f5 AGE
\f0 \'b4\'f3\'d3\'da
\f5 18
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
\cf11 \strokec11 UPDATE\cf9 \strokec9  t_test \cf11 \strokec11 SET\cf9 \strokec9  AGE=\cf12 \strokec12 20\cf9 \strokec9  \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9 =\cf12 \strokec12 'J_mailbox'\cf9 \strokec9  \cf11 \strokec11 AND\cf9 \strokec9  AGE >\cf12 \strokec12 18\cf9 \strokec9 ;\
\
//
\f0 \'c9\'be\'b3\'fd
\f5 t_test
\f0 \'b1\'ed\'d6\'d0
\f5 NAME
\f0 \'b5\'c8\'d3\'da
\f5 J_mailbox
\f0 \'bb\'f2\'d5\'df
\f5 AGE
\f0 \'d0\'a1\'d3\'da
\f5 18
\f0 \'b5\'c4\'cb\'f9\'d3\'d0\'bc\'c7\'c2\'bc
\f5 \
\cf11 \strokec11 DELETE\cf9 \strokec9  \cf11 \strokec11 FROM\cf9 \strokec9  t_test \cf11 \strokec11 WHERE\cf9 \strokec9  \cf11 \strokec11 NAME\cf9 \strokec9 =\cf12 \strokec12 'J_mailbox'\cf9 \strokec9  \cf11 \strokec11 OR\cf9 \strokec9  AGE <\cf12 \strokec12 18\cf9 \strokec9 ;
\fs26 \
\pard\pardeftab720\sl400\partightenfactor0
\cf9 \
}