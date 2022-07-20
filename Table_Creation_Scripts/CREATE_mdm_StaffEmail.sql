CREATE TABLE mdm.StaffEmail
(
StaffEmailID INT NOT NULL  IDENTITY(1,1),
fkStaffID INT NOT NULL,
Email VARCHAR(250) NOT NULL,
fkOrgID INT NULL

CONSTRAINT staff_email_id PRIMARY KEY (StaffEmailID)
CONSTRAINT fk_staff_email_id FOREIGN KEY (fkStaffID) REFERENCES mdm.Staff(StaffID),
CONSTRAINT fk_org_email_id FOREIGN KEY (fkOrgID) REFERENCES dbo.Org(OrgID)
);