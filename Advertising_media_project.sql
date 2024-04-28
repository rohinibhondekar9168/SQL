create database ad_media;
use ad_media;

-- drop database ad_media;

CREATE SCHEMA IF NOT EXISTS advertising_data;
USE advertising_data;

-- DROP SCHEMA IF EXISTS advertising_data;

-- drop table Advertisers;
-- drop table Campaigns;
-- drop table MediaOutlets;
-- drop table Advertisements;

-- Create the Advertisers table
CREATE TABLE Advertisers (
    AdvertiserID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    Industry VARCHAR(255),
    Budget DECIMAL(10, 2)
);

-- Create the Campaigns table
CREATE TABLE Campaigns (
    CampaignID INT PRIMARY KEY,
    AdvertiserID INT,
    Name VARCHAR(255),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (AdvertiserID) REFERENCES Advertisers(AdvertiserID)
);


-- Create the MediaOutlets table
CREATE TABLE MediaOutlets (
    OutletID INT PRIMARY KEY,
    Name VARCHAR(255),
    Type VARCHAR(100),
    Website VARCHAR(255),
    ContactInfo VARCHAR(255)
);

-- Create the Advertisements table
CREATE TABLE Advertisements (
    AdID INT PRIMARY KEY,
    CampaignID INT,
    OutletID INT,
    Type VARCHAR(100),
    Content TEXT,
    Placement VARCHAR(100),
    Cost DECIMAL(10, 2),
    FOREIGN KEY (CampaignID) REFERENCES Campaigns(CampaignID),
    FOREIGN KEY (OutletID) REFERENCES MediaOutlets(OutletID)
);


-- Create the Impressions table
CREATE TABLE Impressions (
    ImpressionID INT PRIMARY KEY,
    AdID INT,
    Date DATE,
    Views INT,
    FOREIGN KEY (AdID) REFERENCES Advertisements(AdID)
);

-- Create the Clicks table
CREATE TABLE Clicks (
    ClickID INT PRIMARY KEY,
    ImpressionID INT,
    ClickTime DATETIME,
    IPAddress VARCHAR(255),
    FOREIGN KEY (ImpressionID) REFERENCES Impressions(ImpressionID)
);

-- Create the Views table
CREATE TABLE Views (
    ViewID INT PRIMARY KEY,
    ImpressionID INT,
    ViewTime DATETIME,
    IPAddress VARCHAR(255),
    FOREIGN KEY (ImpressionID) REFERENCES Impressions(ImpressionID)
);

show tables from advertising_data;

-- Insert data into table 
-- Insert queries for Advertisers table
INSERT INTO Advertisers (AdvertiserID, Name, ContactInfo, Industry, Budget) VALUES
(1001, 'Omkar Battaries', 'omkar@example.com', 'Retail', 10000.00),
(1002, 'Dream11', 'dream11@example.com', 'Technology', 15000.00),
(1003, 'Green Gardens', 'gg@example.com', 'Home & Garden', 8000.00),
(1004, 'Sunset Resorts', 'sunset@example.com', 'Hospitality', 20000.00),
(1005, 'Tech Innovations', 'tech@example.com', 'Technology', 12000.00),
(1006, 'Fashion Trends', 'fashion@example.com', 'Fashion', 9000.00),
(1007, 'Global Logistics', 'logistics@example.com', 'Transportation', 18000.00),
(1008, 'Healthy Living', 'health@example.com', 'Health & Wellness', 7000.00),
(1009, 'Bright Ideas', 'ideas@example.com', 'Education', 11000.00),
(1010, 'Creative Minds', 'creative@example.com', 'Arts & Entertainment', 13000.00),
(1011, 'Innovative Solutions', 'solutions@example.com', 'Technology', 14000.00),
(1012, 'Luxury Living', 'luxury@example.com', 'Real Estate', 25000.00),
(1013, 'Digital Dreams', 'digitaldreams@example.com', 'Technology', 11500.00),
(1014, 'Healthy Habits', 'habits@example.com', 'Health & Wellness', 7500.00),
(1015, 'Artisan Creations', 'artisan@example.com', 'Arts & Crafts', 8500.00),
(1016, 'Eco-Friendly Solutions', 'eco@example.com', 'Environmental', 16000.00),
(1017, 'Fashion Forward', 'forward@example.com', 'Fashion', 9200.00),
(1018, 'Home Decor', 'homedecor@example.com', 'Home & Garden', 8000.00),
(1019, 'Travel Adventures', 'adventures@example.com', 'Travel & Tourism', 17000.00),
(1020, 'Financial Freedom', 'freedom@example.com', 'Finance', 19000.00),
(1021, 'Pet Paradise', 'petparadise@example.com', 'Pets & Animals', 8500.00),
(1022, 'Innovative Tech Solutions', 'innovative@example.com', 'Technology', 12500.00),
(1023, 'Wellness Works', 'wellnessworks@example.com', 'Health & Wellness', 7800.00),
(1024, 'Artistic Expressions', 'expressions@example.com', 'Arts & Crafts', 8700.00),
(1025, 'Sustainable Living', 'sustainable@example.com', 'Environmental', 15500.00),
(1026, 'Fashion Finds', 'fashionfinds@example.com', 'Fashion', 9400.00),
(1027, 'Home Improvement', 'homeimprovement@example.com', 'Home & Garden', 8200.00),
(1028, 'Travel Trends', 'traveltrends@example.com', 'Travel & Tourism', 17500.00),
(1029, 'Financial Planning', 'planning@example.com', 'Finance', 19500.00),
(1030, 'Pet Care', 'petcare@example.com', 'Pets & Animals', 8700.00),
(1031, 'Tech Innovators', 'innovators@example.com', 'Technology', 12800.00),
(1032, 'Fitness Fusion', 'fitnessfusion@example.com', 'Health & Wellness', 7600.00),
(1033, 'Creative Kids', 'creativekids@example.com', 'Children', 9000.00),
(1034, 'Artisan Crafts', 'artisancrafts@example.com', 'Arts & Crafts', 8800.00),
(1035, 'Green Energy', 'greenenergy@example.com', 'Environmental', 16500.00),
(1036, 'Healthy Habits', 'healthyhabits@example.com', 'Health & Wellness', 7700.00),
(1037, 'Tech Solutions', 'techsolutions@example.com', 'Technology', 12300.00),
(1038, 'Fashion Forward', 'fashionforward@example.com', 'Fashion', 9300.00),
(1039, 'Home Decor', 'homedecor@example.com', 'Home & Garden', 8050.00),
(1040, 'Travel Essentials', 'essentials@example.com', 'Travel & Tourism', 16800.00),
(1041, 'Financial Solutions', 'financialsolutions@example.com', 'Finance', 19200.00),
(1042, 'Pet Lovers', 'petlovers@example.com', 'Pets & Animals', 8800.00),
(1043, 'Tech Experts', 'techexperts@example.com', 'Technology', 12700.00),
(1044, 'Fitness Fanatics', 'fitnessfanatics@example.com', 'Health & Wellness', 7900.00),
(1045, 'Foodie Finds', 'foodiefinds@example.com', 'Food & Beverage', 14800.00),
(1046, 'Creative Concepts', 'creativeconcepts@example.com', 'Arts & Crafts', 9100.00),
(1047, 'Green Living', 'greenliving@example.com', 'Environmental', 16300.00),
(1048, 'Healthy Lifestyle', 'healthylifestyle@example.com', 'Health & Wellness', 8000.00),
(1049, 'Tech Gurus', 'techgurus@example.com', 'Technology', 13000.00),
(1050, 'Fashionistas', 'fashionistas@example.com', 'Fashion', 9500.00),
(1051, 'Home Essentials', 'homeessentials@example.com', 'Home & Garden', 8100.00),
(1052, 'Travel Enthusiasts', 'travelenthusiasts@example.com', 'Travel & Tourism', 17400.00),
(1053, 'Financial Advisors', 'financialadvisors@example.com', 'Finance', 19800.00),
(1054, 'Pet Care Essentials', 'petcareessentials@example.com', 'Pets & Animals', 8900.00),
(1055, 'Tech Wizards', 'techwizards@example.com', 'Technology', 13200.00),
(1056, 'Fitness Freaks', 'fitnessfreaks@example.com', 'Health & Wellness', 8000.00),
(1057, 'Foodie Delights', 'foodiedelights@example.com', 'Food & Beverage', 15100.00),
(1058, 'Creative Crafters', 'creativecrafters@example.com', 'Arts & Crafts', 9200.00),
(1059, 'Green Solutions', 'greensolutions@example.com', 'Environmental', 16700.00),
(1060, 'Healthy Living Hub', 'healthylivinghub@example.com', 'Health & Wellness', 8100.00);


