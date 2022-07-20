INSERT INTO dbo.Org(OrgName)
VALUES ('CDNY'), ('PHP'), ('PHPCares');

INSERT INTO dbo.PhoneType(PhoneType)
VALUES ('Home'),
       ('Cell'),
	   ('Work/Office Home'),
	   ('Work/Office Cell');

INSERT INTO dbo.Region(RegionName, Org)
SELECT DISTINCT aw.Region, 1 FROM prod.dbo.AllWorker aw;

INSERT INTO dbo.Region(RegionName, Org)
SELECT DISTINCT aw.Region, 2 FROM php.dbo.AllWorker aw;