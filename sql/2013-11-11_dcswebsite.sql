-- DYNAMIC CONTENT RELATIONS
CREATE TABLE IF NOT EXISTS `User` (
  `userid` INTEGER AUTO_INCREMENT,
  `username` VARCHAR(15) UNIQUE,
  `password` VARCHAR(50),
  `email` VARCHAR(30) UNIQUE,
  `contact_number` VARCHAR(20) NOT NULL,
  CONSTRAINT `UserPK` PRIMARY KEY (`userid`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Role` (
  `roleid` INTEGER AUTO_INCREMENT,
  `name` VARCHAR(15),
  CONSTRAINT `RolePK` PRIMARY KEY (`roleid`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Privilege` (
  `privilegeid` INTEGER AUTO_INCREMENT,
  `name` VARCHAR(25),
  CONSTRAINT `PrivilegePK` PRIMARY KEY (`privilegeid`)
) ENGINE=InnoDB;

-- 'is' relationship set between User and Role
-- Use application code (PHP) to enforce total participation of User.
-- MySQL does not support schema-level constraints.
-- Note: InnoDB does not support ON DELETE SET (NULL/DEFAULT)
CREATE TABLE IF NOT EXISTS `UserRole` (
  `userid` INTEGER,
  `roleid` INTEGER,
  CONSTRAINT `UserRolePK` PRIMARY KEY (`userid`, `roleid`),
  CONSTRAINT `UserRoleFKUser` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UserRoleFKRole` FOREIGN KEY (`roleid`) REFERENCES `Role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 'has' relationship set between Role and Privilege
-- Use application code (PHP) to enforce total participation of Role.
-- MySQL does not support schema-level constraints.
CREATE TABLE IF NOT EXISTS `RolePrivilege` (
  `roleid` INTEGER,
  `privilegeid` INTEGER,
  CONSTRAINT `RolePrivilegePK` PRIMARY KEY (`roleid`, `privilegeid`),
  CONSTRAINT `RolePrivilegeFK1` FOREIGN KEY (`roleid`) REFERENCES `Role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RolePrivilegeFK2` FOREIGN KEY (`privilegeid`) REFERENCES `Privilege` (`privilegeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- combined with 'posts' and 'modifies' relationship set to preserve the key constraint
CREATE TABLE IF NOT EXISTS `DynamicContent` (
  `contentid` INTEGER AUTO_INCREMENT,
  `title` VARCHAR(30),
  `category` INTEGER,
  `content` TEXT,
  `picture` VARCHAR(30),
  `approved` INT(1), 
  `status` INT(1) NOT NULL DEFAULT 1,
    
  -- attributes of 'posts' relationship
  `createdby` INTEGER NOT NULL,
  `datecreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  -- attributes of 'modifies' relationship
  `modifiedby` INTEGER DEFAULT NULL,
  `datemodified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',

  CONSTRAINT `DynamicContentPK` PRIMARY KEY (`contentid`),
  CONSTRAINT `DynamicContentFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `DynamicContentFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Event` (
  `contentid` INTEGER,
  `eventdate` DATE,
  CONSTRAINT `EventPK` PRIMARY KEY (`contentid`),
  CONSTRAINT `EventFK` FOREIGN KEY (`contentid`) REFERENCES `DynamicContent` (`contentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Tag` (
  `tagid` INTEGER AUTO_INCREMENT,
  `name` VARCHAR(15),
  CONSTRAINT `TagPK` PRIMARY KEY (`tagid`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `ContentTag` (
  `contentid` INTEGER,
  `tagid` INTEGER,
  
  CONSTRAINT `ContentTagPK` PRIMARY KEY (`contentid`,`tagid`),
  CONSTRAINT `ContentTagFK1` FOREIGN KEY (`contentid`) REFERENCES `DynamicContent` (`contentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ContentTagFK2` FOREIGN KEY (`tagid`) REFERENCES `Tag` (`tagid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- removed partial keys
-- InnoDB does not support auto increment on partial keys
CREATE TABLE IF NOT EXISTS `Comment` (
  `commentid` INTEGER AUTO_INCREMENT,
  `contentid` INTEGER NOT NULL,
  `authorname` VARCHAR(20),
  `content` TEXT,
  `email` VARCHAR(20),
  `approved` BOOLEAN,
  CONSTRAINT `CommentPK` PRIMARY KEY (`commentid`),
  CONSTRAINT `CommentFK` FOREIGN KEY (`contentid`) REFERENCES `DynamicContent` (`contentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- SITE CONTENT
CREATE TABLE IF NOT EXISTS `People` (
  `peopleid` INTEGER AUTO_INCREMENT,
  `first_name` VARCHAR(20),
  `middle_name` VARCHAR(20),
  `last_name` VARCHAR(20),
  `picture` VARCHAR(30),
  `status` INT(1) NOT NULL,
  CONSTRAINT `PeoplePK` PRIMARY KEY (`peopleid`),
  
  `createdby` INTEGER NOT NULL,
  `datecreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  `modifiedby` INTEGER DEFAULT NULL,
  `datemodified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',

  CONSTRAINT `PeopleFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PeopleFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE  
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Position` (
  `positionid` INTEGER AUTO_INCREMENT,
  `name` VARCHAR(30),
  CONSTRAINT `PositionPK` PRIMARY KEY (`positionid`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Room` (
  `roomid` INTEGER AUTO_INCREMENT,
  `name` VARCHAR(20),
  `roomnum` INTEGER,
  CONSTRAINT `RoomPK` PRIMARY KEY (`roomid`)
) ENGINE=InnoDB;

-- combined Faculty entity and is relationship set
-- to preserve total participation constraint
CREATE TABLE IF NOT EXISTS `Faculty` (
  `facultyid` INTEGER,
  `positionid` INTEGER NOT NULL,
  `email` VARCHAR(20),
  `website` VARCHAR(20),
  `consultation` VARCHAR(50),
  `research` TEXT,
  CONSTRAINT `FacultyPK` PRIMARY KEY (`facultyid`),
  CONSTRAINT `FacultyFK1` FOREIGN KEY (`facultyid`) REFERENCES `People` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FacultyFK2` FOREIGN KEY (`positionid`) REFERENCES `Position` (`positionid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

-- combined Staff entity and is relationship set
-- to preserve total participation constraint
CREATE TABLE IF NOT EXISTS `Staff` (
  `staffid` INTEGER,
  `positionid` INTEGER NOT NULL,
  CONSTRAINT `StaffPK` PRIMARY KEY (`staffid`),
  CONSTRAINT `StaffFKPeople` FOREIGN KEY (`staffid`) REFERENCES `People` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `StaffFKPosition` FOREIGN KEY (`positionid`) REFERENCES `Position` (`positionid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `StaffRoom` (
  `staffid` INTEGER,
  `roomid` INTEGER,
  CONSTRAINT `StaffRoomPK` PRIMARY KEY (`staffid`, `roomid`),
  CONSTRAINT `StaffRoomFKStaff` FOREIGN KEY (`staffid`) REFERENCES `Staff` (`staffid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `StaffRoomFKRoom` FOREIGN KEY (`roomid`) REFERENCES `Room` (`roomid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Student` (
  `studentid` INTEGER,
  `website` VARCHAR(20),
  `description` TEXT,
  CONSTRAINT `StudentPK` PRIMARY KEY (`studentid`),
  CONSTRAINT `StudentFK` FOREIGN KEY (`studentid`) REFERENCES `People` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- combined lab entity and head relationship set
-- to preserve total participation constraint
CREATE TABLE IF NOT EXISTS `Lab` (
  `laboratoryid` INTEGER AUTO_INCREMENT,
  `head` INTEGER NOT NULL,
  `name` VARCHAR(50),
  `email` VARCHAR(20),
  `telephone` INTEGER,
  `website` VARCHAR(50),
  `logo` VARCHAR(50),
  `field` TEXT,
  `description` TEXT,
  CONSTRAINT `LabPK` PRIMARY KEY (`laboratoryid`),
  CONSTRAINT `LabFK` FOREIGN KEY (`head`) REFERENCES `Faculty` (`facultyid`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `FacultyLab` (
  `facultyid` INTEGER,
  `laboratoryid` INTEGER,
  CONSTRAINT `FacultyLabPK` PRIMARY KEY (`facultyid`),
  CONSTRAINT `FacultyLabFKFaculty` FOREIGN KEY (`facultyid`) REFERENCES `Faculty` (`facultyid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FacultyLabFKLab` FOREIGN KEY (`laboratoryid`) REFERENCES `Lab` (`laboratoryid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `LabRoom` (
  `laboratoryid` INTEGER,
  `roomid` INTEGER,
  CONSTRAINT `LabRoomPK` PRIMARY KEY (`laboratoryid`, `roomid`),
  CONSTRAINT `LabRoomFK1` FOREIGN KEY (`laboratoryid`) REFERENCES `Lab` (`laboratoryid`),
  CONSTRAINT `LabRoomFK2` FOREIGN KEY (`roomid`) REFERENCES `Room` (`roomid`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Affiliate` (
  `affiliateid` INTEGER AUTO_INCREMENT,
  `link` VARCHAR(50),
  `name` VARCHAR(50) NOT NULL UNIQUE,
  `logo` VARCHAR(50),
  `status` INT(1) NOT NULL,
  CONSTRAINT `AffiliatePK` PRIMARY KEY (`affiliateid`),
  
  `createdby` INTEGER NOT NULL,
  `datecreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  `modifiedby` INTEGER DEFAULT NULL,
  `datemodified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',

  CONSTRAINT `AffiliateFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `AffiliateFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE  
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `CorporateDonor` (
  `corporatedonorid` INTEGER,
  `description` TEXT,
  `contribution` TEXT,
  CONSTRAINT `CorporateDonorPK` PRIMARY KEY (`corporatedonorid`),
  CONSTRAINT `CorporateDonorFK` FOREIGN KEY (`corporatedonorid`) REFERENCES `Affiliate` (`affiliateid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `SliderPic` (
  `sliderpicid` INTEGER NOT NULL AUTO_INCREMENT,
  `pic` VARCHAR(30) NOT NULL,
  `status` INT(1) NOT NULL,
  CONSTRAINT `SliderPicPK` PRIMARY KEY (`sliderpicid`),

  `createdby` INTEGER NOT NULL,
  `datecreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  `modifiedby` INTEGER DEFAULT NULL,
  `datemodified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',

  CONSTRAINT `SliderPicFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SliderPicFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE  
) ENGINE=InnoDB;
