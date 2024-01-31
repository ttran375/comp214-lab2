-- 3. Would a bitmap index be appropriate for any columns in the City Jail database (assuming the columns are used in search and/or sort operations)? If so, identify the columns and explain why a bitmap index is appropriate for them.
CREATE BITMAP INDEX idx_criminals_gender ON Criminals (Gender);

CREATE BITMAP INDEX idx_crimes_crime_type ON Crimes (CrimeType);

CREATE BITMAP INDEX idx_prison_cells_status ON PrisonCells (PrisonCellStatus);
