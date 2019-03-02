# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Region.delete_all
ExperienceLevel.delete_all
Keyword.delete_all
Skill.delete_all
Company.delete_all
JobListing.delete_all
JobsKeyword.delete_all
JobsSkill.delete_all

# ____________________REGIONS_________________________________
ma = Region.create!(
  region: "MA"
)

ny = Region.create!(
  region: "NY"
)

tx = Region.create!(
  region: "TX"
)

ca = Region.create!(
  region: 'CA'
)


# ____________________EXPERIENCE LEVELS_________________________________
senior = ExperienceLevel.create!(
  experience_level: "Senior Level"
)
mid = ExperienceLevel.create!(
  experience_level: "Mid Level"
)
junior = ExperienceLevel.create!(
  experience_level: "Entry Level"
)
internship = ExperienceLevel.create!(
  experience_level: "Internship"
)

# ____________________KEYWORDS_________________________________
engineering = Keyword.create!(
  keyword: "engineering"
)

frontend = Keyword.create!(
  keyword: "frontend"
)

ecommerce = Keyword.create!(
  keyword: "eCommerce"
)

lifestyle = Keyword.create!(
  keyword: "lifestyle"
)

marketing = Keyword.create!(
  keyword: "marketing"
)

mobile = Keyword.create!(
  keyword: "mobile"
)


# ____________________SKILLS_________________________________

digsocmarketing = Skill.create!(
  skill: "Digital/Social Marketing"
)

kpi = Skill.create!(
  skill: "KPIs"
)

communication = Skill.create!(
  skill: "Communication"
)

product_management = Skill.create!(
  skill: "Product Management"
)

payroll = Skill.create!(
  skill: "Payroll"
)

excel = Skill.create!(
  skill: "Microsoft Excel"
)

googleapps = Skill.create!(
  skill: "Google Apps"
)

namely = Skill.create!(
  skill: "Namely HRIS"
)

detail = Skill.create!(
  skill: "Attention to Detail"
)

sql = Skill.create!(
  skill: "SQL"
)

ios = Skill.create!(
  skill: "iOS Development"
)

swift = Skill.create!(
  skill: "Swift"
)

object_c = Skill.create!(
  skill: "Objective-C"
)

xcode = Skill.create!(
  skill: "Xcode"
)

bash = Skill.create!(
  skill: "Bash"
)

ruby = Skill.create!(
  skill: "Ruby"
)

javascript = Skill.create!(
  skill: "JavaScript"
)

html = Skill.create!(
  skill: "HTML"
)

css = Skill.create!(
  skill: "CSS"
)

node = Skill.create!(
  skill: "Node.js"
)

react = Skill.create!(
  skill: "React"
)

python = Skill.create!(
  skill: "Python"
)

django = Skill.create!(
  skill: "Django"
)

programming = Skill.create!(
  skill: "Computer Programming"
)

# ____________________COMPANIES_________________________________
nike = Company.create!(
  name: "Nike",
  logo_url: "https://assets.themuse.com/uploaded/companies/1403/small_logo.png
",
  location: "New York City, NY",
  description: "Nike is a company based on Innovation. It is in our nature to innovate. Think something nobody else thinks, build something nobody else builds, or improve something that already exists. Curiosity is life. Assumption is death."
)

outdoor_voices = Company.create!(
  name: "Outdoor Voices",
  logo_url: "https://assets.themuse.com/uploaded/companies/738/small_logo.png",
  location: "Austin, TX",
  description: "About Outdoor Voices:
We believe in Doing Things — moving your body and having fun with friends. From dog jogs to dodgeball, we make clothes for sweating without the added pressure. Our team is made up of casual Recreationalists who approach activity with ease, humor, and delight. Since launching in 2014, Outdoor Voices has been featured in The New York Times, Vogue, Wall Street Journal, GQ, Forbes and Fast Co."
)

wsj = Company.create!(
  name: "The Wall Street Journal",
  logo_url: "https://assets.themuse.com/uploaded/companies/365/small_logo.png
",
  location: "New York City, NY",
  description: "About the Wall Street Journal

The Wall Street Journal is a global news organization that provides leading news, information, commentary and analysis. It is America's largest newspaper by total average circulation with more than 2.3 million digital and print subscribers and 36 million global digital visitors per month. Building on its heritage as the preeminent source of global business and financial news, the Journal includes coverage of U.S. & world news, politics, arts, culture, lifestyle, sports, and health. It holds 36 Pulitzer Prizes for outstanding journalism. The Wall Street Journal is published by Dow Jones, a division of News Corp. The Wall Street Journal iOS app has millions of users, and has been repeatedly featured by Apple.
"
)


wayfair = Company.create!(
  name: "Wayfair",
  logo_url: "https://assets.themuse.com/uploaded/companies/1631/small_logo.png" ,
  location: "Boston, MA",
  description: "Over the past several years, Wayfair has been heavily investing to build the best e-commerce shopping app across devices to help consumers create a home they love, wherever they may be. These efforts have resulted in a highly-rated (4.8 stars on the App Store, 4.5 stars on Google Play), awarded (won the 2018 Webby for shopping), and featured (Apple App of the Day) experience. But our job is far from finished, with substantial opportunities to deliver against a bold app vision, grow user adoption, improve innovative features like View in Room 3D and Search with Photo, and invent the next wave of revolutionary experiences."
)


# ____________________JOB LISTINGS_________________________________

wayfair_proj_manager = JobListing.create!(
  company_id: wayfair.id,
  title: "Product Manager, Mobile Apps",
  location: "Boston, MA",
  description: "We are looking for an experienced Product Manager to help us take the App to the next level of great. Your role will be to ensure that the App provides the most loyal Wayfair customers with the most delightful and immersive experience possible on their devices and unlocks a platform to acquire the next generation of Wayfair users. This role will join a growing App team that owns the product experience across all of Wayfair’s brands in all of our targeted geographies (US, Canada, UK, Germany). This role will be instrumental in growing a platform that already delivers more than $1B in annual run rate revenue.

This role offers the opportunity to transform the way millions of consumers around the world create homes they love, have a major impact at a rapidly growing $10B public company, partner with executives across the company on a high-profile initiative, and grow our existing cross-functional teams of experienced product managers, software engineers, data scientists, product designers and analysts.

### Responsibilities:

Own the product roadmap for your team, spanning iOS/Android platforms, all our retail brands and all of our international locations.  This will include a combination of building and owning some features directly (e.g., View in Room product, App onboarding experience), and enabling a large number of other teams to build new features/tools on top of our platforms.
Measure performance, keep your pulse on the customer, anticipate bottlenecks, make trade-offs and take acceptable risks to maximize the benefit for our customer and business.
Write detailed user stories and requirements for product initiatives, and assist a cross-functional team of designers, manual testers, and engineers to bring them to life.
Utilize data to understand customer needs and behaviors, and transform that knowledge into platform enhancements and new features.
Lead project planning and provide updates to stakeholders for cross-group & cross-departmental projects.
Work closely with engineering and product leadership to understand larger, department & company wide initiatives.
Help translate department initiatives into manageable, actionable components.


### Qualifications:


* 3+ years experience in e-commerce or B2C product management
* Track record of building high-impact consumer products
* Ability to think and perform both tactically and strategically
* Excellent analytical skills with demonstrated experience turning data into actionable insights
* Deep understanding of business strategy and metrics
* Passionate about building functional and engaging user experiences
* Cross functional leadership experience
* Entrepreneurial mindset, with a bias for customer focused innovation
* Ability to multi-task and work well within a dynamic, fast-paced organization
* Positive, people-oriented, and energetic attitude
* Experience managing a team is a plus
* Familiarity with Excel, SQL, and multivariate testing practices a plus
* BA with strong academic record (strong preference for quantitative, scientific, or technical backgrounds)  ",
  application_url: "http://app.jobvite.com/CompanyJobs/Job.aspx?c=qI69VfwC&j=oPv28fwe&s=TheMuse
",
  region_id: ma.id,
  experience_level_id: senior.id
)