-- Insert queries for Campaigns table
INSERT INTO Campaigns (CampaignID, AdvertiserID, Name, StartDate, EndDate, Budget, Status) VALUES
(11001, 1001, 'Summer Sale', '2024-06-01', '2024-08-31', 5000.00, 'Active'),
(11002, 1002, 'Back to School Promotion', '2024-08-01', '2024-09-30', 7000.00, 'Active'),
(11003, 1003, 'Spring Cleaning Event', '2024-04-01', '2024-05-31', 4000.00, 'Active'),
(11004, 1004, 'Winter Wonderland Campaign', '2024-11-01', '2024-12-31', 6000.00, 'Active'),
(11005, 1005, 'Holiday Gift Guide', '2024-11-15', '2024-12-25', 8000.00, 'Active'),
(11006, 1006, 'Tech Expo', '2024-09-01', '2024-09-05', 3000.00, 'Active'),
(11007, 1007, 'Grand Opening Celebration', '2024-07-01', '2024-07-31', 2000.00, 'Active'),
(11008, 1008, 'New Year New You', '2025-01-01', '2025-01-31', 3500.00, 'Active'),
(11009, 1009, 'Fall Fashion Week', '2024-10-01', '2024-10-07', 2500.00, 'Active'),
(11010, 1010, 'Summer Travel Deals', '2024-06-15', '2024-08-15', 5500.00, 'Active'),
(11011, 1001, 'Spring Clearance Sale', '2024-03-01', '2024-04-15', 4500.00, 'Inactive'),
(11012, 1002, 'Tech Innovation Conference', '2024-09-10', '2024-09-12', 4000.00, 'Active'),
(11013, 1003, 'Summer Outdoor Adventure', '2024-07-15', '2024-08-30', 6000.00, 'Active'),
(11014, 1004, 'Holiday Travel Specials', '2024-12-10', '2025-01-05', 7500.00, 'Active'),
(11015, 1005, 'Backyard BBQ Bash', '2024-05-20', '2024-06-30', 3000.00, 'Active'),
(11016, 1006, 'Fitness Challenge', '2024-08-15', '2024-09-30', 5000.00, 'Active'),
(11017, 1007, 'Tech Gear Giveaway', '2024-11-05', '2024-12-15', 6500.00, 'Active'),
(11018, 1008, 'New Year New Home', '2025-01-15', '2025-02-28', 7000.00, 'Active'),
(11019, 1009, 'Winter Wellness Workshop', '2024-12-01', '2024-12-31', 3500.00, 'Active'),
(11020, 1010, 'Spring Break Travel Deals', '2024-03-15', '2024-04-15', 4800.00, 'Inactive'),
(11021, 1001, 'Fall Fashion Preview', '2024-09-01', '2024-09-30', 4200.00, 'Active'),
(11022, 1002, 'Holiday Tech Gifts Guide', '2024-11-20', '2024-12-25', 6800.00, 'Active'),
(11023, 1003, 'Spring Cleaning Workshop', '2024-04-15', '2024-05-15', 3200.00, 'Active'),
(11024, 1004, 'Winter Wellness Retreat', '2024-12-15', '2024-12-31', 5000.00, 'Active'),
(11025, 1005, 'Holiday Home Decor Sale', '2024-11-01', '2024-12-15', 5500.00, 'Active'),
(11026, 1006, 'Summer Fitness Challenge', '2024-06-15', '2024-08-31', 6000.00, 'Active'),
(11027, 1007, 'Grand Opening Weekend', '2024-07-15', '2024-07-17', 2000.00, 'Active'),
(11028, 1008, 'New Year Nutrition Workshop', '2025-01-05', '2025-01-10', 2500.00, 'Active'),
(11029, 1009, 'Fall Fashion Runway Show', '2024-10-10', '2024-10-15', 4800.00, 'Active'),
(11030, 1010, 'Holiday Travel Bonanza', '2024-12-20', '2025-01-05', 7200.00, 'Active'),
(11031, 1001, 'Spring Style Revival', '2024-04-01', '2024-05-15', 4000.00, 'Active'),
(11032, 1002, 'Tech Summit', '2024-09-20', '2024-09-22', 6500.00, 'Active'),
(11033, 1003, 'Summer Outdoor Gear Sale', '2024-07-01', '2024-07-31', 3800.00, 'Active'),
(11034, 1004, 'Holiday Travel Planning Workshop', '2024-11-10', '2024-11-15', 4200.00, 'Active'),
(11035, 1005, 'Backyard BBQ Essentials Sale', '2024-05-10', '2024-05-31', 3200.00, 'Active'),
(11036, 1006, 'Fitness Bootcamp', '2024-08-01', '2024-09-15', 5500.00, 'Active'),
(11037, 1007, 'Tech Product Launch', '2024-11-15', '2024-12-15', 7000.00, 'Active'),
(11038, 1008, 'New Year Home Decor Clearance', '2025-01-20', '2025-02-28', 4800.00, 'Active'),
(11039, 1009, 'Winter Wellness Webinar', '2024-12-05', '2024-12-10', 3500.00, 'Active'),
(11040, 1010, 'Spring Break Adventure Packages', '2024-03-20', '2024-04-15', 6000.00, 'Inactive'),
(11041, 1001, 'Fall Fashion Trends Workshop', '2024-09-15', '2024-09-20', 4200.00, 'Active'),
(11042, 1002, 'Holiday Tech Gadgets Showcase', '2024-11-25', '2024-12-31', 7200.00, 'Active'),
(11043, 1003, 'Spring Home Cleaning Sale', '2024-01-20', '2024-03-05', 3800.00, 'Inactive'),
(11044, 1004, 'Winter Wellness Seminar', '2024-12-20', '2024-12-30', 4800.00, 'Active'),
(11045, 1005, 'Holiday Home Decor Workshop', '2024-11-05', '2024-12-05', 5500.00, 'Active'),
(11046, 1006, 'Summer Fitness Festival', '2024-06-01', '2024-08-31', 7000.00, 'Active'),
(11047, 1007, 'Grand Reopening Celebration', '2024-07-20', '2024-07-25', 2500.00, 'Active'),
(11048, 1008, 'New Year New Fitness Challenge', '2025-01-10', '2025-01-31', 3500.00, 'Active'),
(11049, 1009, 'Fall Fashion Pop-Up Shop', '2024-10-20', '2024-10-25', 4800.00, 'Active'),
(11050, 1010, 'Holiday Travel Tips Webinar', '2024-12-01', '2024-12-10', 5500.00, 'Active'),
(11051, 1001, 'Spring Fashion Preview', '2024-03-15', '2024-04-15', 4200.00, 'Active'),
(11052, 1002, 'Tech Product Showcase', '2024-09-25', '2024-09-27', 6800.00, 'Active'),
(11053, 1003, 'Summer Outdoor Gear Demo', '2024-07-05', '2024-07-10', 3800.00, 'Active'),
(11054, 1004, 'Holiday Travel Deals Expo', '2024-11-15', '2024-12-15', 6500.00, 'Active'),
(11055, 1005, 'Backyard BBQ Recipe Contest', '2024-05-15', '2024-06-15', 3200.00, 'Active'),
(11056, 1006, 'Fitness Challenge Kickoff', '2024-08-05', '2024-08-15', 5000.00, 'Active'),
(11057, 1007, 'Tech Trends Seminar', '2024-11-10', '2024-11-20', 7000.00, 'Active'),
(11058, 1008, 'New Year Home Improvement Sale', '2025-01-05', '2025-01-15', 4800.00, 'Active'),
(11059, 1009, 'Winter Wellness Workshop Series', '2024-12-01', '2024-12-10', 3500.00, 'Active'),
(11060, 1010, 'Spring Break Travel Bonanza', '2024-03-25', '2024-04-25', 6000.00, 'Active');

