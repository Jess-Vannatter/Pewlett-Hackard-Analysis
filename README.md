# Pewlett-Hackard-Analysis

## Overview of Analysis

### Purpose 
-     Their were two main objectives of this analysis. The first was to determine the number of retiring employees per title by creating three new tables from the from the EmploymentDb datatbase we had previously been working on. The previous lists determined possible employees that could be retiring based on their date of birth ragned from January 1, 1952 and December 31, 1955. These new tables will allow the compnay to directely see which positions/ titles have the most employee's retiring in the upcoming years and to have a better idea of which positions they will need to focus on once the re-hiring process begins. You can see this stored in the `unique_titles.csv` located int he Data folder of the current repository.
-     The second objective was to pin point the employees that are eligible to move in to a new "mentoprship" program. This program will be employed as an attempt to allow some of the possible retiree's in the coming years to move in to a part-time mentorship position to help train the newley hired employees, instead of retiring fully. This list provides managment which employee's could possibly be eligible based on their birth dates, ranged from January 1, 1965 and December 31, 1965 and is stored in the `mentorship_eligibilty.csv`.

## Results
-  Senior Engineering and Senior Staff positions will be impacted the most by the retiring wave in the upcoming years. These two positions make up over 70% of the retirment eligible employee's. You can see this below and in the `retiring_titles.csv' file.
""

-   I am not clear on what determines a "Senior" level Engineer or Staff memeber. But I would assume that the new Senior staff/ Engineer positions would be drawn from the current "Engineer' and "Staff" employee pools. Meaning that once the reitring Wave begins there will be a lot of new opeinings in these two positions (senior Engineer and Senior Staff) which would could be filld by promoting the current Engineering and Staff employee's in to those newly vacant roles. That would cause a need to hire new employees to then fill the Engineering and staff positions that were promoted to senior positions. There is also an opputubity to possibly promote some "Assistant Engineers" (if they qualify) to possible Engineering positions.  

-   If the "Mentorship" program is approved and employed, this would work perfectly to allow some of the senior positions that will be retiring in the next couple of years or so to train and develop not only the new senior employees but to also train and develop the newley hired or promoted Engineering and Staff employee's.

-   Lastly, when comparing the employee pools based on birth_date range (January 1, 1952 and December 31, 1955 VS January 1, 1965 and December 31, 1965) there seems to be a drastic difference in number of employees. Event though the ranges are different, in that one is a 4 year period from 1952 to 1955 and the other is a one year period just pertaining to 1965. There were 72,458 employees that fall in to the 1952 - 1955 range while only 1,549 employees that fit in to the employee's born in 1965 pool. This would suggest that in order for the mentoring program to be successful they may want to widen that range by a couple of years (from just 1965 to possbily 1962 - 1965). Or else there would not be enough of Mentors to to go around to be able to sufficiently train and develop the massive number of new hires the company will need in the upcoming years.

## Summary 
-   How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    * Based off of the Unique_titles Table"" there will be over 70,000 employees that will be retirment eligible based on age in the upcoming years. That doesnt mean that the employees will retire at the same time or that they all will  be eligible to retire that same year.  It might be best to break down this information even further to able to determine how many employees will be eligible to retire by each year. If we assume the average eligible age to retire is 62. Then it would help to determine the number of employees born just in 1952, as they will be eligible to retire in 2014. Then repeat that for employee's born in 1953, 1954, and so on. That would give the company a better picture of the exact number of employees they will need to have hired to fill possible gaps for each specific year. Then to further prepare for that, we could provide another table to show the number of retiremnt eligible employees for that specific year based on title/ role to allow the company to poin point what exact roles the company needs to focus on to re-hire for that year.
    
    
-   Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  * I touched upon the issue of not having enogh "mentor" eligible employees above in the results section. It may be best to re-run that query and widen the birth_date range  by a coupe of years to allow more employees to be eligible to become possible mentors. Espescially because once they move to those positions, their position may need filled at that point. WHich only creates another new Hire/ employee in a new role that may need to be trained/ developed. The raneg may not need to eb widened by an amount to match the number of retiring employees, as e can assume a "mentor" can mentor more than one new hire. But in order to put the program in a position that is set up for success you would not want to over work the Part-time Mentor employees. This is also espiscially true because the program wouuld be new and there may be a learning curve to be comoing an effective mentor. Lastly, another reason to wident hat birth date range, is because not all of the employees within that range (born in 1965) may not want to become mentors or work part-time.
