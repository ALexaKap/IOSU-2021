USE Archive;

CREATE TABLE Person(
	PersonID INT PRIMARY KEY IDENTITY(1,1),
	[Name] VARCHAR(255) NOT NULL,
	Birthdate DATE
);

CREATE TABLE [Role](
	RoleID INT PRIMARY KEY IDENTITY(1,1),
	[Name] VARCHAR(255) NOT NULL
);

CREATE TABLE PersonRole(
	PersonRoleID INT PRIMARY KEY IDENTITY(1,1),
	PersonID INT NOT NULL,
	FOREIGN KEY (PersonID) REFERENCES Person (PersonID),
	RoleID INT NOT NULL,
	FOREIGN KEY (RoleID) REFERENCES [Role] (RoleID)
);

CREATE TABLE Article(
	ArticleID INT PRIMARY KEY IDENTITY(1,1),
	Article VARCHAR(500) NOT NULL,
	ArticleContent VARCHAR(500) NOT NULL
);

CREATE TABLE Qualification(
	QualificationID INT PRIMARY KEY IDENTITY(1,1),
	ArticleID INT NOT NULL,
	FOREIGN KEY (ArticleID) REFERENCES Article (ArticleID),
	Qualification VARCHAR(255) NOT NULL,
	QualificationDescription VARCHAR(255) NOT NULL
);

CREATE TABLE Decision(
	DecisionID INT PRIMARY KEY IDENTITY(1,1),
	QualificationID INT NOT NULL,
	FOREIGN KEY (QualificationID) REFERENCES Qualification (QualificationID),
	Decision VARCHAR(255) NOT NULL
);

CREATE TABLE Content(
	ContentID INT PRIMARY KEY IDENTITY(1,1),
	ConvictID INT NOT NULL,
	FOREIGN KEY (ConvictID) REFERENCES Person (PersonID),
	InvestigatorID INT NOT NULL,
	FOREIGN KEY (InvestigatorID) REFERENCES Person (PersonID),
	VictimID INT NOT NULL,
	FOREIGN KEY (VictimID) REFERENCES Person (PersonID),
	QualificationID INT NOT NULL,
	FOREIGN KEY (QualificationID) REFERENCES Qualification (QualificationID)
);

CREATE TABLE [Case](
	CaseID INT PRIMARY KEY IDENTITY(1,1),
	ContentID INT NOT NULL,
	FOREIGN KEY (ContentID) REFERENCES Content (ContentID),
	JudgeID INT NOT NULL,
	FOREIGN KEY (JudgeID) REFERENCES Person (PersonID),
	DecisionID INT NOT NULL,
	FOREIGN KEY (DecisionID) REFERENCES Decision (DecisionID),
	BeginData DATE,
	EndData DATE
);
