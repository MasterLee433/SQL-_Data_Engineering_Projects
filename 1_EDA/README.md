
# 📊 SQL Job Market Analysis
# Exploratory Data Analysis of the Data Engineering Job Market Using SQL

![Project 1 Overview](../1_EDA\1_1_Project1_EDA.png)


# 🚀 Project Overview

This project explores the Data Engineering job market using SQL to identify the skills employers are looking for, how frequently those skills appear in job postings, and which skills provide the strongest combination of market demand and salary potential.

The analysis was designed around a practical career question:

Which Data Engineering skills should I prioritize based on employer demand and compensation?

Using a dataset of job postings, I performed three complementary analyses:

# 🔎 Skill Demand	💰 Salary Analysis	🎯 Optimal Skills
Identified the most frequently requested skills	Compared median salaries across skills	Combined salary and demand into one metric

The project demonstrates my ability to move from:

Raw Data → SQL Analysis → Statistical Metrics → Visualization → Business Insights

# 🎯 Business Questions

The analysis focuses on three key questions:

1. What skills are most demanded?

Which technical skills appear most frequently in Data Engineering job postings?

2. Which skills are associated with higher salaries?

Among remote Data Engineering positions, which skills have the highest median annual salaries?

3. Which skills provide the best balance?

Which skills combine strong compensation with meaningful employer demand?

# 🛠️ Tools & Technologies
Category	Tools
Query Language	SQL
Database	DuckDB / MotherDuck
Analysis	Exploratory Data Analysis (EDA)
Data Manipulation	JOINs, GROUP BY, HAVING, aggregations
Statistical Analysis	Median, COUNT, logarithmic transformation
Visualization	SQL-driven visualizations
Development	VS Code
Version Control	Git / GitHub
# 🔍 Analysis 1 — Most In-Demand Data Engineering Skills

The first analysis examined the frequency of technical skills across Data Engineering job postings.

Key Findings
Skill	Job Postings
SQL	29,221
Python	28,776
AWS	17,823
Azure	14,143
Spark	12,799
Airflow	9,996
Snowflake	8,639
Databricks	8,183
GCP	6,446
💡 Insight

The results highlight a strong foundation around:

SQL + Python + Cloud + Distributed Processing + Data Orchestration

This demonstrates that modern Data Engineering extends beyond querying databases. Engineers need to understand how data moves through cloud platforms, processing frameworks, pipelines, warehouses and orchestration systems.

# 💰 Analysis 2 — Skills by Median Salary

The second analysis focused specifically on remote Data Engineer positions with reported annual salaries.

Skills were included only when they appeared in more than 100 job postings.

Key Findings
Skill	Median Salary	Demand
Rust	$210,000	232
Terraform	$184,000	3,248
Golang	$184,000	912
Spring	$175,500	364
Neo4j	$170,000	277
GraphQL	$167,500	445
FastAPI	$157,500	204
Kubernetes	$150,500	4,202
Airflow	$150,000	9,996
💡 Insight

The highest-paying skills were not necessarily the most frequently requested.

For example, Rust had the highest median salary in this analysis, but its demand was substantially lower than skills such as Airflow.

This highlights an important analytical distinction:

Salary and demand represent different dimensions of the job market.

A skill can have high compensation while appearing in relatively few job postings.

# 🎯 Analysis 3 — Optimal Data Engineering Skills

To combine compensation and demand, I created an Optimal Skill Score.

Formula
Optimal Score =
(Median Salary × ln(Demand Count)) / 1,000,000

The logarithmic transformation reduces the influence of extremely high job-posting counts while still rewarding skills with broader market demand.

Top Results
Rank	Skill	Median Salary	Demand	Optimal Score
1	Terraform	$184,000	193	0.97
2	Python	$135,000	1,133	0.95
3	SQL	$130,000	1,128	0.91
4	AWS	$137,320	783	0.91
5	Airflow	$150,000	386	0.89
6	Spark	$140,000	503	0.87
7	Snowflake	$135,500	438	0.82
8	Kafka	$145,000	292	0.82
9	Azure	$128,000	475	0.79
10	Kubernetes	$150,500	147	0.75
💡 Insight

The optimal analysis provides a different perspective from simply ranking skills by salary.

Terraform achieved the highest score because of its combination of high median compensation and market demand.

Meanwhile, Python and SQL ranked highly because their large number of job postings offsets their comparatively lower median salaries.

This demonstrates how multiple metrics can be combined to create a more decision-oriented analysis.

# 📊 Comparing the Three Analyses

The three analyses provide different perspectives on the same job market.