wsj_engineer = JobListing.create!(
  company_id: wsj.id,
  title: "iOS Software Engineer",
  location: "New York City, NY",
  description: "About Our Team

We are looking for a iOS engineer to help us build and improve the Wall Street Journal app for iPhone and iPad. As a mobile engineer, you'll join our team of developers working together to bring innovative news and storytelling techniques to our mobile platform. Our team consists of iOS, Android, and backend developers working closely with product, design, and the newsroom.

About Our Work

We write all new code in Swift
We prioritize new iOS features
Use use Git for source control
We use Git Flow for building features
We code review all pull requests
We use continuous integration, with automatically deployed builds, internally and submitted to Apple
We write tests for new code
We work closely with product, design, and the newsroom
We are continually adapting and refining our process

Requirements
At least one year of iOS development experience
Experience with Swift or Objective-C (preferably both)
A Bachelor of Computer Science (or equivalent experience)
Fluency with object-oriented programming and model-view-controller architecture
Experience with Xcode and performance profiling with Instruments
Familiarity with Apple's Human Interface Guidelines

Nice to Have
Experience accessing an API, e.g., JSON or XML and displaying the downloaded content natively in an iOS app
Fluency with Scripting Languages, such as Bash, Ruby, and JavaScript
Familiarity with HTML & CSS
Node.js or other non-native app development experience
Experience with templating languages and grid-based layouts
Experience with the software development life-cycle, especially Agile and Scrum
An online technical presence, e.g., GitHub or technical writing

About the Wall Street Journal

The Wall Street Journal is a global news organization that provides leading news, information, commentary and analysis. It is America's largest newspaper by total average circulation with more than 2.3 million digital and print subscribers and 36 million global digital visitors per month. Building on its heritage as the preeminent source of global business and financial news, the Journal includes coverage of U.S. & world news, politics, arts, culture, lifestyle, sports, and health. It holds 36 Pulitzer Prizes for outstanding journalism. The Wall Street Journal is published by Dow Jones, a division of News Corp. The Wall Street Journal iOS app has millions of users, and has been repeatedly featured by Apple.

Dow Jones , Making Careers Newsworthy

All qualified applicants will receive consideration for employment without regard to race, color, religion, sex, national origin, protected veteran status, or disability status. EEO/AA/M/F/Disabled/Vets .

Dow Jones is committed to providing reasonable accommodation for qualified individuals with disabilities, in our job application and/or interview process. If you need assistance or accommodation in completing your application, due to a disability, please reach out to us at TalentResourceTeam@dowjones.com . Please put 'Reasonable Accommodation' in the subject line.

Business Area: NEWS/WSJ

Job Category: IT Development Group

About Us

Dow Jones is a global provider of news and business information, delivering content to consumers and organizations around the world across multiple formats, including print, digital, mobile and live events. Dow Jones has produced unrivaled quality content for more than 125 years and today has one of the world's largest news gathering operations globally. It produces leading publications and products including the flagship Wall Street Journal, America's largest newspaper by paid circulation; Factiva, Barron's, MarketWatch, Financial News, DJX, Dow Jones Risk & Compliance, Dow Jones Newswires, and Dow Jones VentureSource.Dow Jones is a division of News Corp (NASDAQ: NWS, NWSA; ASX: NWS, NWSLV).

Req ID: 15461",
  application_url: "https://wsj.jobs/new-york-ny/ios-software-engineer/C15EB39318EA4B31B026809DD6521907/job/?utm_medium=.JOBS%20Universe&utm_campaign=.JOBS%20XML%20Feed&utm_source=.JOBS%20XML%20Feed-DE&vs=23",
  region_id: ny.id,
  experience_level_id: mid.id
)

outdoor_frontend = JobListing.create!(
  company_id: outdoor_voices.id,
  title: "Front End Engineer",
  location: "Austin, TX",
  description: "We are looking for a Front End Engineer to join our technology team and make our digital experiences best-in-class as we build out the next great activewear brand together. The right candidate is a versatile engineer, able to jump into a team environment, and make an immediate impact while also being able to autonomously lead initiatives and drive them to completion. S/he has the ability to work across desktop and mobile, and have the attention to detail to create incredible digital user experiences.

### Responsibilities

* Ship beautiful and functional products for our customers*
Focus primarily on our eCommerce website
* Independently own feature delivery through completion
* Work directly with a design/creative team to build out experiences that differentiate OV from competitors in our space.
* Improve code quality and engineering best practices
* Work cross-functionally across business to deliver best in class experiences
* Work within an existing codebase, identify areas for improvement, and implement those improvements.
* Lead initiatives and report out status

### Qualifications

* Bachelor's degree in CS or a related technical field
* 4+ years of software development experience
* Experience with React/React Native and Javascript
* Understanding of software development life cycles to lead by example in planning and estimating out tasks for projects
* Excited about Progressive Web Apps
* Knowledge of automation/deployment best practices, and capable of building out a continuous deployment workflow
* Agile and excited to work in a start-up environment
* Ability to break down and estimate complex problems
* Ability to deliver high quality projects end to end, getting completed projects across the finish line
* Familiar with building, launching, and supporting products that are used globally
* A testing mindset and familiarity with testing strategies
* Python &/or Django experience a plus


### Compensation & Benefits:
* Competitive compensation package
* OV Benefits include flexible vacation, 75% of health care premiums, dental and vision
* The latest OV gear and—of course—Recreation ",
  application_url: "https://jobs.lever.co/outdoorvoices/6d5de52a-3901-4eba-b987-6d1eefa331b2/apply?lever-source=themuse",
  region_id: tx.id,
  experience_level_id: mid.id
)

