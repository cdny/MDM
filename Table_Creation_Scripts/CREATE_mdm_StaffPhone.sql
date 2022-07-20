CREATE TABLE mdm.StaffPhone
(
StaffPhoneID INT NOT NULL  IDENTITY(1,1),
fkStaffID INT NOT NULL,
fkPhoneTypeID INT NOT NULL,
PhoneNumber VARCHAR(50) NOT NULL

CONSTRAINT staff_phone_id PRIMARY KEY (StaffPhoneID)
CONSTRAINT fk_staff_phone_id FOREIGN KEY (fkStaffID) REFERENCES mdm.Staff(StaffID),
CONSTRAINT fk_phone_type_id FOREIGN KEY (fkPhoneTypeID) REFERENCES dbo.PhoneType(PhoneTypeID)
);