CREATE TABLE dbo.Org (
OrgID INT NOT NULL IDENTITY(1,1),
OrgName VARCHAR(200) NOT NULL
CONSTRAINT org_id PRIMARY KEY (OrgID)
);