outdoor_payroll = JobListing.create!(
  company_id: outdoor_voices.id,
  title: "Payroll Specialist",
  location: "Austin, TX",
  description: "OV is hiring a Payroll Specialist to join the People team at our Austin, TX headquarters. As our Payroll Specialist, you’ll support Team OV in all things payroll as you own the integrity of the payroll process and ensure all employees are paid correctly and in a timely manner. If you’re and HRIS whiz who is looking for the opportunity to impact and refine the payroll process, we want to hear from you!

### Responsibilities

* Process bi-weekly and semi-monthly payrolls using Namely Payroll to ensure compliance, accuracy, and efficiency.
* Process new hires, employee changes, terminations and benefit administration on the Namely HRIS side.
* Compile payroll data such as garnishments, vacation time, insurance and 401(k) deductions.
* Poll electronic time clocks (Deputy) and review the downloaded information for completeness and accuracy partnering with various department and location  supervisors for any missed times.
* Compile internal management reports from payroll system software.
* Ensure compliance and adhere to company policies relating to processing of wages and paid time off.
* Provide service to all employees regarding concerns with payroll and benefits, research and troubleshoot inquires.
* Complete any payroll and benefit related mailings, e.g. child support.
* Coordinate resolution with Namely Payroll/Benefit representatives/Insurance carriers to address any inquiries/requests on an on-going basis.
* Maintain processes and audit trails for all payroll transactions, I-9, garnishments, etc.
* Process and maintain 401(k) transactions and records.

### Qualifications

* Associate’s degree or bachelor's degree.
* At least 2 years of  multi-state payroll experience (NY and CA preferred).
* High level proficiency with Microsoft Excel.
* Experience with Google Apps (Gmail, Calendar, Drive).
* Experience with Namely HRIS and Payroll is a plus.
* High level of ownership and organization.
* Attention to detail and the ability to enter data with consistent accuracy.
* Strong, professional communication skills in listening, speaking, and writing necessary for communication with staff, service providers and coworkers over the phone, in person, and via email.
* Happy to work as a part of a team or independently, willing to communicate needs in a constructive manner as well as provide support to coworkers when needed.
* Sound judgement and the ability to make reasonable decisions in the absence of direction.
* Receptive to coaching from management, responds positively with willingness to make changes when desired.

### Compensation

* Competitive compensation.
* OV Benefits include flexible vacation, 75% of health care premiums, dental and vision.
* The latest OV gear and—of course—Recreation.
* We believe in Doing Things — moving your body and having fun with friends. From dog jogs to dodgeball, we make clothes for sweating without the added pressure. Our Recreational team is made up of joggers, dog walkers, and dribble-dribblers who approach activity with ease, humor, and delight. Since launching in 2014, Outdoor Voices and has been featured in The New York Times, Vogue, Wall Street Journal, GQ, Forbes, and Fast Co.

### Compensation & Benefits:
* Competitive compensation package
* OV Benefits include flexible vacation, 75% of health care premiums, dental and vision
* The latest OV gear and—of course—Recreation ",
  application_url: "https://jobs.lever.co/outdoorvoices/bfbc8bde-f29a-4420-abec-aaf34b2e8f9d/apply?lever-source=themuse",
  region_id: tx.id,
  experience_level_id: mid.id
)

nike_director = JobListing.create!(
  company_id: nike.id,
  title: "Senior Director, Product Marketing, SNKRS",
  location: "New York City, NY",
  description: "
s23NYC, the Nike studio based in New York responsible for the SNKRS app and Nike's sneakerhead community, is looking for a Senior Director of Product Marketing to imagine and build the future of digital community with us.

As the Senior Director of Product Marketing, you will 1) help build and execute campaigns or trials that authentically showcase our product features to the SNKRS community and 2) help position the SNKRS product to our customer segments in a manner that deepens community engagement and increases consumer happiness.

### YOUR ROLE:
* Drive the SNKRS product positioning in partnership with a cross-functional studio team (Product Overseeing, Design, Engineering)
* Create and manage campaigns that showcase SNKRS product features
* Deepen partnership with quantitative and qualitative insights teams to leverage data insights to improve consumer happiness; build tactics to enhance product 'fairness' for consumers
* Drive new pilot programs with global and geo partnership; leverage deep understanding of consumer segmentation to target new products or services (digital or physical) to under-served segments
* Provide input to seasonal pitchbacks for global and geo campaigns across all categories
* Coordinate and scale cross-functional digital marketing efforts around the world
* Manage day-to-day workload and priorities of the product marketing team, ensuring everyone brings their A game.
* Communicate campaign best practices, 'playbook', timelines, benefits and results with the larger Nike Digital Marketing org
* Partner with influencer marketing teams to manage community and product influencer outreach
* As one of the studio team leads, shape the culture and values of our studio to reflect the sneaker community we serve.


### Qualifications
* 12+ years of Digital/Social Marketing experience with multiple campaign launches that you're proud of. Background in mobile apps highly preferred
* 2-3 years working on viral/social experiences; seeking someone who knows how to hack organic growth by creating emotional, shareable experiences that earn the right to go viral.
* Deep understanding of social/viral KPIs that deepen engagement; deep understanding of A/B testing and cohort analysis to spot key trends in consumer behavior
* Ability to manage and develop high performing marketing managers
* Skilled at marketing cases with data to senior leadership, armed with an insatiable curiosity about sneaker culture and empathy for our users
* Focused on outcomes over process in a collaborative, fast-paced startup style environment
* Effective communicator, comfortable speaking in front of diverse, senior audiences
* Inspired collaborator; expert in working with cross-functional global and geo teams; can further the team agenda with sugar, not salt.

### EXTRA CREDIT:
* Startup experience
* Focus on diverse, urban communities
* Street culture enthusiast

### ABOUT s23NYC:
s23NYC is Nike's first digital experience studio and the driving force behind some of the brand's most memorable moments (as featured in Fast Company, Engadget, and TechCrunch and others). Tucked in the heart of New York's iconic Flatiron District, s23NYC is a dedicated team of marketers, designers, and engineers focused on reimagining how Nike's most dedicated fans unlock, discover, and think about their kicks. With a passion for sneakers and an emphasis on rewarding the community that loves them, s23NYC builds, designs and deploys innovative, interactive, and slightly mischievous features for the Nike SNKRS app (iOS and Android).  ",
  application_url: "https://jobs.nike.com/job/-/-/824/10621511?src=JB-12260
",
  region_id: ny.id,
  experience_level_id: senior.id
)

# ____________________JOB LISTINGS joins KEYWORDS_______________________

# wayfair_proj_manager, outdoor_payroll, outdoor_frontend, wsj_engineer, nike_director
# engineering, payroll, frontend, ecommerce, lifestyle, marketing, mobile

a = JobsKeyword.create!(
  job_id: wayfair_proj_manager.id,
  keyword_id: ecommerce.id
)
b = JobsKeyword.create!(
  job_id: outdoor_payroll.id,
  keyword_id: lifestyle.id
)


d = JobsKeyword.create!(
  job_id: outdoor_frontend.id,
  keyword_id: engineering.id
)
e = JobsKeyword.create!(
  job_id: outdoor_frontend.id,
  keyword_id: frontend.id
)
f = JobsKeyword.create!(
  job_id: wsj_engineer.id,
  keyword_id: engineering.id
)
g = JobsKeyword.create!(
  job_id: wsj_engineer.id,
  keyword_id: mobile.id
)
h = JobsKeyword.create!(
  job_id: nike_director.id,
  keyword_id: marketing.id
)
i = JobsKeyword.create!(
  job_id: nike_director.id,
  keyword_id: lifestyle.id
)


# ____________________JOB LISTINGS joins SKILLS_______________________

# wayfair_proj_manager, outdoor_payroll, outdoor_frontend, wsj_engineer, nike_director

