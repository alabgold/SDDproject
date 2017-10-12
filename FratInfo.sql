CREATE DATABASE fratinfo;

USE fratinfo;

CREATE TABLE house_info (
	name varchar(50) NOT NULL PRIMARY KEY,
	description varchar(1000) NOT NULL,
	chapter varchar(50) NOT NULL,
	members int(4),
	cover_image varchar(150),
	profile_image varchar(150), /*Should be not null*/
	calendar_image varchar(150), /*Should be not null*/
	preview_image varchar(150),
	address varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO house_info(name, description, chapter, members, cover_image, profile_image, calendar_image, preview_image, address)
	VALUES
	('Acacia', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Alpha Chi Rho', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Alpha Epsilon Pi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Alpha Phi Alpha', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Alpha Phi Omega', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Alpha Sigma Phi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Chi Phi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Delta Kappa Epsilon', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Delta Phi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Delta Tau Delta', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Lambda Chi Alpha', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Phi Gamma Delta', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Phi Iota Alpha', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Phi Kappa Theta', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Phi Mu Delta', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Phi Sigma Kappa', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Pi Delta Psi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Pi Kappa Alpha', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Pi Lambda Phi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Psi Upsilon', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Rensselaer Society of Engineers', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Sigma Alpha Epsilon', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Sigma Chi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Sigma Phi Epsilon', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Tau Epsilon Phi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Tau Kappa Epsilon', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Theta Chi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny'),
	('Zeta Psi', 'Placeholder Description', 'Chi Chi', NULL, NULL, NULL, NULL, NULL, '123 drive troy ny');


CREATE TABLE events (
	house varchar(50) NOT NULL,
	event_name varchar(50) NOT NULL,
	start_time varchar(10) NOT NULL,
	end_time varchar(10) NOT NULL,
	event_date varchar(10) NOT NULL,
	location varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO events(house, event_name, start_time, end_time, event_date, location)
	VALUES
	('Acacia', 'Classes Begin', '08:00', '20:00', '08/31/2017','Campus'),
	('Acacia', 'Meet The Greeks', '16:00', '18:00', '09/01/2017', 'Behind Commons'),
	('Acacia', 'Cookout', '18:00', '20:00', '09/02/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Paintball', '14:00', '16:00', '09/03/2017', NULL),
	('Acacia', 'Tie-dye', '14:00', '16:00', '09/04/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Karaoke Tuesday', '19:00', '21:00', '09/05/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Puppies and Pizza', '18:00', '20:00', '09/06/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Smores & Cocoa', '20:00', '22:00', '09/07/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Friday Fryday', '19:00', '21:00', '09/08/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Laser Tag', '19:00', '22:00', '09/09/2017', NULL),
	('Acacia', 'TASP Service Project', '10:00', '14:00', '09/10/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Smash Bros. Tournament', '20:00', '22:00', '09/11/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Bowling', '19:00', '21:00', '09/12/2017', NULL),
	('Acacia', 'Movie Night', '21:00', '22:30', '09/14/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Leave for Maine Trip', '10:00', '14:00', '09/15/2017', NULL),
	('Acacia', 'Come Back from Maine Trip', '10:00', '14:00', '09/17/2017', NULL),
	('Acacia', 'Bid Delivery Day', '20:00', '22:00', '09/18/2017', NULL),
	('Acacia', 'Bid Dinner', '18:00', '20:00', '09/20/2017', '145 Sunset Terrace Troy NY 12180'),
	('Acacia', 'Bid Signing Day', '12:00', '17:00', '09/22/2017', 'Student Union'),
	('Alpha Epsilon Pi', 'Meet The Greeks', '16:00', '18:00', '09/01/2017', 'Behind Commons'),
	('Alpha Epsilon Pi', 'Saratoga Race Track', '11:00', '16:00', '09/02/2017', 'Saratoga Race Track'),
	('Alpha Epsilon Pi', 'Grafton Cookout', '12:00', '15:00', '09/03/2017', 'Grafton Lake'),
	('Alpha Epsilon Pi', 'Cookout and Sports', '17:00', '19:00', '09/05/2017', '284 Pawling Avenue Troy NY 12180'),
	('Alpha Epsilon Pi', 'Skyzone', '19:00', '21:30', '09/08/2017', 'Skyzone'),
	('Alpha Epsilon Pi', 'Waterfall Hike', '10:00', '15:00', '09/09/2017', NULL),
	('Alpha Epsilon Pi', 'Cookout and Sports', '17:00', '19:00', '09/12/2017', '284 Pawling Avenue Troy NY 12180'),
	('Alpha Epsilon Pi', 'Smoker Poker', '20:30', '22:30', '09/15/2017', '284 Pawling Avenue Troy NY 12180'),
	('Alpha Epsilon Pi', 'Island Campout', '11:00', '12:30', '09/16/2017', 'Lake George'),
	('Alpha Epsilon Pi', 'Island Campout', '11:00', '12:30', '09/17/2017', 'Lake George'),
	('Alpha Epsilon Pi', 'Bid Dinner', '18:00', '22:00', '09/19/2017', '284 Pawling Avenue Troy NY 12180'),
	('Alpha Epsilon Pi', 'Bid Commitment', '12:00', '17:00', '09/22/2017', 'Student Union');


