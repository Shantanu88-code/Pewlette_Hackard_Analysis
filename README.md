# Pewlette_Hackard_Analysis

# Overview:

Pewlette Hacakard is a company with several thousands employees. There are a lot of employees who are going to retire termed as 'upcoming silver tsunami', so the company has few objectives. First is figuring out which positions need to be filled as there will be thousands of job openings. To analyse mass potential vacancies, Bobby from HR will look at number of current employees and their current titles, that will be retiring. Thus helping Bobby's manager to prepare for retirement packages. Also, another task is to figure out how many of those employees will be eligible for mentorship. To do this, we analysed primary key and foreign keys to establish relationship between different tables.

![EmployeeDB](https://user-images.githubusercontent.com/86980240/137598238-4c639c2d-a0e4-469a-bf53-cc400d441341.png)


# Results: 

Firstly, we analysed the number of employees with their titles that are retiring. At first we had over data of over 130,000 rows which is a vast. But there were some employees that were repeated i.e. few employees got promoted over the period of time.

<img width="347" alt="Promoted" src="https://user-images.githubusercontent.com/86980240/137598474-f1ecdec8-f101-4003-9672-96e7e6397459.png">

There was no need to include former designations as it would make our analysis lengthy and complicated so, we need the most recent designations of those particular employees. To avoid complications, we filtered through the data on the basis of birth date between 1952-01-01 to 1955-12-31. After removing duplicate rows we can see the company has about 90,398 employees that are going to retire, truly a 'silver tsunami'

<img width="292" alt="Titles" src="https://user-images.githubusercontent.com/86980240/137598344-8462871a-c86d-4792-9101-d14b29559b6b.png">

So, we counted the number of employees with their current title, who are going to retire, to provide insights on potential number of vacancies per title. What is fascinating is there are only 2 managers for several departments.

<img width="159" alt="Unique_title_count" src="https://user-images.githubusercontent.com/86980240/137598229-d57b78f4-c448-4d97-87b5-4d4f79a33f32.png">

Then finally we looked at employees that are eligible for mentorship. We found out that there are only 1549 employees eligible out of 90,398. It can be seen in mentorship_eligibility csv.


# Summary :

# How many roles will need to be filled as the "silver tsunami" begins to make an impact?

With this analysis, it is evident that the company will have a really large number of vacancies which means it will need to begin an extensive hiring process in the near future. To be more specific we additionally ran some analysis to provide some insights on which departments will have job openings. The result as follows:

<img width="172" alt="Dept_vacancies" src="https://user-images.githubusercontent.com/86980240/137612411-3750d455-bb65-4c1c-93b3-b14512f5455f.png">

# Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

This seems another big challenge for the company. To sum up, there are less than 2% potential retirees who are eligible to become a mentor. The number of potential mentors are far lesser than the number of employees retiring, in each department. 

<img width="165" alt="Mentors_per_dept" src="https://user-images.githubusercontent.com/86980240/137613134-f3d9aa93-4075-4a4e-be6e-d695fb4e7954.png">

To minimise the impact of silver tsunami, Pewlette Hackard will have to start searching for suitable candidates who would require minimal directions and training. It is good that the company has people who have worked for so many years meaning, there is a chance of growth for employees with calibre. Also, expertise of current employees can be used to filter and select candidates based on qualifications and skills required for particular department and role. 