# digsocmarketing, kpi, communication, product_management, payroll, excel, googleapps, namely, detail, sql, ios, swift, object_c, xcode, bash, ruby, javascript, html, css, node, react, python, django, programming
sj1 = JobsSkill.create!(
  job_id: wayfair_proj_manager.id,
  skill_id: sql.id
)
sj2 = JobsSkill.create!(
  job_id: wayfair_proj_manager.id,
  skill_id: excel.id
)
sj3 = JobsSkill.create!(
  job_id: outdoor_payroll.id,
  skill_id: excel.id
)
sj4 = JobsSkill.create!(
  job_id: outdoor_frontend.id,
  skill_id: javascript.id
)
sj5 = JobsSkill.create!(
  job_id: outdoor_frontend.id,
  skill_id: react.id
)
sj6 = JobsSkill.create!(
  job_id: outdoor_frontend.id,
  skill_id: python.id
)
sj7 = JobsSkill.create!(
  job_id: outdoor_frontend.id,
  skill_id: programming.id
)
sj8 = JobsSkill.create!(
  job_id: wsj_engineer.id,
  skill_id: ios.id
)
sj9 = JobsSkill.create!(
  job_id: wsj_engineer.id,
  skill_id: programming.id
)
sj10 = JobsSkill.create!(
  job_id: nike_director.id,
  skill_id: digsocmarketing.id
)
sj11 = JobsSkill.create!(
  job_id: nike_director.id,
  skill_id: kpi.id
)



# ===========================================
# ********ADDITIONAL SEEDING INFO*******
# ===========================================


e_bates = Company.create!(
  name: 'Ebates',
  logo_url: "https://assets.themuse.com/uploaded/companies/560/small_logo.png
",
  location: 'San Diego, CA',
  description: "Ebates is the leader in cash-back shopping—providing its users with the best online deals and cash back on every purchase."
)

ebates_dr_product = JobListing.create!(
  company_id: e_bates.id,
  title: "Senior Director of Product, Travel & Hotels",
  location: "San Diego, CA",
  description: "Ebates is a profitable, high growth ecommerce company based in the San Francisco Bay Area. Founded in 1998, Ebates, Inc. is the pioneer and leader of online cash back shopping and is the most popular meta-loyalty program in the world for savvy shoppers. Ebates gives cash back rewards and great deals to millions of members for starting their online shopping experience through one of Ebates' many platforms. It's easy - Ebates pays members to shop everywhere!   

In September of 2014, Ebates was acquired by Rakuten, Inc., a Japanese electronic commerce and Internet company based in Tokyo, Japan. In 2015, Forbes Magazine ranked Rakuten #19 (of 100) on their list of The World's Most Innovative Companies. Forbes also listed Rakuten #736 of the Global 2000.   

Rakuten is a very progressive company accelerating Ebates' growth with substantial capital, access to great technology, and access to international markets. Ebates offers a fast paced environment where creativity and effective teamwork and results are highly rewarded. We are changing the way people shop online and we strive to provide the best possible customer experience - not to mention cashback on every purchase - with no strings attached. In 2018, members will spend over $10 billion on Ebates' websites and earn over $300 million in cash back.   

### Job Description 

### Building a Business and Leading a Product

We are looking for a consumer-centric, technical product lead with a nose for driving business results. You are genetically a scrappy entrepreneur and in addition to having worked in an entrepreneurial startup environment, you will also have been successful in an established, world-class organization. At Ebates, you have the opportunity to lead a team that is building multiple, related front and backend products for global businesses with annual sales over a billion dollars. You will work with our CEO, our Chief Product Officer and our engineering, design and product teams to establish strategic priorities, our product roadmap, and to develop a delightful consumer experience while driving adoption and engagement. Your role will be highly cross-functional including working with a highly talented team of marketing, sales & business development, and customer service leaders to help design and execute a go-to-market plan. It will be crucial to your success that you be an innovator who understands how to craft a vision, get people excited by ideas, and rapidly drive concepts from the spec to the screen.   

The Ebates travel business is a large, high growth affiliate business. Your job is to drive category growth by enhancing the ability to drive targeted marketing, and improving the functionality of the site for discovery and conversion. In addition to our partner-based travel business, you will also manage our direct-to-consumer Ebates Hotels product and use it as a way to further enhance Ebates member experience as well as using it to drive category growth.   

### Team & Location Leadership 

In addition to managing the travel and hotels business, you'll have overall management responsibility for the San Diego office. In this role, you'll ensure that office operations are running smoothly, work to ensure that the office culture is supported and continues to demonstrate entrepreneurial zeal, and act as a champion of the San Diego office across the rest of the Ebates organization. The office manager will have a dotted-line reporting relationship with you, and you will act as the main liaison for the San Diego office with the VP Human Resources, Director of Facilities (California), COO, and other executives located in the Bay Area as necessary. You'll be responsible for team events, regular location group meetings, and working with HQ to ensure training opportunities are available and employee needs are met.   

### You will be responsible for: 

* Developing and driving a balanced consumer & merchant benefits-focused product roadmap for the front and back end of the Travel product and business 

* Creating a data and test-driven team culture focused on quality 

* Working closely with engineering to develop short and long-term features 

* Managing and scaling your high performance global team in a rapid growth environment 

* Communicating with and organizing geographically diverse cross-functional teams (San Diego, SF, San Mateo) 

* Developing the business plan and go-to-market strategy while achieving shared vision and driving execution based on analysis and data-driven decision making 

* Proactively collaborating with your Mobile, internal and external customers to develop focused priorities 

* Taking a leading role in developing key metrics and informing the understanding and ongoing dialogue between Ebates and Rakuten executive leadership 

### Your experience & qualifications: 

* Proven success taking a beta or new product and identifying how to turbocharge product and marketing-driven growth of over $1B in annual sales 

* Experience in a travel-related business, or affiliate ecommerce business 

* Experience as a leader with the ability to motivate and lead cross-functional, multi-levelled teams 

* Interest in and passion for leading a satellite office, developing and nurturing team culture, driving employee engagement 

* Proven ability to give direction and lead when faced with ambiguous situations, lack of complete data and the need to prioritize among multiple potential paths in a time sensitive manner 

* Deep understanding of technology with examples of having designed, created and delivered great consumer experiences especially for mobile products 

* Relentless focus on quality and data-driven decisions 

* Understanding of how to work effectively across channels and across borders 

* Cheerfully persistent and persuasive, results-oriented leader who knows how to hire, manage, coach and inspire talented employees across all levels to work effectively as a cohesive team 

* Highly entrepreneurial yet able to work up and down an organization to develop scalable solutions 

* Time served in ecommerce and/or payments would be a plus 

* Better sense of humor than the average bear
  ",
  application_url: "https://talent.rakuten.careers/ebates/jobs/senior-director-of-product-travel-hotels-8460?src=JB-10601
",
  region_id: ca.id,
  experience_level_id: senior.id
)

# ===========================================




ibm = Company.create!(
  name: "IBM",
  logo_url: "https://assets.themuse.com/uploaded/companies/1448/small_logo.png
",
  location: "Austin, TX",
  description: "IBM researches, develops, manufactures, and markets technology products ranging from mainframe computers to cognitive solutions, always with a core drive to innovate and explore new fields."
)