-- 	Insert queries for MediaOutlets table
INSERT INTO MediaOutlets (OutletID, Name, Type, Website, ContactInfo) VALUES
(2001, 'Facebook', 'Social Media', 'www.facebook.com', 'contact@facebook.com'),
(2002, 'Instagram', 'Social Media', 'www.instagram.com', 'contact@instagram.com'),
(2003, 'YouTube', 'Social Media', 'www.youtube.com', 'contact@youtube.com'),
(2004, 'Twitter', 'Social Media', 'www.twitter.com', 'contact@twitter.com'),
(2005, 'LinkedIn', 'Social Media', 'www.linkedin.com', 'contact@linkedin.com'),
(2006, 'Pinterest', 'Social Media', 'www.pinterest.com', 'contact@pinterest.com'),
(2007, 'Snapchat', 'Social Media', 'www.snapchat.com', 'contact@snapchat.com'),
(2008, 'TikTok', 'Social Media', 'www.tiktok.com', 'contact@tiktok.com'),
(2009, 'Reddit', 'Social Media', 'www.reddit.com', 'contact@reddit.com'),
(2010, 'Tumblr', 'Social Media', 'www.tumblr.com', 'contact@tumblr.com'),
(2011, 'WhatsApp', 'Messaging App', 'www.whatsapp.com', 'contact@whatsapp.com'),
(2012, 'Messenger', 'Messaging App', 'www.messenger.com', 'contact@messenger.com'),
(2013, 'WeChat', 'Messaging App', 'www.wechat.com', 'contact@wechat.com'),
(2014, 'Line', 'Messaging App', 'www.line.me', 'contact@line.me'),
(2015, 'Telegram', 'Messaging App', 'www.telegram.com', 'contact@telegram.com'),
(2016, 'Viber', 'Messaging App', 'www.viber.com', 'contact@viber.com'),
(2017, 'Skype', 'Messaging App', 'www.skype.com', 'contact@skype.com'),
(2018, 'Zoom', 'Video Conferencing', 'www.zoom.us', 'contact@zoom.us'),
(2019, 'Google Meet', 'Video Conferencing', 'meet.google.com', 'contact@google.com'),
(2020, 'Microsoft Teams', 'Video Conferencing', 'www.microsoft.com/teams', 'contact@microsoft.com'),
(2021, 'Webex', 'Video Conferencing', 'www.webex.com', 'contact@webex.com'),
(2022, 'GoToMeeting', 'Video Conferencing', 'www.gotomeeting.com', 'contact@gotomeeting.com'),
(2023, 'BlueJeans', 'Video Conferencing', 'www.bluejeans.com', 'contact@bluejeans.com'),
(2024, 'Slack', 'Collaboration Tool', 'www.slack.com', 'contact@slack.com'),
(2025, 'Asana', 'Collaboration Tool', 'www.asana.com', 'contact@asana.com'),
(2026, 'Trello', 'Collaboration Tool', 'www.trello.com', 'contact@trello.com'),
(2027, 'Monday.com', 'Collaboration Tool', 'www.monday.com', 'contact@monday.com'),
(2028, 'Notion', 'Collaboration Tool', 'www.notion.so', 'contact@notion.so'),
(2029, 'Basecamp', 'Project Management', 'www.basecamp.com', 'contact@basecamp.com'),
(2030, 'Jira', 'Project Management', 'www.atlassian.com/software/jira', 'contact@jira.com'),
(2031, 'Toggl', 'Time Tracking', 'www.toggl.com', 'contact@toggl.com'),
(2032, 'Clockify', 'Time Tracking', 'www.clockify.me', 'contact@clockify.com'),
(2033, 'Harvest', 'Time Tracking', 'www.getharvest.com', 'contact@harvest.com'),
(2034, 'RescueTime', 'Time Tracking', 'www.rescuetime.com', 'contact@rescuetime.com'),
(2035, 'Todoist', 'Task Management', 'www.todoist.com', 'contact@todoist.com'),
(2036, 'Wunderlist', 'Task Management', 'www.wunderlist.com', 'contact@wunderlist.com'),
(2037, 'Any.do', 'Task Management', 'www.any.do', 'contact@any.do'),
(2038, 'Microsoft To Do', 'Task Management', 'www.microsoft.com/en-us/microsoft-365/microsoft-to-do-list-app', 'contact@microsoft.com'),
(2039, 'Google Tasks', 'Task Management', 'tasks.google.com', 'contact@google.com'),
(2040, 'Evernote', 'Note Taking', 'www.evernote.com', 'contact@evernote.com'),
(2041, 'OneNote', 'Note Taking', 'www.onenote.com', 'contact@microsoft.com'),
(2042, 'Bear', 'Note Taking', 'www.bear.app', 'contact@bear.app'),
(2043, 'Simplenote', 'Note Taking', 'simplenote.com', 'contact@simplenote.com'),
(2044, 'Zoho Notebook', 'Note Taking', 'www.zoho.com/notebook', 'contact@zoho.com'),
(2045, 'Google Keep', 'Note Taking', 'keep.google.com', 'contact@google.com'),
(2046, 'Pocket', 'Bookmarking', 'www.getpocket.com', 'contact@getpocket.com'),
(2047, 'Instapaper', 'Bookmarking', 'www.instapaper.com', 'contact@instapaper.com'),
(2048, 'Raindrop.io', 'Bookmarking', 'raindrop.io', 'contact@raindrop.io'),
(2049, 'Diigo', 'Bookmarking', 'www.diigo.com', 'contact@diigo.com'),
(2050, 'Pearltrees', 'Bookmarking', 'www.pearltrees.com', 'contact@pearltrees.com'),
(2051, 'Pocket Casts', 'Podcast', 'www.pocketcasts.com', 'contact@pocketcasts.com'),
(2052, 'Overcast', 'Podcast', 'overcast.fm', 'contact@overcast.fm'),
(2053, 'Spotify', 'Podcast', 'www.spotify.com', 'contact@spotify.com'),
(2054, 'Apple Podcasts', 'Podcast', 'podcasts.apple.com', 'contact@apple.com'),
(2055, 'Google Podcasts', 'Podcast', 'podcasts.google.com', 'contact@google.com'),
(2056, 'Stitcher', 'Podcast', 'www.stitcher.com', 'contact@stitcher.com'),
(2057, 'Castbox', 'Podcast', 'castbox.fm', 'contact@castbox.fm'),
(2058, 'Anchor', 'Podcast', 'www.anchor.fm', 'contact@anchor.fm'),
(2059, 'SoundCloud', 'Music Streaming', 'soundcloud.com', 'contact@soundcloud.com'),
(2060, 'Bandcamp', 'Music Streaming', 'bandcamp.com', 'contact@bandcamp.com');


