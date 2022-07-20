CREATE TABLE mdm.StaffDetail
(
fkOrgStaffID INT NOT NULL,
ApplicationWorkerID INT NULL,
fkApplicationTypeID INT NULL,
Title VARCHAR(250) NULL,
Active BIT NOT NULL,
JobDescription VARCHAR(250) NULL,
SupervisorID INT NULL,
fkRegionID INT NULL

CONSTRAINT fk_org_staff_id FOREIGN KEY (fkOrgStaffID) REFERENCES mdm.StaffOrgCrosswalk(OrgStaffID),
CONSTRAINT fk_region_id FOREIGN KEY (fkRegionID) REFERENCES dbo.Region(RegionID),
CONSTRAINT fk_application_type_id FOREIGN KEY (fkApplicationTypeID) REFERENCES mdm.ApplicationType(ApplicationTypeID)
);