ibm_processor = JobListing.create!(
  company_id: ibm.id,
  title: "Processor Validation Engineer",
  location: "Austin, TX",
  description: " ### Job Description
IBM is looking for Software engineers to be part of the team responsible for verification and validation of the next generation IBM POWER processor module. This processor is the heart of all IBM POWER systems and IBM OPEN POWER systems. You will be writing bare metal code, that has access to all the processor resources, and will exercise the POWER processor to validate the processor architecture and all the functions. These exercisers are used for both pre and post silicon verification/validation. Work includes developing, debugging and executing tests on POWER processor design models.

### Required Technical and Professional Expertise


* Strong C Programming skills
* Strong Computer Architecture / Micro-architecture knowledge
* Good Linux skills
* Analytical and problem-solving skills


### Preferred Tech and Prof Experience

* C++ Programming.
* Scripting language (e.g. Python, PERL, Bash)
* POWER assembly language skills
* Familiarity with the POWER processor micro-architecture
* Strong Version Control skills (git)
* Verification / Validation experience


### EO Statement
IBM is committed to creating a diverse environment and is proud to be an equal opportunity employer. All qualified applicants will receive consideration for employment without regard to race, color, religion, gender, gender identity or expression, sexual orientation, national origin, genetics, disability, age, or veteran status. IBM is also committed to compliance with all fair employment practices regarding citizenship and immigration status. ",
  application_url: "https://careers.ibm.com/ShowJob/Id/501269/Processor%20Validation%20Engineer",
  region_id: tx.id,
  experience_level_id: mid.id
)

# ===========================================



att = Company.create!(
  name: "AT&T",
  logo_url: "https://assets.themuse.com/uploaded/companies/862/small_logo.png
",
  location: "Austin, TX",
  description: "Employees at AT&T are given an immense amount of opportunities to jumpstart their careers. AT&T offers staff the chance to rotate through various aspects of the company, from engineering to marketing."
)

att_account_mgr = JobListing.create!(
  company_id: att.id,
  title: "Account Manager - AlienVault",
  location: "Austin, TX",
  description: " Do you enjoy the technical passions of Cyber Security and Customer Renewals?  We're growing and looking to add customer-focused, engaging, analytical, and well-organized Cyber Security Account Managers to our team of sales professionals.  This role is focused on revenue growth, expansion, customer retention, and operational efficiency. A successful Account Manager will support the team in their initiatives to maximize revenue and margins, deepen customer relationships, and deliver customer and employee focused communication and information.

This multi-faceted position is an ideal role for an ambitious individual whose scope of responsibilities will be capped only by a willingness to take ownership and identifying opportunities for growth. As a member of The Alien Nation, you will be entering an exciting growth stage company with offices in Austin, San Mateo, Spain and Ireland.

### What our Account Managers are responsible for:

Own the ultimate success of AlienVault's customers, including customer onboarding, project success, expansion, retention, and renewals.
Ensure that customers derive maximum value from their investments in AlienVault and fully leverage their subscriptions and services on an ongoing basis.
Identify and develop new opportunities for expansion across the customer's business and collaborate with the sales team to ensure subscription growth and increased solution footprint.
Drive a seamless onboarding process and work with support and services teams to proactively manage each customer's successful deployment.
Make 40+ outbound calls daily to engage our customers and build relationships with them
Proactively manage each customer's business needs and environments, while actively seeking opportunities to up-sell, cross-sell, and generate referrals
Maintain ownership of issues until resolved and set customer expectations accordingly
Demonstrate ability to be organized, take initiative and follow up independently


### We want to know you if you are:
* 3-5+ year(s) experience in Sales or Account Management preferred
* Concise and persuasive oral and written communication skills, especially over the phone and email
* Thorough understanding of security operations and Network Infrastructures
* Exceptional management, interpersonal, and strong executive-level communication skills
* Proven project management/coordination experience
* Experience with Salesforce (or other CRM systems) is a plus
* Ability to problem solve, perform complex tasks, and prioritize multiple projects

 ",
  application_url: "https://www.att.jobs/job/-/account-manager-alienvault/117/11059692?dclid=CjgKEAiA8OjjBRD399bx7LDDoVESJABMS1AzP2BVY1b1N-hMrSCVNDa89J-UjKzYNZDcY7lIFxN7yPD_BwE
",
  region_id: tx.id,
  experience_level_id: mid.id
)

# ===========================================



wework = Company.create!(
  name: "WeWork",
  logo_url: "https://assets.themuse.com/uploaded/companies/106/small_logo.png
",
  location: "New York City, NY",
  description: "WeWork provides state-of-the-art shared meeting and office spaces all around the world."
)

ww_data = JobListing.create!(
  company_id: wework.id,
  title: "Data Engineer",
  location: "New York City, NY",
  description: " The Flatiron School is seeking a Data Engineer to get in on the ground level and help create an analysis-friendly data ecosystem. The Data Engineer will serve as the founding member of the data team and be instrumental in creating a pulse for the company to operate better. The Data Engineer will work with the Director of Data and Analytics, along with the technical architect and engineering team to create a data architecture that ensures the right information is available and accessible to ensure student success. This role will create an impact across the entire organization.

### What You'll Do

* Develop architecture for initial ETLs.

* Establish Flatiron School's Data Marts.

* Work in the team that designs, builds and maintains a suite of visual dashboards.

* Work to understand various data schemas generated by different applications.

* Communicate data-driven insights and recommendations to stakeholders.

* Identify areas for improvement in data gathering throughout our student life cycle from their first campus visit to job placement.

* Collaborate with engineers and product managers to build efficient data pipelines and data sets.

### A Successful Data Engineer is/has

* At least 1 year of experience in a similar business intelligence, data engineering, or data analysis role.

* Significant experience in designing analytical data layers and in conducting ETL with very large and complex data sets.

* A high level of ability in SQL.

* Experience working with document stores, normalization, and denormalization.

* Ability to thrive in ambiguity and take joy in owning solutions to loosely defined problems.

### Proficiency in at least one of the following:

* AWS Data pipeline

* AWS Glue

* AWS Redshift and AWS Databases or Document Stores

* AWS Lambda

* Experience with serverless scripting.

* Functional experience with programming languages (e.g. Python, Ruby, Javascript). ",
  application_url: "https://careers.wework.com/job/WEWOUSJR0025844/Data-Engineer?jobsource=recruitics&source=themuse&rx_c=&rx_medium=post&rx_paid=1&rx_source=themuse&rx_viewer=deedfee23d3911e9889799edf2c974bf4ebf9107a14b49fd963afc45e0208e92",
  region_id: ny.id,
  experience_level_id: mid.id
)

# ===========================================



peloton = Company.create!(
  name: "Peloton",
  logo_url: "https://assets.themuse.com/uploaded/companies/243/small_logo.png",
  location: "New York City, NY",
  description: "Peloton is reinventing fitness by offering live and on-demand studio workout classes through cutting-edge equipment and an award-winning iOS app."
)