-- Insert queries for Advertisements table
INSERT INTO Advertisements (AdID, CampaignID, OutletID, Type, Content, Placement, Cost) VALUES
(240001, 11001, 2001, 'Picture', 'RUMMY Circle - Play Now!', 'Stories', 500.00),
(240002, 11002, 2002, 'Video', 'My 11 Circle - Play Now', 'Stories', 700.00),
(240003, 11003, 2003, 'Picture', 'RUMMY Circle - Play Now!', 'Website Sidebar', 400.00),
(240004, 11004, 2004, 'Picture', 'Winter Wonderland - Shop now!', 'Sponsored Posts', 600.00),
(240005, 11005, 2005, 'Video', 'Holiday Gift Guide - Watch now!', 'News Feed', 800.00),
(240006, 11006, 2006, 'Picture', 'Tech Expo - Register today!', 'In-stream videos', 300.00),
(240007, 11007, 2007, 'Picture', 'RUMMY Circle - Play Now!', 'In-stream videos', 200.00),
(240008, 11008, 2008, 'Video', 'New Year New You - Transform yourself!', 'Stories', 350.00),
(240009, 11009, 2009, 'Picture', 'Fall Fashion Week - Get ready!', 'In-stream videos', 250.00),
(240010, 11010, 2010, 'Picture', 'Summer Travel Deals - Book now!', 'In-stream videos', 550.00),
(240011, 11011, 2011, 'Video', 'Spring Clearance Sale - Limited time offer!', 'News Feed', 450.00),
(240012, 11012, 2012, 'Picture', 'Tech Innovation Conference - Register now!', 'Sponsored Posts', 400.00),
(240013, 11013, 2013, 'Picture', 'Summer Outdoor Adventure - Explore now!', 'In-stream videos', 600.00),
(240014, 11014, 2014, 'Video', 'Holiday Travel Specials - Book your trip!', 'Stories', 750.00),
(240015, 11015, 2015, 'Picture', 'Backyard BBQ Bash - Join us!', 'In-stream videos', 300.00),
(240016, 11016, 2016, 'Picture', 'Fitness Challenge - Sign up now!', 'In-stream videos', 500.00),
(240017, 11017, 2017, 'Video', 'Tech Gear Giveaway - Enter to win!', 'Stories', 650.00),
(240018, 11018, 2018, 'Picture', 'New Year New Home - Find your dream home!', 'In-stream videos', 700.00),
(240019, 11019, 2019, 'Picture', 'Winter Wellness Workshop - Join us!', 'In-stream videos', 350.00),
(240020, 11020, 2020, 'Video', 'Spring Break Travel Deals - Book now!', 'News Feed', 480.00),
(240021, 11021, 2021, 'Picture', 'Fall Fashion Preview - See the latest trends!', 'Sponsored Posts', 420.00),
(240022, 11022, 2022, 'Picture', 'DREAM 11 - Play Now', 'In-stream videos', 680.00),
(240023, 11023, 2023, 'Video', 'Spring Cleaning Workshop - Register today!', 'Stories', 320.00),
(240024, 11024, 2024, 'Picture', 'Winter Wellness Retreat - Relax and rejuvenate!', 'Sponsored Posts', 500.00),
(240025, 11025, 2025, 'Picture', 'Holiday Home Decor Sale - Save big!', 'In-stream videos', 550.00),
(240026, 11026, 2026, 'Video', 'Summer Fitness Challenge - Join now!', 'Stories', 600.00),
(240027, 11027, 2027, 'Picture', 'Grand Opening Weekend - Celebrate with us!', 'In-stream videos', 200.00),
(240028, 11028, 2028, 'Picture', 'New Year Nutrition Workshop - Learn more!', 'Website Sidebar', 250.00),
(240029, 11029, 2029, 'Video', 'Fall Fashion Runway Show - Watch now!', 'News Feed', 480.00),
(240030, 11030, 2030, 'Picture', 'Holiday Travel Bonanza - Book your trip!', 'In-stream videos', 720.00),
(240031, 11031, 2031, 'Picture', 'Spring Style Revival - Update your wardrobe!', 'In-stream videos', 400.00),
(240032, 11032, 2032, 'Video', 'Tech Summit - Reserve your spot!', 'Stories', 650.00),
(240033, 11033, 2033, 'Picture', 'Summer Outdoor Gear Sale - Save now!', 'In-stream videos', 380.00),
(240034, 11034, 2034, 'Picture', 'Holiday Travel Planning Workshop - Register now!', 'In-stream videos', 420.00),
(240035, 11035, 2035, 'Video', 'Backyard BBQ Essentials Sale - Shop now!', 'News Feed', 320.00),
(240036, 11036, 2036, 'Picture', 'Fitness Bootcamp - Get in shape!', 'In-stream videos', 550.00),
(240037, 11037, 2037, 'Picture', 'Tech Product Launch - Discover the latest innovations!', 'In-stream videos', 700.00),
(240038, 11038, 2038, 'Video', 'New Year Home Decor Clearance - Save big!', 'Stories', 480.00),
(240039, 11039, 2039, 'Picture', 'Winter Wellness Webinar - Learn how to stay healthy!', 'In-stream videos', 350.00),
(240040, 11040, 2040, 'Picture', 'Spring Break Adventure Packages - Book your trip!', 'Website Sidebar', 600.00),
(240041, 11041, 2041, 'Video', 'Fall Fashion Trends Workshop - Register now!', 'Stories', 420.00),
(240042, 11042, 2042, 'Picture', 'DREAM 11 - Play Now', 'In-stream videos', 720.00),
(240043, 11043, 2043, 'Picture', 'Spring Home Cleaning Sale - Shop now and save!', 'Sponsored Posts', 380.00),
(240044, 11044, 2044, 'Video', 'Winter Wellness Seminar - Improve your well-being!', 'Stories', 480.00),
(240045, 11045, 2045, 'Picture', 'Holiday Home Decor Workshop - Get inspired!', 'Sponsored Posts', 550.00),
(240046, 11046, 2046, 'Picture', 'Summer Fitness Festival - Join us for a fun workout!', 'In-stream videos', 700.00),
(240047, 11047, 2047, 'Video', 'Grand Reopening Celebration - Watch the highlights!', 'Instant Articles', 250.00),
(240048, 11048, 2048, 'Picture', 'New Year New Fitness Challenge - Get fit in the new year!', 'Instant Articles', 350.00),
(240049, 11049, 2049, 'Picture', 'Fall Fashion Pop-Up Shop - Discover the latest trends!', 'In-stream videos', 480.00),
(240050, 11050, 2050, 'Video', 'DREAM 11 - Play Now', 'Stories', 550.00),
(240051, 11051, 2051, 'Picture', 'Spring Fashion Preview - Get a sneak peek!', 'Instant Articles', 420.00),
(240052, 11052, 2052, 'Picture', 'Tech Product Showcase - See the latest innovations!', 'In-stream videos', 680.00),
(240053, 11053, 2053, 'Video', 'Summer Outdoor Gear Demo - See the gear in action!', 'Website Sidebar', 380.00),
(240054, 11054, 2054, 'Picture', 'Holiday Travel Deals Expo - Book your trip now!', 'In-stream videos', 650.00),
(240055, 11055, 2055, 'Picture', 'Backyard BBQ Recipe Contest - Enter to win!', 'Sponsored Posts', 320.00),
(240056, 11056, 2056, 'Video', 'Fitness Challenge Kickoff - Join the challenge!', 'Stories', 500.00),
(240057, 11057, 2057, 'Picture', 'Tech Trends Seminar - Learn about the latest tech trends!', 'Instant Articles', 700.00),
(240058, 11058, 2058, 'Picture', 'New Year Home Improvement Sale - Renovate your home!', 'Sponsored Posts', 480.00),
(240059, 11059, 2059, 'Video', 'Winter Wellness Workshop Series - Improve your well-being!', 'Stories', 350.00),
(240060, 11060, 2060, 'Picture', 'DREAM 11 - Play Now', 'Instant Articles', 600.00);

