CREATE TABLE mdm.StaffOrgCrosswalk
(
OrgStaffID INT NOT NULL  IDENTITY(1,1),
fkStaffID INT NOT NULL,
fkOrgID INT NOT NULL

CONSTRAINT org_staff_id PRIMARY KEY (OrgStaffID)
CONSTRAINT fk_staff_id FOREIGN KEY (fkStaffID) REFERENCES mdm.staff(StaffID),
CONSTRAINT fk_org_id FOREIGN KEY (fkOrgID) REFERENCES dbo.org(OrgID)
);