peloton_front = JobListing.create!(
  company_id: peloton.id,
  title: "Frontend Engineer",
  location: "New York City, NY",
  description: " We are looking for experienced Frontend Engineers to join our growing web team who are passionate about crafting exceptional user experiences on top of a clean, scalable, performant, and robust architecture, adhering to best practices within the larger web community.

The position requires that you put users first, are self-motivated, a team player, and have strong attention to detail.

### IN THIS ROLE YOU WILL:

Work on a cross-functional agile team, collaborating closely with Product and Design to deliver elegant, intuitive, accessible, responsive, and user-friendly interfaces for www.onepeloton.com.

Develop, test, build, ship and monitor flexible e-commerce solutions, integrated with our platform and third-party partners, to showcase and sell our physical and digital products.

### THE IDEAL CANDIDATE HAS:

* 3+ years of Web Development experience
* An expert understanding of industry best practices and web standards
* Proven ability to write clean code
* Excellent communication skills
* Acute attention to detail and dedication to quality
* An agile mindset and embraces iterative design
* Background building single page applications
* Proficiency in at least one JavaScript framework like React (preferred), Vue, or similar
* Excellent time management skills
* Initiative to solve problems
* Curiosity and continuously expands their skill set
### BONUS POINTS IF YOU HAVE:

* Prior experience or exposure to Typescript
* Experience in leading teams
* Pair programming experience
* Contributions to open source projects
* Worked in a Test Driven Development (TDD) environment before
* Experience with continuous integration (CI) and continuous delivery (CD)
* Experience with Webpack and other build tools
* Experience working within e-commerce and have worked with third-party payment gateways
* Familiarity with functional programming
* Experience working with GraphQL
* Familiarity with accessibility best practices
* Experience with internationalization and localization
### ABOUT PELOTON:

Founded in 2012, Peloton is an innovative tech company that brings members the best workouts possible, all from the convenience of their own home via the Bike,Tread and iOS App platforms. Peloton uses technology and design to connect the world through fitness, empowering people to be the best version of themselves anywhere, anytime.

Peloton believes in taking risks and challenging the status quo by continuously innovating and improving. We put our users, members, and customers first and we obsess over every touch point of the member experience – be it the studio, product or showroom. We like to hire the best and encourage all our associates to be Peloton’s brand ambassadors. Most importantly, we know that together we go far.
 ",
  application_url: "https://boards.greenhouse.io/peloton/jobs/218794?gh_src=lpw50d1
",
  region_id: ny.id,
  experience_level_id: mid.id
)

# ===========================================



peloton_devops = JobListing.create!(
  company_id: peloton.id,
  title: "DevOps Engineer",
  location: "New York City, NY",
  description: "As a Senior DevOps Engineer, you will be responsible for establishing and maintaining the Continuous Integration (CI) and Continuous Deployment (CD) automation infrastructure to support Peloton’s Software Engineering team. You will work with a cross functional team to deliver scalable automation solutions to enable rapid development, configuration management of the source code and supporting test, deployment and production sustaining activities.

### Responsibilities:

* Setup and maintain a scalable, stable set of build, test and deploy jobs for the Peloton Engineering team
* Own, extend and maintain the AWS based infrastructure hosting the CI/CD tools and ensure we have scalable, global infrastructure to support our product and development team needs
* Extend the build system for new application initiatives if/when needed.
* Take ownership of core automation tools such as Gerrit, Jenkins, Github, CircleCI and extend/maintain as needed
* Ensure the infrastructure is secure, recoverable (disaster, data) and maintained (security patches, tool upgrades, etc.) and highly automated
### Requirements:

* Strong knowledge of Git (and repo) configuration management tool
* Strong knowledge of cloud base Git hosting providers like Bitbucket, GitHub and branch management and merging.
* Strong experience scripting in Python, Bash
* Experience with Java build systems, with a strong preference for Gradle
* Experienced supporting Android teams utilizing Java and/or Kotlin and have a strong testing methodology (e.g. Espresso, Robolectric and Appium)
* Knowledge of Mobile software lifecycle and continuous integration practices; prior experience with publishing applications to commercial App Stores such as Apple * App Store and/or Google Play is extremely helpful
* Demonstrated track record in developing and shipping consumer facing experiences
* Ability to provide leadership in a team environment to meet goals and deadlines
* Experience with a configuration management tool like Chef, Puppet, or Ansible a strong plus
* Prior experience shipping consumer facing products using Android is highly desired
* Prior experience with security tools and code signing is extremely helpful
* BA/BS in Computer Science, Engineering and/or equivalent industry experience is preferred
",
  application_url: "https://boards.greenhouse.io/peloton/jobs/1560822?gh_src=lpw50d1
",
  region_id: ny.id,
  experience_level_id: senior.id
)

# ===========================================





peloton_field = JobListing.create!(
  company_id: peloton.id,
  title: "Field Specialist",
  location: "San Jose, CA",
  description: "### FIELD SPECIALIST

 Founded in 2012, Peloton is an innovative tech company that has transformed the at-home fitness experience by creating a bike that merges high-design with modern technology to provide at home access to live streaming and on demand indoor cycling classes led by elite instructors. With a state of the art studio, the best instructors and content distribution, Peloton delivers an intense high-energy workout that motivates, while positively changing the mind and body – all from your home.

As a company Peloton believes in taking risks and continuously challenging the status quo by continuously innovating and improving.  We put our users, members, and customers first and we obsess over every touch point of the member experience – be it the studio, product or showroom.  We like to hire the best and encourage all our associates to think like owners.  Most importantly, we know that together we go far.

### THE ROLE:

* Deliver and assemble Peloton products and accessories in members homes
* Provide superior customer service in educating customers on product setup, features, and usage
* Perform in-home product repairs and maintenance
* Serve as Peloton product expert and brand ambassador
* $16-$19/hr DOE
### REQUIREMENTS:

* An outgoing, dynamic personality, and excellent presentation skills
* Excellent customer service skills
* Ability to work well both independently and in a team atmosphere
* A passion for fitness and exercise
* Good problem solving skills, and the ability to troubleshoot problems and think on your feet
* Ability to deal effectively with a wide range of personalities
* Must have a valid driver's license and a clean driving record
* Ability to lift up to 80 lbs
* Flexible schedule; ability to work nights, weekends, and holidays as necessary

This position involves loading, unloading and carrying Peloton Bikes and other products up to 130 lbs, sometimes up and down stairs. Ideal candidates must be able to perform physical activity for their full shift. Hours vary but typically begin between 6AM-10AM and end before 9PM. ",
  application_url: "https://boards.greenhouse.io/peloton/jobs/1257524?gh_src=lpw50d1
",
  region_id: ca.id,
  experience_level_id: mid.id
)

# ===========================================



etsy = Company.create!(
  name: "Etsy",
  logo_url: "https://assets.themuse.com/uploaded/companies/1222/small_logo.png",
  location: "New York City, NY",
  description: "Etsy creates an alternative commerce experience for creative entrepreneurs. The company connects people from around the world in a marketplace to sell and buy unique goods."
)