-- Insert queries for Impressions table
INSERT INTO Impressions (ImpressionID, AdID, Date, Views) VALUES
(1, 240001, '2024-06-01', 1500),
(2, 240002, '2024-06-02', 1700),
(3, 240003, '2024-06-03', 1200),
(4, 240004, '2024-06-04', 2000),
(5, 240005, '2024-06-05', 2200),
(6, 240006, '2024-06-06', 1300),
(7, 240007, '2024-06-07', 1100),
(8, 240008, '2024-06-08', 1800),
(9, 240009, '2024-06-09', 1000),
(10, 240010, '2024-06-10', 1900),
(11, 240011, '2024-06-11', 1400),
(12, 240012, '2024-06-12', 1600),
(13, 240013, '2024-06-13', 1200),
(14, 240014, '2024-06-14', 2100),
(15, 240015, '2024-06-15', 1300),
(16, 240016, '2024-06-16', 1700),
(17, 240017, '2024-06-17', 1900),
(18, 240018, '2024-06-18', 1400),
(19, 240019, '2024-06-19', 1600),
(20, 240020, '2024-06-20', 2000),
(21, 240021, '2024-06-21', 1800),
(22, 240022, '2024-06-22', 1500),
(23, 240023, '2024-06-23', 1200),
(24, 240024, '2024-06-24', 1700),
(25, 240025, '2024-06-25', 1400),
(26, 240026, '2024-06-26', 1600),
(27, 240027, '2024-06-27', 1300),
(28, 240028, '2024-06-28', 1500),
(29, 240029, '2024-06-29', 1900),
(30, 240030, '2024-06-30', 1800),
(31, 240031, '2024-07-01', 1200),
(32, 240032, '2024-07-02', 1700),
(33, 240033, '2024-07-03', 1400),
(34, 240034, '2024-07-04', 2000),
(35, 240035, '2024-07-05', 2200),
(36, 240036, '2024-07-06', 1300),
(37, 240037, '2024-07-07', 1100),
(38, 240038, '2024-07-08', 1800),
(39, 240039, '2024-07-09', 1000),
(40, 240040, '2024-07-10', 1900),
(41, 240041, '2024-07-11', 1400),
(42, 240042, '2024-07-12', 1600),
(43, 240043, '2024-07-13', 1200),
(44, 240044, '2024-07-14', 2100),
(45, 240045, '2024-07-15', 1300),
(46, 240046, '2024-07-16', 1700),
(47, 240047, '2024-07-17', 1900),
(48, 240048, '2024-07-18', 1400),
(49, 240049, '2024-07-19', 1600),
(50, 240050, '2024-07-20', 2000),
(51, 240051, '2024-07-21', 1800),
(52, 240052, '2024-07-22', 1500),
(53, 240053, '2024-07-23', 1200),
(54, 240054, '2024-07-24', 1700),
(55, 240055, '2024-07-25', 1400),
(56, 240056, '2024-07-26', 1600),
(57, 240057, '2024-07-27', 1300),
(58, 240058, '2024-07-28', 1500),
(59, 240059, '2024-07-29', 1900),
(60, 240060, '2024-07-30', 1800);

