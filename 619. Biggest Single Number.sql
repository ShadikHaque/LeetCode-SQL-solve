--Table: MyNumbers
--
--+-------------+------+
--| Column Name | Type |
--+-------------+------+
--| num         | int  |
--+-------------+------+
--There is no primary key for this table. It may contain duplicates.
--Each row of this table contains an integer.

Select max(num) as num from MyNumbers where num in
(Select num from MyNumbers group by num having count(num)=1)