etsy_frontend = JobListing.create!(
  company_id: etsy.id,
  title: "Senior Frontend Software Engineer, Design Systems",
  location: "New York City, NY",
  description: "Etsy is seeking a Frontend Software Engineer to join our Design Systems team. Our team advocates for and implements frontend best practices at Etsy. We collaborate with the engineering and design organizations to build tools and systems that help Etsy build products that are fast, reliable, and accessible. Are you are an excellent communicator that can manage projects with a wide range of technical and non-technical partners and requirements? Do you have a keen eye for beautiful and user-friendly digital experiences? Do you have a desire to guide changes across every area of our website and care deeply about performance, usability, and accessibility? If any of that sounds like you, please consider applying!

The technical staff at Etsy believes that code is craft, good software and its designs are works of art, and that the work we do is part of larger creative culture represented by the hundreds of thousands of inspired artists and designers who make Etsy such a wondrous marketplace. We believe that small, empowered, self-motivated teams can do big things. We believe in measuring everything, taking advantage of our continuous deployment system to ship code early and often, and embracing a blameless culture based on trust and learning.

This opportunity is available either in the Brooklyn HQ or remotely.
### About the Role

* You’ll help us explore and apply new frontend technology on a large scale, serve as an advocate for frontend best practices, and shape how products are built at Etsy.
* While this is a frontend position, with a focus on HTML, CSS (SCSS), and deep JS knowledge, you will need to write backend code for tooling and running experiments. We use Node.js and PHP, but experience in other languages is great.
* You’ll work most closely with our designers, product managers, and other software engineers, while also meeting an array of partners from across the organization.
* We believe strongly in using both quantitative and qualitative methods to guide decisions. To that end, you'll use our in-house analytics tools to gather information and gain insights. You'll also use Etsy's Continuous Deployment architecture to push code to production early and often (and you'll probably push in your first week here).
### About You

* You’re an engineer with experience writing frontend code and deep knowledge of JavaScript.
* You have experience with multiple frontend frameworks; we primarily use jQuery and React, but alternate experience is great.
* You’re interested in observing existing development patterns, identifying their strengths and weaknesses, and designing flexible and maintainable solutions to augment those patterns.
* You have an appreciation for systems-thinking when it comes to creating reusable code and consistent user experiences.
* You care deeply about performance, usability, and accessibility on a variety of devices.
* You are comfortable working with legacy code while working towards improving it.
* You might have experience using and/or building living design systems.
* You believe that building simple, usable tools that work well together can empower engineers and designers to create better products.
* You're comfortable collaborating with teams to discuss technical and usability trade-offs (with respect to accessibility, performance, asset size, maintainability, etc.) to achieve a more successful feature.
* You are mindful of the future and strive to create reliable, documented code that other people–or you, six months into the future–will find easy to comprehend and modify.
* You love to experiment and use data to drive decision-making.
* You appreciate beautiful and usable design and consider the details in everything you do.
* You believe in the connective power of Etsy’s peer-to-peer marketplace, and have the technical skills to make it stronger.
What’s Next

Interested in working with us? Send us a cover letter and your CV or resume explaining why you’d be great for the job. We value your unique talents and point of view, so feel free to tell us what you are all about. And if you write, draw, craft, or contribute to something you’re proud of, we’d love to hear about it.

At Etsy, we believe that a diverse, equitable and inclusive workplace makes us a more relevant, more competitive, and more resilient company. We welcome people from all backgrounds, ethnicities, cultures, and experiences. Etsy is an equal opportunity employer. We do not discriminate on the basis of race, color, ancestry, religion, national origin, sexual orientation, age, citizenship, marital or family status, disability, gender identity or expression, veteran status, or any other legally protected status.   ",
  application_url: "https://jobs.lever.co/etsy/139be11f-de4c-4bf5-82ee-d1de4a630d92/apply?lever-source=themuse
",
  region_id: ny.id,
  experience_level_id: mid.id
)

# ===========================================



data_dog = Company.create!(
  name: "Datadog",
  logo_url: "https://assets.themuse.com/uploaded/companies/756/small_logo.png
",
  location: "New York City, NY",
  description: "Datadog is a SaaS-based monitoring computer software company, serving as a unifying view of IT infrastructure development for multiple tech teams."
)

datadog_engineer = JobListing.create!(
  company_id: data_dog.id,
  title: "Software Engineer - Full Stack",
  location: "New York City, NY",
  description: "### The company:
We're on a mission to build the best platform in the world for engineers to understand and scale their systems, applications, and teams. We operate at high scale—trillions of data points per day—providing always-on alerting, metrics visualization, logs, and application tracing for tens of thousands of companies. Our engineering culture values pragmatism, honesty, and simplicity to solve hard problems the right way.

### The opportunity:
Full stack engineers work across the Datadog backend and frontend—python, go, postgres, cassandra, and more on the backend and react/redux on the frontend—to build and scale new features for the core Datadog web application. Join us to build the next generation of high-scale, data-powered features for our customers.

### You will:
* Work across the stack to deliver new features from start-to-finish
* Build clean, performant APIs to power data visualizations
* Implement compelling, usable UIs; contribute to their design; and engineer them with React and Redux
* Improve performance and overcome scalability limits
* Own meaningful parts of our service, have an impact, grow with the company
* Requirements
* You have significant experience in one or more languages
* You value code simplicity, performance and details
* You are familiar with data structures and algorithms, profiling and optimization
* You have been designing and engineering UIs for several years
* You have a BS/MS/PhD in a scientific field or equivalent experience
* You want to work in a fast, high-growth startup environment that respects its engineers and customers
### Bonus points
* You have significant experience with Go, C, or Python
* You’ve worked on a large application using React, Angular, Backbone, Ember, Flux, or Redux
 Is this you? Let's chat!  ",
  application_url: "https://www.datadoghq.com/careers/detail/?gh_jid=1042811&gh_src=0sr8pf
",
  region_id: ny.id,
  experience_level_id: mid.id
)

# ===========================================



klaviyo = Company.create!(
  name: "Klaviyo",
  logo_url: "https://assets.themuse.com/uploaded/companies/11635/small_logo.png
",
  location: "Boston, MA",
  description: "Klaviyo is bringing the technology and pace of innovation that were previously only available to the largest companies to everyone."
)