-- 	Insert queries for Clicks table
INSERT INTO Clicks (ClickID, ImpressionID, ClickTime, IPAddress) VALUES
(101, 1, '2024-06-01 08:30:00', '192.168.0.1'),
(102, 2, '2024-06-02 09:15:00', '192.168.0.2'),
(103, 3, '2024-06-03 10:20:00', '192.168.0.3'),
(104, 4, '2024-06-04 11:45:00', '192.168.0.4'),
(105, 5, '2024-06-05 13:00:00', '192.168.0.5'),
(106, 6, '2024-06-06 14:30:00', '192.168.0.6'),
(107, 7, '2024-06-07 15:45:00', '192.168.0.7'),
(108, 8, '2024-06-08 16:20:00', '192.168.0.8'),
(109, 9, '2024-06-09 17:10:00', '192.168.0.9'),
(110, 10, '2024-06-10 18:00:00', '192.168.0.10'),
(111, 11, '2024-06-11 19:30:00', '192.168.0.11'),
(112, 12, '2024-06-12 20:45:00', '192.168.0.12'),
(113, 13, '2024-06-13 21:10:00', '192.168.0.13'),
(114, 14, '2024-06-14 22:20:00', '192.168.0.14'),
(115, 15, '2024-06-15 23:00:00', '192.168.0.15'),
(116, 16, '2024-06-16 00:30:00', '192.168.0.16'),
(117, 17, '2024-06-17 01:45:00', '192.168.0.17'),
(118, 18, '2024-06-18 02:20:00', '192.168.0.18'),
(119, 19, '2024-06-19 03:10:00', '192.168.0.19'),
(120, 20, '2024-06-20 04:00:00', '192.168.0.20'),
(121, 21, '2024-06-21 05:30:00', '192.168.0.21'),
(122, 22, '2024-06-22 06:45:00', '192.168.0.22'),
(123, 23, '2024-06-23 07:10:00', '192.168.0.23'),
(124, 24, '2024-06-24 08:20:00', '192.168.0.24'),
(125, 25, '2024-06-25 09:00:00', '192.168.0.25'),
(126, 26, '2024-06-26 10:30:00', '192.168.0.26'),
(127, 27, '2024-06-27 11:45:00', '192.168.0.27'),
(128, 28, '2024-06-28 12:20:00', '192.168.0.28'),
(129, 29, '2024-06-29 13:10:00', '192.168.0.29'),
(130, 30, '2024-06-30 14:00:00', '192.168.0.30'),
(131, 31, '2024-07-01 15:30:00', '192.168.0.31'),
(132, 32, '2024-07-02 16:45:00', '192.168.0.32'),
(133, 33, '2024-07-03 17:10:00', '192.168.0.33'),
(134, 34, '2024-07-04 18:20:00', '192.168.0.34'),
(135, 35, '2024-07-05 19:00:00', '192.168.0.35'),
(136, 36, '2024-07-06 20:30:00', '192.168.0.36'),
(137, 37, '2024-07-07 21:45:00', '192.168.0.37'),
(138, 38, '2024-07-08 22:20:00', '192.168.0.38'),
(139, 39, '2024-07-09 23:10:00', '192.168.0.39'),
(140, 40, '2024-07-10 00:00:00', '192.168.0.40'),
(141, 41, '2024-07-11 01:30:00', '192.168.0.41'),
(142, 42, '2024-07-12 02:45:00', '192.168.0.42'),
(143, 43, '2024-07-13 03:10:00', '192.168.0.43'),
(144, 44, '2024-07-14 04:20:00', '192.168.0.44'),
(145, 45, '2024-07-15 05:00:00', '192.168.0.45'),
(146, 46, '2024-07-16 06:30:00', '192.168.0.46'),
(147, 47, '2024-07-17 07:45:00', '192.168.0.47'),
(148, 48, '2024-07-18 08:20:00', '192.168.0.48'),
(149, 49, '2024-07-19 09:10:00', '192.168.0.49'),
(150, 50, '2024-07-20 10:00:00', '192.168.0.50'),
(151, 51, '2024-07-21 11:30:00', '192.168.0.51'),
(152, 52, '2024-07-22 12:45:00', '192.168.0.52'),
(153, 53, '2024-07-23 13:10:00', '192.168.0.53'),
(154, 54, '2024-07-24 14:20:00', '192.168.0.54'),
(155, 55, '2024-07-25 15:00:00', '192.168.0.55'),
(156, 56, '2024-07-26 16:30:00', '192.168.0.56'),
(157, 57, '2024-07-27 17:45:00', '192.168.0.57'),
(158, 58, '2024-07-28 18:20:00', '192.168.0.58'),
(159, 59, '2024-07-29 19:10:00', '192.168.0.59'),
(160, 60, '2024-07-30 20:00:00', '192.168.0.60');

