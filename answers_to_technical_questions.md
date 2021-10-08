1. How long did you spend on the code challenge? What would you add to your solution if you had more time? If you didn't spend much time on the code challenge then use this as an opportunity to explain what you would add.
  - Spending more time on the code challenge, I would definitely add tests. TDD is not only important but critical to maintain infrastructure smooth and bug free.

2. What was the most useful feature that was added to the latest version of a language you used? Please include a snippet of code that shows how you've used it.
  - The most useful feature for me was undoubtedly is `db:truncate_all`. Since, I had to reset database multiple times when adding new models. This command was a life saver
  ```
  This is a new rails task added to support seed replant functionality.
  This task will wipe out data from all the tables for the current
  environment except the tables used internally by rails i.e
  schema_migrations and ar_internal_metadata. This command can also be used
  on its own as a convenient way to truncate data from all the tables.
```

3. How would you track down a performance issue in production? Have you ever had to do this?
  - I had some exposure to it when I was implementing Data-tables on server-side. The issue I encountered was that by making a query in the backend all the data was loading first before it could be rendered. The execution time was insane. To handle this I added pagination and modified query to request and response based on the query params.

4. Please describe yourself using JSON
```  
myself = {
    "first_name":"Paresh",
    "last_name":"Sharma",
    "email": "paresh.sharma10@gmail.com",
    "Occupation":"Software Engineer",
    "technical_skills":[
      "Ruby On Rails", "Javascript", "Python", "React", "MySQL", "MongoDB", "AWS"
    ],
    "projects":[
       {
          "coding_land": "Game web app that allows multiple users to play. The app is developed using HTML, CSS, and JavaScript library jQuery. “Coding Land” is based on a game called “Candy Land” with slight changes in rules, secret shortcuts in the game board, and nice old Mario music! The app tracks the user’s location and decides the winner if one player reaches the top first."
       },
       {
          "ez-buy": "E-commerce website where users can upload, sell, and perform full CRUD functionality on products. The app is developed using Node.js, Express.js, MongoDB (Mongoose), and front-end, back-end libraries like ejs and sessions respectively."
       },
       {
          "plantery": "Full CRUD Flask and React e-commerce app where users can add, update, delete plants. Users can also see the plants of other users on the home page. An API was created in the backend using Python-Flask, the front-end is developed using React, and all the data is stored in the PostgreSQL database."
       },
       {
          "artistic": "A social media platform for creative minds. This full-stack MERN app allows user to create their account, make a profile, post, update, delete their post & account, add friends, and message each other. The backend API is created by using express and node. React is the front-end framework and MongoDB is the database for this project. JavaScript library Socket.io is in use for the messaging feature."
       }
    ],
    "work_experience":[
       {
          "fawkes_health": "Proud to be working with a team that is innovating the healthcare cash management industry. Continue to develop and finding new solutions to make our Cash Management Applications Software a one-stop shop for the clients. This significantly reduces the time and effort to reconcile transactions, finding remittances, matching 835’s, 837’s, and performing crud operations for App Batches based on allowed associations. Directly reporting to CEO and leading the projects for mid to large scale clients. Technologies: – Ruby on Rails, JavaScript, MySQL, AWS, Bootstrap, Google products, Slack."
       },
       {
          "general_assembly": "Creating and updating the course curriculum for each cohort, Assisting the lead instructor with student success, i.e., homework grading, attendance, updating, and use of tech stack. Helping students with project and homework completion, guiding and teaching students about industry best practices and problem-solving skills Technologies: – JavaScript, Python, React, Express, SQL, NoSQL, Bootstrap, CSS, Slack."
       },
       {
          "patriot_steel": "Co-led the project on PSFI’s employee’s healthcare plan, designed the program, and achieved the most suitable health and welfare plans by developing financial and economical metrics. Subject matter expert for accounts and finance, including researching and analyzing data and preparing reconciliations. Led the team with the implementation and launch of new plans and programs to improve operational efficiency and achieve results."
       },
       {
          "mafricom_sarl": "In my role as a Sales Manager, I was responsible for overseeing the primary market and outskirts region of Pointe Noire, Congo. Directly responsible for increasing yearly territory sales 35% in the first year and up to 50% in the second year. 75+ robust and sustainable network of clients within the assigned geographic area, leveraging strong listening, presentation, and closing skills to optimize sales results despite previously dominant competitor advantage. Led the team to introduce and establish new product lines. Actively organized events for brand development."
       }
    ]
 }
]
```