klaviyo_engineer = JobListing.create!(
  company_id: klaviyo.id,
  title: "Full Stack Software Engineer
",
  location: "Boston, MA",
  description: "### Engineering at Klaviyo

Klaviyo is a Boston startup located right in the heart of downtown Boston.  We craft software helping thousands of ecommerce companies to have engaging relationships with hundreds of millions of consumers.  We love taking on tough engineering problems and look for full stack engineers who specialize in certain areas but are passionate about building, owning & scaling features end to end from scratch and breaking through any obstacle or technical challenge in their way. We push each other to move out of our comfort zone, learn new technologies and work hard to ensure each day is better than the last.

### What you’ll be doing:

* Wholly owning features that thousands of our customers rely on daily to reach 100,000,000+ of consumers to drive their business forward.
* Working on crafting our highly scalable real-time data pipeline that processes billions of events weekly across data sets growing to petabyte scale.
* Working on deep analytics system that provides insight into hundreds of terabytes of data.
* Be responsible for the mission, technical direction and operations of projects that have immediate impact.
* Helping architect and design robust and high performance data processing and storage systems leveraging new databases to serve different internal and external use cases. Contribute to open source data processing technologies.
* Contributing to the company as a subject matter expert in multiple areas, constantly pushing yourself to be a better engineer and to level up all of your peers within your team and within Klaviyo.
### We’d love to hear from you if you:

* Have experience building products that matter and pushing yourself and your team to be better engineers and build a product with passionate advocates
* Enjoy working with new technologies ranging from the frontend to backend, and are particularly passionate and an expert in multiple stack areas. You show this by * having strong and opinionated experience with various technologies and know how to pick the right tool for any job
* Love digging into performance and scalability issues to drive breakthrough solutions-- whether it's a slow loading UI or too many clicks in a workflow, a database * query timing out, or a queue that just won’t drain. You recognize all problems can be solved
* Enjoy shipping code early & often in an agile fashion, pairing with product management to craft better software by soliciting feedback from thousands of end users
* Like working on small, autonomous agile teams. At Klaviyo, you will have ownership of features, but you'll collaborate with everyone to make sure we produce the right solution
### Technologies we use

* Python, Django, Celery
* MySQL, Cassandra, RabbitMQ, Redis
* HTML, JavaScript, LESS, Backbone.js, React
* Amazon Web Services (EC2, RDS, Aurora, etc.)Terraform, Ansible, Packer, and other DevOps tools


### Life at Klaviyo

Klaviyo is a team of people who are crazy motivated by growth.

It’s what we help our customers do: grow their businesses by making it possible and easy for them to use their data to power better marketing.

It’s how we behave as individuals: we’re all deeply passionate about learning.

It’s how we manage our business: we have thousands of paying customers, we’re profitable, and we’re growing insanely fast.

And it’s what our culture is all about. Working at Klaviyo means you’ll work on things you never imagined you would; you’ll grow in ways you didn’t consider possible; and you’ll do the best work of your career with people who are just as motivated and talented as you are.

Your curiosity has led you this far, so if this sounds like your ideal place to work, apply now!

No phone calls or agency submissions, please.



Thank you!    ",
  application_url: "https://jobs.lever.co/klaviyo/a59c4fcf-3fa3-4e10-9bc7-f59339e1499e/apply?lever-source=themuse
",
  region_id: ma.id,
  experience_level_id: mid.id
)

# ===========================================





ibm_cloud = JobListing.create!(
  company_id: ibm.id,
  title: "Senior Front-End Software Developer - IBM Cloud",
  location: "Boxborough, MA",
  description: "### Job Description
A re you passionate about technology? Do you love building new things? Do you want to develop the future of IBM's Cloud offerings? If you answered YES, then we have the right opportunity for you! The shift toward the consumption of IT as a service, i.e., the cloud, is one of the most important changes to happen to our industry in decades. At IBM, we are driven to shift our technology to an as-a-service model and to help our clients transform themselves to take full advantage of the cloud. With industry leadership in analytics, security, commerce, and cognitive computing and with unmatched hardware and software design and industrial research capabilities, no other company is as well positioned to address the full opportunity of cloud computing.

The Cloud Innovation Lab is a team dedicated to ensuring that the IBM Cloud is at the forefront of cloud technology, from data center design to network architecture to storage and compute clusters to flexible infrastructure services. We are building IBM's next generation cloud platform to deliver performance and predictability for our customers' most demanding workloads, at global scale and with leadership efficiency, resiliency and security. It is an exciting time, and as a team we are driven by this incredible opportunity to thrill our clients. We are looking for experienced Front-end developers with a passion for web development and with a track record of building complex web applications.

The successful candidate will work as a Front End Software Developer as part of the Cloud Innovation team in Littleton, MA with a focus on the following key responsibilities:

* Work on scalable cloud data management technology
* Develop distributed, fault-tolerant software
* Experience developing Cloud User Experience workflows
* Creating Web and Mobile Applications
* Enhancing the Bluemix application development platform
There is no paid relocation available for this position.

USGEN2018

### Required Technical and Professional Expertise

* 5 + years of web application development experience using modern Javascript framework
* Strong Knowledge of HTML5, CSS3, and modern Javascript frameworks (React, Angular, Vue.js, Backbone etc)
* Familiarity with JavaScript test frameworks (Jasmine, Karma, Mocha etc)
* Familiarity with Javascript task automation tools (grunt, gulp etc)
* A good understanding of UI design principles and usability
* Understands REST architecture and has working knowledge of consuming REST API
* Experience working in an Agile/Scrum development process
* Experience working successfully with local and remote team members


### Preferred Tech and Prof Experience

* Extensive experience with React/Redux
* Experience with Node.js and Express
* Experience with Webpack, ES6, Promises, Babel or Browserify
* Thorough understanding of browser behavior and compatibility
* Experience with web components, and the IBM Bluemix platform


### EO Statement
IBM is committed to creating a diverse environment and is proud to be an equal opportunity employer. All qualified applicants will receive consideration for employment without regard to race, color, religion, gender, gender identity or expression, sexual orientation, national origin, genetics, disability, age, or veteran status. IBM is also committed to compliance with all fair employment practices regarding citizenship and immigration status.  ",
  application_url: "https://careers.ibm.com/ShowJob/Id/499010/Senior%20Front%20End%20Software%20Developer%20%20%20IBM%20Cloud
",
  region_id: ma.id,
  experience_level_id: mid.id
)

# ===========================================

# ____________________More......JOB LISTINGS joins KEYWORDS_______________________




product = Keyword.create!(
  keyword: "product"
)

sales = Keyword.create!(
  keyword: "sales"
)
data = Keyword.create!(
  keyword: "data"
)
flexible = Keyword.create!(
  keyword: "flexible"
)
customer_svc = Keyword.create!(
  keyword: "customer service"
)

# engineering, payroll, frontend, ecommerce, lifestyle, marketing, mobile

j = JobsKeyword.create!(
  job_id: ebates_dr_product.id,
  keyword_id: product.id
)
k = JobsKeyword.create!(
  job_id: ibm_processor.id,
  keyword_id: engineering.id
)
# ebates_dr_product, ibm_processor, att_account_mgr, ww_data,
# peloton_front, peloton_devops, peloton_field, etsy_frontend,
# datadog_engineer, klaviyo_engineer, ibm_cloud

l = JobsKeyword.create!(
  job_id: att_account_mgr.id,
  keyword_id: sales.id
)
m = JobsKeyword.create!(
  job_id: etsy_frontend.id,
  keyword_id: frontend.id
)
n = JobsKeyword.create!(
  job_id: ww_data.id,
  keyword_id: engineering.id
)
o = JobsKeyword.create!(
  job_id: ww_data.id,
  keyword_id: data.id
)
p = JobsKeyword.create!(
  job_id: peloton_front.id,
  keyword_id: engineering.id
)
q = JobsKeyword.create!(
  job_id: peloton_devops.id,
  keyword_id: engineering.id
)
r = JobsKeyword.create!(
  job_id: peloton_field.id,
  keyword_id: flexible.id
)
s = JobsKeyword.create!(
  job_id: peloton_field.id,
  keyword_id: customer_svc.id
)
t = JobsKeyword.create!(
  job_id: etsy_frontend.id,
  keyword_id: engineering.id
)
u = JobsKeyword.create!(
  job_id: datadog_engineer.id,
  keyword_id: engineering.id
)
v = JobsKeyword.create!(
  job_id: klaviyo_engineer.id,
  keyword_id: engineering.id
)
s = JobsKeyword.create!(
  job_id: ibm_cloud.id,
  keyword_id: engineering.id
)