-- Insert queries for Views table
INSERT INTO Views (ViewID, ImpressionID, ViewTime, IPAddress) VALUES
(201, 1, '2024-06-01 08:30:00', '192.168.0.1'),
(202, 2, '2024-06-02 09:15:00', '192.168.0.2'),
(203, 3, '2024-06-03 10:20:00', '192.168.0.3'),
(204, 4, '2024-06-04 11:45:00', '192.168.0.4'),
(205, 5, '2024-06-05 13:00:00', '192.168.0.5'),
(206, 6, '2024-06-06 14:30:00', '192.168.0.6'),
(207, 7, '2024-06-07 15:45:00', '192.168.0.7'),
(208, 8, '2024-06-08 16:20:00', '192.168.0.8'),
(209, 9, '2024-06-09 17:10:00', '192.168.0.9'),
(210, 10, '2024-06-10 18:00:00', '192.168.0.10'),
(211, 11, '2024-06-11 19:30:00', '192.168.0.11'),
(212, 12, '2024-06-12 20:45:00', '192.168.0.12'),
(213, 13, '2024-06-13 21:10:00', '192.168.0.13'),
(214, 14, '2024-06-14 22:20:00', '192.168.0.14'),
(215, 15, '2024-06-15 23:00:00', '192.168.0.15'),
(216, 16, '2024-06-16 00:30:00', '192.168.0.16'),
(217, 17, '2024-06-17 01:45:00', '192.168.0.17'),
(218, 18, '2024-06-18 02:20:00', '192.168.0.18'),
(219, 19, '2024-06-19 03:10:00', '192.168.0.19'),
(220, 20, '2024-06-20 04:15:00', '192.168.0.20'),
(221, 21, '2024-06-21 05:30:00', '192.168.0.21'),
(222, 22, '2024-06-22 06:45:00', '192.168.0.22'),
(223, 23, '2024-06-23 07:20:00', '192.168.0.23'),
(224, 24, '2024-06-24 08:10:00', '192.168.0.24'),
(225, 25, '2024-06-25 09:00:00', '192.168.0.25'),
(226, 26, '2024-06-26 10:30:00', '192.168.0.26'),
(227, 27, '2024-06-27 11:45:00', '192.168.0.27'),
(228, 28, '2024-06-28 12:20:00', '192.168.0.28'),
(229, 29, '2024-06-29 13:10:00', '192.168.0.29'),
(230, 30, '2024-06-30 14:00:00', '192.168.0.30'),
(231, 31, '2024-07-01 15:30:00', '192.168.0.31'),
(232, 32, '2024-07-02 16:45:00', '192.168.0.32'),
(233, 33, '2024-07-03 17:10:00', '192.168.0.33'),
(234, 34, '2024-07-04 18:20:00', '192.168.0.34'),
(235, 35, '2024-07-05 19:00:00', '192.168.0.35'),
(236, 36, '2024-07-06 20:30:00', '192.168.0.36'),
(237, 37, '2024-07-07 21:45:00', '192.168.0.37'),
(238, 38, '2024-07-08 22:20:00', '192.168.0.38'),
(239, 39, '2024-07-09 23:10:00', '192.168.0.39'),
(240, 40, '2024-07-10 00:00:00', '192.168.0.40'),
(241, 41, '2024-07-11 08:30:00', '192.168.0.41'),
(242, 42, '2024-07-12 09:15:00', '192.168.0.42'),
(243, 43, '2024-07-13 10:20:00', '192.168.0.43'),
(244, 44, '2024-07-14 11:45:00', '192.168.0.44'),
(245, 45, '2024-07-15 13:00:00', '192.168.0.45'),
(246, 46, '2024-07-16 14:30:00', '192.168.0.46'),
(247, 47, '2024-07-17 15:45:00', '192.168.0.47'),
(248, 48, '2024-07-18 16:20:00', '192.168.0.48'),
(249, 49, '2024-07-19 17:10:00', '192.168.0.49'),
(250, 50, '2024-07-20 18:00:00', '192.168.0.50'),
(251, 51, '2024-07-21 19:30:00', '192.168.0.51'),
(252, 52, '2024-07-22 20:45:00', '192.168.0.52'),
(253, 53, '2024-07-23 21:10:00', '192.168.0.53'),
(254, 54, '2024-07-24 22:20:00', '192.168.0.54'),
(255, 55, '2024-07-25 23:00:00', '192.168.0.55'),
(256, 56, '2024-07-26 00:30:00', '192.168.0.56'),
(257, 57, '2024-07-27 01:45:00', '192.168.0.57'),
(258, 58, '2024-07-28 02:20:00', '192.168.0.58'),
(259, 59, '2024-07-29 03:10:00', '192.168.0.59'),
(260, 60, '2024-07-30 04:15:00', '192.168.0.60');


