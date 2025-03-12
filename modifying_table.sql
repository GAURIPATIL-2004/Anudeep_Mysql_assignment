### Modifying Tables

-- 1. Rename table "countries" to "country_new"

RENAME TABLE countries TO country_new;

-- 2. Add a column "region_id" to the "locations" table

ALTER TABLE locations ADD region_id INT;

-- 3. Add column "ID" as the first column in "locations" table

ALTER TABLE locations ADD ID INT FIRST;

-- 4. Add column "region_id" after "state_province" in "locations" table

ALTER TABLE locations ADD region_id INT AFTER state_province;

-- 5. Change data type of "country_id" to INTEGER in "locations" table

ALTER TABLE locations MODIFY country_id INT;

-- 6. Remove column "city" from "locations" table

ALTER TABLE locations DROP COLUMN city;

-- 7. Rename column "state_province" to "state"

ALTER TABLE locations CHANGE state_province state VARCHAR(50);

-- 8. Set "location_id" as PRIMARY KEY in "locations" table
SET FOREIGN_KEY_CHECKS=1;

ALTER TABLE locations ADD PRIMARY KEY (location_id);

