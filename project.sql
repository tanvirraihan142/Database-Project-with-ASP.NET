/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : project
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : PROJECTDB

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2015-06-02 11:05:40
*/


-- ----------------------------
-- Table structure for "CAMPAIGN"
-- ----------------------------
DROP TABLE "CAMPAIGN";
CREATE TABLE "CAMPAIGN" (
"CAMPAIGN_ID" VARCHAR2(20 BYTE) NULL ,
"NAME" VARCHAR2(40 BYTE) NULL ,
"CHO_ID" VARCHAR2(20 BYTE) NULL ,
"VACCINE" VARCHAR2(20 BYTE) NULL ,
"CAMPAIGN_DATE" DATE NULL ,
"START_AGE" NUMBER NULL ,
"END_AGE" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CAMPAIGN
-- ----------------------------
INSERT INTO "CAMPAIGN" VALUES ('CMP0008', 'Hepatitis A', 'saurav92', 'Hepatitis A', TO_DATE('2015-12-24 21:30:09', 'YYYY-MM-DD HH24:MI:SS'), '6', '12');
INSERT INTO "CAMPAIGN" VALUES ('CMP0009', 'Hepatitis B', 'saurav92', 'Hepatitis B', TO_DATE('2015-08-19 21:31:10', 'YYYY-MM-DD HH24:MI:SS'), '0', '12');
INSERT INTO "CAMPAIGN" VALUES ('CMP0004', 'Pentavelent Campaign', 'saurav92', 'Pentavelent', TO_DATE('2015-07-04 21:21:39', 'YYYY-MM-DD HH24:MI:SS'), '24', '36');
INSERT INTO "CAMPAIGN" VALUES ('CMP0001', 'Vitamin A Campaign', 'saurav92', 'Vitamin A', TO_DATE('2015-12-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '24', '60');
INSERT INTO "CAMPAIGN" VALUES ('CMP0003', 'BCG for children', 'saurav92', 'BCG', TO_DATE('2015-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '24', '48');
INSERT INTO "CAMPAIGN" VALUES ('CMP0005', 'BCG2 Campaign', 'saurav92', 'BCG2', TO_DATE('2015-07-02 21:22:53', 'YYYY-MM-DD HH24:MI:SS'), '12', '36');
INSERT INTO "CAMPAIGN" VALUES ('CMP0006', 'Rubella Campaign', 'saurav92', 'Rubella', TO_DATE('2015-07-15 21:24:13', 'YYYY-MM-DD HH24:MI:SS'), '24', '48');
INSERT INTO "CAMPAIGN" VALUES ('CMP0007', 'Get Vitamin A', 'saurav92', 'Vitamin A', TO_DATE('2015-07-11 21:25:27', 'YYYY-MM-DD HH24:MI:SS'), '30', '48');
INSERT INTO "CAMPAIGN" VALUES ('CMP0002', 'Polio For all', 'saurav92', 'Polio', TO_DATE('2015-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '12', '24');

-- ----------------------------
-- Table structure for "CENTER"
-- ----------------------------
DROP TABLE "CENTER";
CREATE TABLE "CENTER" (
"CENTER_ID" VARCHAR2(20 BYTE) NULL ,
"NAME" VARCHAR2(40 BYTE) NULL ,
"ADDRESS" VARCHAR2(60 BYTE) NULL ,
"MOBILE_NO" VARCHAR2(60 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CENTER
-- ----------------------------
INSERT INTO "CENTER" VALUES ('CNT001', 'Maternity Hospital', 'Azimpur, Dhaka', '01711234567');
INSERT INTO "CENTER" VALUES ('CNT002', 'Upozilla Health Complex', 'Savar, Dhaka', '01811234567');
INSERT INTO "CENTER" VALUES ('CNT003', 'Child and Infant Care', 'Mohammadpur, Dhaka', '01990008899');
INSERT INTO "CENTER" VALUES ('CNT005', 'Medical Services Centre at icddr', 'Mohakali, Dhaka', '01677777777');
INSERT INTO "CENTER" VALUES ('CNT006', 'Family Health Practice at the American I', 'Baridhara, Dhaka', '01999999999');
INSERT INTO "CENTER" VALUES ('CNT007', 'Scecialized Child Care', 'City Complex, Savar', '01888888888');
INSERT INTO "CENTER" VALUES ('CNT008', 'Infant Care', 'Bonani, Dhaka', '01919191919');
INSERT INTO "CENTER" VALUES ('CNT009', 'We Care', 'Dhanmundi, Dhaka', '01990099009');
INSERT INTO "CENTER" VALUES ('CNT010', 'Shikder Medical', 'Dhanmundi, Dhaka', '01991199119');
INSERT INTO "CENTER" VALUES ('CNT004', 'Child Care', 'Motijheel, Dhaka', '01777777777');
INSERT INTO "CENTER" VALUES ('CEN011', 'Gazipur Hospital', 'Gazipur', '01879592614');

-- ----------------------------
-- Table structure for "CENTER_CAMPAIGN"
-- ----------------------------
DROP TABLE "CENTER_CAMPAIGN";
CREATE TABLE "CENTER_CAMPAIGN" (
"CENTER_ID" VARCHAR2(20 BYTE) NULL ,
"CAMPAIGN_ID" VARCHAR2(20 BYTE) NULL ,
"HO_ID" VARCHAR2(20 BYTE) NULL ,
"ID" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CENTER_CAMPAIGN
-- ----------------------------
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT004', 'CMP0008', null, '0008004');
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT003', 'CMP0008', null, '0008003');
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT008', 'CMP0003', null, '0003008');
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT006', 'CMP0003', null, '0003006');
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT005', 'CMP0003', null, '0003005');
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT009', 'CMP0009', 'akash18', '0009009');
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT002', 'CMP0009', 'farabi22', '0009002');
INSERT INTO "CENTER_CAMPAIGN" VALUES ('CNT010', 'CMP0009', null, '0009010');

-- ----------------------------
-- Table structure for "HA_CENTER_CAMPAIGN"
-- ----------------------------
DROP TABLE "HA_CENTER_CAMPAIGN";
CREATE TABLE "HA_CENTER_CAMPAIGN" (
"HA_ID" VARCHAR2(20 BYTE) NULL ,
"CC_ID" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of HA_CENTER_CAMPAIGN
-- ----------------------------
INSERT INTO "HA_CENTER_CAMPAIGN" VALUES ('dipu007', '0009009');
INSERT INTO "HA_CENTER_CAMPAIGN" VALUES ('saiful20', '0009009');
INSERT INTO "HA_CENTER_CAMPAIGN" VALUES ('amlan54', '0009009');
INSERT INTO "HA_CENTER_CAMPAIGN" VALUES ('dhiman23', '0009009');

-- ----------------------------
-- Table structure for "RECIPIENT"
-- ----------------------------
DROP TABLE "RECIPIENT";
CREATE TABLE "RECIPIENT" (
"ID" VARCHAR2(20 BYTE) NULL ,
"PASSWORD" VARCHAR2(20 BYTE) NULL ,
"NAME" VARCHAR2(40 BYTE) NULL ,
"FATHERS_NAME" VARCHAR2(20 BYTE) NULL ,
"MOTHERS_NAME" VARCHAR2(20 BYTE) NULL ,
"GENDER" VARCHAR2(10 BYTE) NULL ,
"DATE_OF_BIRTH" DATE NULL ,
"MOBILE_NO" VARCHAR2(15 BYTE) NULL ,
"ADDRESS" VARCHAR2(60 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of RECIPIENT
-- ----------------------------
INSERT INTO "RECIPIENT" VALUES ('REP0002', '123', 'Dipon Saha', 'Mr.Saha', 'Mrs Saha', 'Male', TO_DATE('2014-11-27 21:45:35', 'YYYY-MM-DD HH24:MI:SS'), '01922039390', 'Aula 358,BUET');
INSERT INTO "RECIPIENT" VALUES ('REP0003', '123', 'Neamul Kabir', 'Mr.Kabir', 'Mrs.Kabir', 'Male', TO_DATE('2012-07-25 21:46:50', 'YYYY-MM-DD HH24:MI:SS'), '01873637377', 'Khilgaon, Buet');
INSERT INTO "RECIPIENT" VALUES ('REP0004', '123', 'Sinthia Haque', 'Mr. Anam Haque', 'Mrs. Ana Haque', 'Female', TO_DATE('2013-06-26 21:48:45', 'YYYY-MM-DD HH24:MI:SS'), '01535555666', 'Dhanmundi, Dhaka');
INSERT INTO "RECIPIENT" VALUES ('REP0005', '123', 'Onix Haque', 'Mr. Haque', 'Mrs. Haque', 'Male', TO_DATE('2014-10-28 21:50:35', 'YYYY-MM-DD HH24:MI:SS'), '10929298292', 'Rampura, Dhaka');
INSERT INTO "RECIPIENT" VALUES ('REP0006', '123', 'Rupom Raihan', 'Mr. Raihan', 'Mrs. Raihan', 'Male', TO_DATE('2012-03-30 21:51:52', 'YYYY-MM-DD HH24:MI:SS'), '09919191919', 'Bonoshree, Dhaka');
INSERT INTO "RECIPIENT" VALUES ('REP0007', '123', 'Laila Kibria', 'Mr. Kibria', 'Mrs. Kibria', 'Female', TO_DATE('2015-01-13 21:53:07', 'YYYY-MM-DD HH24:MI:SS'), '01178899908', 'Uttara, Dhaka');
INSERT INTO "RECIPIENT" VALUES ('REP0008', '123', 'Beauty Begum', 'Mr. Anan', 'Mrs. Anan', 'Female', TO_DATE('2015-10-14 21:54:42', 'YYYY-MM-DD HH24:MI:SS'), '01919191999', 'Azimpur, Dhaka');
INSERT INTO "RECIPIENT" VALUES ('REP0009', '123', 'Fahim Rahman', 'Mr.Rahman', 'Mrs. Rahman', 'Male', TO_DATE('2013-06-04 21:58:12', 'YYYY-MM-DD HH24:MI:SS'), '01199119919', 'Tajuddin Road, Dhaka');
INSERT INTO "RECIPIENT" VALUES ('REP0010', '123', 'Piking Sikder', 'Mr. Sikder', 'Mrs Sikder', 'Male', TO_DATE('2015-01-14 21:59:09', 'YYYY-MM-DD HH24:MI:SS'), '01199733434', 'Tejgaon, Dhaka');
INSERT INTO "RECIPIENT" VALUES ('REP0011', '123', 'Indro Nondi', 'Mr. Nondi', 'Mrs. Nondi', 'Male', TO_DATE('2013-12-26 21:59:57', 'YYYY-MM-DD HH24:MI:SS'), '01111199993', 'Taltola, Khilgaon');
INSERT INTO "RECIPIENT" VALUES ('REP0001', '123', 'Mostofa Khalid Raihan', 'Mr. Khalid', 'Mrs. Khalid', 'Male', TO_DATE('2013-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '01715256364', 'Rashid Hall,BUET');

-- ----------------------------
-- Table structure for "USERS"
-- ----------------------------
DROP TABLE "USERS";
CREATE TABLE "USERS" (
"ID" VARCHAR2(20 BYTE) NULL ,
"PASSWORD" VARCHAR2(20 BYTE) NULL ,
"NAME" VARCHAR2(40 BYTE) NULL ,
"GENDER" VARCHAR2(10 BYTE) NULL ,
"DATE_OF_BIRTH" DATE NULL ,
"DESIGNATION" VARCHAR2(30 BYTE) NULL ,
"MOBILE_NO" VARCHAR2(15 BYTE) NULL ,
"EMAIL" VARCHAR2(30 BYTE) NULL ,
"ADDRESS" VARCHAR2(60 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO "USERS" VALUES ('saurav92', '1234', 'Saurav Dhar', 'Male', TO_DATE('1992-11-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Chief Health Officer', '01715256364', 'saurav92@yahoo.com', 'Ahsanullah Hall,BUET');
INSERT INTO "USERS" VALUES ('dipu007', 'dipu007', 'Dipu Roy', 'Male', TO_DATE('1991-02-28 22:01:22', 'YYYY-MM-DD HH24:MI:SS'), 'Health Asst.', '01919191919', 'odipu@gmail.com', 'Ahsanullah Hall,BUET');
INSERT INTO "USERS" VALUES ('neam11', 'neam11', 'Nemul Kabir', 'Male', TO_DATE('1991-03-28 22:03:22', 'YYYY-MM-DD HH24:MI:SS'), 'Health Officer', '01919191777', 'neamul@gmail.com', 'Ahsanullah Hall,BUET');
INSERT INTO "USERS" VALUES ('saiful20', 'saiful20', 'Saiful Islam', 'Male', TO_DATE('1991-11-28 22:04:52', 'YYYY-MM-DD HH24:MI:SS'), 'Health Asst.', '01118888888', 'saiful@hotmail.com', 'Dhaka');
INSERT INTO "USERS" VALUES ('amlan54', 'amlan54', 'Amlan Saha', 'Male', TO_DATE('1993-05-20 22:06:21', 'YYYY-MM-DD HH24:MI:SS'), 'Health Asst.', '01111999999', 'amlan@gg.com', 'Ahsanullah Hall,BUET');
INSERT INTO "USERS" VALUES ('ratul420', 'ratul420', 'Ratul Saklain', 'Male', TO_DATE('1991-10-29 22:07:29', 'YYYY-MM-DD HH24:MI:SS'), 'Health Asst.', '01818181888', 'ratul@fhfh.com', 'Ahsanullah Hall,BUET');
INSERT INTO "USERS" VALUES ('bivas999', 'bivas999', 'Bivas Chakma', 'Male', TO_DATE('1989-12-01 22:14:43', 'YYYY-MM-DD HH24:MI:SS'), 'Health Officer', '01919199199', 'bivas99@ymail.com', 'Gendaria , Dhaka');
INSERT INTO "USERS" VALUES ('debu777', 'debu777', 'Debasish Roy', 'Male', TO_DATE('1989-11-30 22:17:13', 'YYYY-MM-DD HH24:MI:SS'), 'Health Officer', '01118818188', 'debu77@gmail.com', 'Motijheel, Dhaka');
INSERT INTO "USERS" VALUES ('farabi22', 'farabi22', 'Farabi ', 'Male', TO_DATE('1992-12-24 22:18:41', 'YYYY-MM-DD HH24:MI:SS'), 'Health Officer', '01919191988', 'farabi@yahoo.com', 'Khilgaon');
INSERT INTO "USERS" VALUES ('moloy16', 'moloy16', 'Moloy Debnath', 'Male', TO_DATE('1992-12-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Health Asst.', '01865555252', 'moloy@gmail.com', 'Swamibag Dhaka');
INSERT INTO "USERS" VALUES ('dhiman23', 'dhiman23', 'Dhiman Goswami', 'Male', TO_DATE('1992-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Health Asst.', '01717525591', 'dhiman23@yahoo.com', 'Motijheel,Dhaka');
INSERT INTO "USERS" VALUES ('akash18', 'akash18', 'S. M. Akash', 'Male', TO_DATE('1992-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Health Officer', '01744703644', 'akash18@yahoo.com', 'Khilgaon,Dhaka');
INSERT INTO "USERS" VALUES ('dipon25', 'dipon25', 'Dipon Saha', 'Male', TO_DATE('1992-11-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Chief Health Officer', '01717525591', 'dipon25@yahoo.com', 'Ahsanullah Hall,BUET');

-- ----------------------------
-- Table structure for "VACC_RECORD"
-- ----------------------------
DROP TABLE "VACC_RECORD";
CREATE TABLE "VACC_RECORD" (
"RECIPIENT_ID" VARCHAR2(20 BYTE) NULL ,
"HA_ID" VARCHAR2(20 BYTE) NULL ,
"VACC_DATE" VARCHAR2(20 BYTE) NULL ,
"CENTER" VARCHAR2(40 BYTE) NULL ,
"VACCINE" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of VACC_RECORD
-- ----------------------------
INSERT INTO "VACC_RECORD" VALUES ('REP0002', 'dhiman23', '09-FEB-15', 'Apollo Hospital', 'BCG');
INSERT INTO "VACC_RECORD" VALUES ('REP0002', null, '12-FEB-15', null, 'Polio');
INSERT INTO "VACC_RECORD" VALUES ('REP0002', null, '11-FEB-15', null, 'Vitamin A');

-- ----------------------------
-- Function structure for "DATECHECK"
-- ----------------------------
CREATE OR REPLACE function "DATECHECK"(idate in varchar2) return varchar2 is
jdate date;
begin
jdate := to_date(idate , 'YYYY-MM-DD');
return 'yes';
exception
when others then
return 'no';
end;
/

-- ----------------------------
-- Function structure for "GENERATEID"
-- ----------------------------
CREATE OR REPLACE function "GENERATEID"(centerid in varchar2,campaignid in varchar2) return varchar2 is
cid varchar2(20);
cmpid varchar2(20);
result varchar2(20);
begin
	cid := substr(centerid,4,6);
	cmpid := substr(campaignid,4,7);
	result := concat(cmpid,cid);
	return result;

exception
when others then
return null;
end;
/

-- ----------------------------
-- Function structure for "GETCAMPAIGNNAME"
-- ----------------------------
CREATE OR REPLACE function "GETCAMPAIGNNAME"(cid in varchar2) return varchar2 is
cname varchar2(40);
begin
select name into cname from campaign where campaign_id = cid;
return cname;
exception
when others then 
return null;
end;
/

-- ----------------------------
-- Function structure for "GETCCID"
-- ----------------------------
CREATE OR REPLACE function "GETCCID"(center in varchar2,campaign in varchar2) return varchar2 is
cenid varchar2(20);
camid varchar2(20);
result varchar2(20);
begin

select A.CAMPAIGN_ID into camid from campaign A where A.name = campaign;
select B.CENTER_ID into cenid from CENTER B  where B.NAME = center;

select C.ID into result from CENTER_CAMPAIGN C
where C.CAMPAIGN_ID = camid and C.CENTER_ID = cenid;
return result;


exception
when others then
return null;
end;
/

-- ----------------------------
-- Function structure for "GETCENTERNAME"
-- ----------------------------
CREATE OR REPLACE function "GETCENTERNAME"(cid in varchar2) return varchar2 is
cname varchar2(40);
begin
select name into cname from center where center_id = cid;
return cname;
exception
when others then 
return null;
end;
/