-- Describe the structure of tables 
desc Advertisers;
desc Campaigns;
desc MediaOutlets;
desc Advertisements;
desc Impressions;
desc Clicks;
desc Views;

SELECT * FROM Advertisers;
SELECT * FROM Campaigns;
SELECT * FROM MediaOutlets;
SELECT * FROM Advertisements;
SELECT * FROM Impressions;
SELECT * FROM Clicks;
SELECT * FROM Views;


 -- JOINS QUERY
-- Write query to join Advertisements, Campaigns, and Advertisers tables:
       SELECT A.*, C.*, AD.*
       FROM Advertisements AS A
       JOIN Campaigns AS C ON A.CampaignID = C.CampaignID
       JOIN Advertisers AS AD ON C.AdvertiserID = AD.AdvertiserID;

-- 	Write query retrieves data about advertisements and their associated media outlets for ads with a cost 
-- greater than 500 and placed as 'In-stream videos', joined with impressions, clicks, and views data.
SELECT MO.Name, MO.Type AS OutletType, A.AdID, A.CampaignID, A.Type, A.Content, A.Placement, A.Cost, V.ViewTime
FROM Impressions AS I
JOIN Clicks AS Cl ON I.ImpressionID = Cl.ImpressionID
JOIN Views AS V ON I.ImpressionID = V.ImpressionID
JOIN Advertisements AS A ON I.AdID = A.AdID
JOIN MediaOutlets AS MO ON A.OutletID = MO.OutletID
WHERE A.Cost > 500 AND A.Placement = 'In-stream videos';

 -- Write a query to retrieves data about media outlets along with advertisements meeting specific criteria,
--  including ads with a type of 'Picture', cost greater than 500, and placed as 'In-stream videos’
SELECT MO.Name, MO.Type AS OutletType, A.AdID, A.CampaignID, A.Type, A.Content, A.Placement, A.Cost
FROM MediaOutlets AS MO
JOIN (
    SELECT AdID, CampaignID, Type, Content, Placement, Cost, OutletID
    FROM Advertisements
    WHERE Type = 'Picture'
      AND Cost > 500
      AND Placement = 'In-stream videos'
) AS A ON MO.OutletID = A.OutletID;

-- 	Write query to retrieves data about advertisements and their associated media outlets, 
-- including the count of impressions for each advertisement, with a left join on the MediaOutlets 
-- table and an aggregate function applied to calculate the number of impressions.
SELECT 
    MO.Name, 
    MO.Type AS OutletType, 
    A.AdID, 
    A.CampaignID, 
    A.Type, 
    A.Content, 
    A.Placement, 
    A.Cost,
    COUNT(I.ImpressionID) AS Impressions_Count
FROM 
    MediaOutlets AS MO
LEFT JOIN 
    Advertisements AS A ON MO.OutletID = A.OutletID
LEFT JOIN 
    Impressions AS I ON A.AdID = I.AdID
GROUP BY 
    MO.Name, 
    MO.Type, 
    A.AdID, 
    A.CampaignID, 
    A.Type, 
    A.Content, 
    A.Placement, 
    A.Cost;

-- Write a query to retrieves impression data along with clicks and views, including details about advertisement type,
--  content, and placement, sorted by impression ID, views, and click time, and limited to the top 10 records:

SELECT I.ImpressionID, I.Views,Cl.ClickTime, V.ViewTime, A.Type, A.Content,A.Placement
FROM Impressions AS I
JOIN Clicks AS Cl ON I.ImpressionID = Cl.ImpressionID
JOIN Views AS V ON I.ImpressionID = V.ImpressionID
JOIN Advertisements AS A ON I.AdID = A.AdID
order by 1,2,3
limit 10;

-- Sub-queries:
-- Subquery to find advertisements with the highest cost:
SELECT *
FROM Advertisements
WHERE Cost = (SELECT MAX(Cost) FROM Advertisements);
 
-- 	Subquery to find advertisements with a cost higher than the average cost:
SELECT *
FROM Advertisements
WHERE Cost > (SELECT AVG(Cost) FROM Advertisements);

-- 	Subquery to find advertisements associated with a specific campaign:Summer Sale:
SELECT *
FROM Advertisements
WHERE CampaignID IN (SELECT CampaignID FROM Campaigns WHERE Name = 'Summer Sale');

-- Subquery to count the number of advertisements for each campaign:
SELECT c.Name, (SELECT COUNT(*) FROM Advertisements WHERE CampaignID = c.CampaignID) AS NumAdvertisements
FROM Campaigns c;

-- 	Subquery to find the total cost for each outlet:
SELECT o.Name, (SELECT SUM(Cost) FROM Advertisements WHERE OutletID = o.OutletID) AS TotalCost
FROM MediaOutlets o;

-- Normal Queries
-- Write query to calculates the total cost of all advertisements
SELECT SUM(Cost) AS TotalCost
FROM Advertisements;

-- Write query  to retrieves the campaign ID along with the total number of days for each campaign 
-- by calculating the difference between the end date and start date, including both start and end dates
SELECT Campaigns.CampaignID,DATEDIFF(EndDate, StartDate) + 1 AS TotalDays_of_campaign
FROM Campaigns;

-- Write query that will retrieve all records from the Campaigns table where the status is 'Active' and 
-- the StartDate falls between June 1, 2024, and July 15, 2024. Here's the SQL query
SELECT * 
FROM Campaigns
WHERE Status = 'Active'
AND StartDate BETWEEN '2024-06-01' AND '2024-07-15';

-- Write query that selects the Date column from the Impressions table and counts the number of impressions for each date.
--  It then groups the results by date using the GROUP BY clause
SELECT Date, COUNT(*) AS Impression_Count
FROM Impressions
GROUP BY Date;

-- 	write a query WHERE Content contains 'Holiday' filters the rows where the Content column contains the word "Holiday" anywhere in the text
SELECT *
FROM Advertisements
WHERE Content LIKE '%Holiday%';



