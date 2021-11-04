USE tga;

-- Users
INSERT IGNORE INTO auth_user (password, is_superuser, username, first_name, last_name, email, is_staff,is_active, date_joined) 
VALUES ('pass', 0, 'user1', 'fname', 'lname', 'mail@mail.mail', 0, 0, NOW());

INSERT IGNORE INTO auth_user (password, is_superuser, username, first_name, last_name, email, is_staff,is_active, date_joined) 
VALUES ('pass', 0, 'user2', 'ffname', 'llname', 'somemail@mailer.mail', 0, 0, NOW());

-- Skills
INSERT IGNORE INTO api_skill (name, changed_date_time, create_date_time)
VALUES ('Repairing', NOW(), NOW());

INSERT IGNORE INTO api_skill (name, changed_date_time, create_date_time)
VALUES ('Oil maintnance', NOW(), NOW());

INSERT IGNORE INTO api_skill (name, changed_date_time, create_date_time)
VALUES ('Oil changing', NOW(), NOW());

-- User skills
INSERT IGNORE INTO api_userskill (changed_date_time, create_date_time, skill_id, user_id)
VALUES (NOW(), NOW(), 1, 1);

INSERT IGNORE INTO api_userskill (changed_date_time, create_date_time, skill_id, user_id)
VALUES (NOW(), NOW(), 1, 2);

INSERT IGNORE INTO api_userskill (changed_date_time, create_date_time, skill_id, user_id)
VALUES (NOW(), NOW(), 2, 2);

INSERT IGNORE INTO api_userskill (changed_date_time, create_date_time, skill_id, user_id)
VALUES (NOW(), NOW(), 3, 2);

-- Stages
INSERT IGNORE INTO api_servicestage (name, `index`, changed_date_time, create_date_time)
VALUES ('Started', 1, NOW(), NOW());

-- Trades
INSERT IGNORE INTO api_trade (name, changed_date_time, create_date_time)
VALUES ('Trade1', NOW(), NOW());

-- Work types
INSERT IGNORE INTO api_worktype (name, code, description, changed_date_time, create_date_time, trade_id)
VALUES ('Type1', 'wt01', 'description', NOW(), NOW(), 1);

-- Locations
INSERT IGNORE INTO api_location (name, gps, changed_date_time, create_date_time)
VALUES ('Location1', 'GPS', NOW(), NOW());

-- Customers
INSERT IGNORE INTO api_customer (number, changed_date_time, create_date_time)
VALUES ('CustomerNumber1', NOW(), NOW());

-- Objects
INSERT IGNORE INTO api_object (number, description, description2, quantity, quantity_unit, changed_date_time, create_date_time, customer_id, location_id)
VALUES ('Object1', 'description', '', 1, 1, NOW(), NOW(), 1, 1);

-- Jobs
INSERT IGNORE INTO api_job (number, changed_date_time, create_date_time, object_id, work_type_id)
VALUES ('jobno1', NOW(), NOW(), 1, 1);

-- Services
INSERT IGNORE INTO api_service (number, changed_date_time, create_date_time, job_id, stage_id)
VALUES ('serviceno1', NOW(), NOW(), 1, 1);

INSERT IGNORE INTO api_service (number, changed_date_time, create_date_time, job_id, stage_id)
VALUES ('serviceno2', NOW(), NOW(), 1, 1);

-- Technicians
INSERT IGNORE INTO api_technician (changed_date_time, create_date_time, user_id)
VALUES (NOW(), NOW(), 1);

INSERT IGNORE INTO api_technician (changed_date_time, create_date_time, user_id)
VALUES (NOW(), NOW(), 2);