Analysis	What It Measures	Key Question
🔎 Demand	Number of job postings	What skills do employers request most?
💰 Salary	Median annual salary	Which skills are associated with higher compensation?
🎯 Optimal Score	Salary + logarithmic demand	Which skills balance compensation and demand?
Why this matters

Looking at only one metric can give an incomplete picture.

For example:

Salary Analysis

Rust → highest median salary

Demand Analysis

SQL → highest demand

Optimal Analysis

Terraform → highest combined score

The three perspectives demonstrate how the same dataset can produce different insights depending on the analytical question being asked.

🧠 Key Takeaways
1. SQL and Python remain foundational

SQL and Python demonstrate both high demand and strong salary potential in the dataset, reinforcing their importance as core Data Engineering skills.

2. Cloud knowledge is important

AWS, Azure and GCP all appear prominently, highlighting the importance of understanding cloud-based data infrastructure.

3. Data orchestration is highly relevant

Airflow combines substantial demand with strong median compensation, demonstrating the value of understanding how data pipelines are scheduled, monitored and managed.

4. Salary alone is not enough

The analysis demonstrates why evaluating a technology based only on salary can be misleading.

Demand + Compensation provide a more complete view of market opportunity.

🏗️ Data Engineering Concepts

The analysis also helped me understand how Data Analytics connects with Data Engineering.

The job-market results reveal an ecosystem built around data ingestion, transformation, orchestration, warehousing and analytics.

flowchart TD
    A[📥 Data Sources] --> B[⚙️ Data Ingestion]
    B --> C[🔄 Data Transformation]
    C --> D[✅ Data Quality]
    D --> E[🧩 Data Modelling]
    E --> F[☁️ Data Warehouse]
    F --> G[📊 Analytics]
    G --> H[📈 Business Intelligence]
    H --> I[💡 Decision Making]

    N[Airflow] -.-> B
    J[SQL • Python] -.-> C
    M[Spark • Kafka] -.-> C
    L[AWS • Azure • GCP] -.-> F
    O[Snowflake • Databricks] -.-> F

This represents the broader data lifecycle I am building toward:

Ingestion → Transformation → Quality → Modelling → Warehousing → Analytics → Decision Making

# 📈 What I Learned
SQL Skills

Through this project, I strengthened my ability to:

Write complex analytical SQL queries
Join normalized fact and dimension tables
Use INNER JOIN
Aggregate data using COUNT() and MEDIAN()
Use GROUP BY and HAVING
Apply multiple filtering conditions
Sort and rank analytical results
Create calculated metrics
Work with NULL values
Apply logarithmic transformations
Translate business questions into SQL queries
Data Analysis Skills

I also strengthened my ability to:

Perform exploratory data analysis
Identify patterns in job-market data
Compare demand against compensation
Separate demand from salary as analytical dimensions
Create custom analytical metrics
Interpret quantitative results
Translate data into actionable insights
Communicate findings through visualization
Analytical Thinking

One of the most important lessons from the project was that there is rarely one metric that completely answers a business question.

By analyzing:

Demand → Salary → Combined Opportunity

I was able to build a more complete understanding of the Data Engineering job market.

# 👨‍💻 What This Project Demonstrates
Capability	Demonstrated Through
SQL Development	Complex joins, aggregations and filtering
Data Analysis	Job-market EDA and statistical analysis
Data Modelling	Working with fact and dimension tables
Analytical Thinking	Demand vs compensation analysis
Metric Engineering	Custom Optimal Skill Score
Statistical Reasoning	Median and logarithmic transformation
Data Interpretation	Identifying patterns and market trends
Visualization	Communicating quantitative findings
Business Communication	Converting analysis into actionable insights

More importantly, the project demonstrates my ability to:

Ask a business question → Query data → Engineer metrics → Analyze patterns → Visualize results → Communicate insights

This is the same analytical workflow I aim to apply to real-world business and data-engineering problems.

📌 Future Improvements

The project can be extended by:

📊 Building an interactive Power BI dashboard
🌍 Adding geographical analysis
🔄 Comparing Data Engineering and Data Analyst roles
📈 Analyzing salary by experience level
💰 Examining salary distributions rather than only medians
🔗 Building skill co-occurrence analysis
🎯 Developing a more robust skill-value scoring methodology
☁️ Extending the analysis into a cloud data warehouse
⚙️ Building an automated ELT pipeline
👋 About Me

I am a Data Analyst transitioning into Analytics Engineering and Data Engineering, with experience across Business Intelligence, credit risk, portfolio analytics and operational data.

I enjoy working at the intersection of data, technology and business, turning complex datasets into reliable data products and insights that support better decisions.

Current Focus

SQL • Python • dbt • Git • Data Orchestration • BigQuery • Data Modelling • ETL/ELT • Business Intelligence