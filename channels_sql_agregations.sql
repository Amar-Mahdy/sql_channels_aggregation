# This query is the main query that gets all the data from the different vendors and pushes the data to the static table ... 

# Created by Amar Ibrahim

#Facebook/Instagram 2023

WITH fb_ig_2023 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Link_Clicks) AS Clicks,   
    SUM(Cost__EUR_) AS Spent,
    SUM(Reach) AS Reach, 
    SUM(Frequency) AS Frequency,
    SUM(Three_second_video_views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    CASE 
        WHEN LOWER(Publisher_platform) LIKE '%facebook%' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%audience_network' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%messenger%' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%instagram%' THEN 'FB/IG'
    ELSE "Other"
    END
    AS Channel,
    CASE
        WHEN Ad_Set_Name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Ad_Set_Name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Ad_Set_Name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Ad_Set_Name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Ad_Set_Name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Ad_Set_Name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Ad_Set_Name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Ad_Set_Name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Ad_Set_Name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Ad_Set_Name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Ad_Set_Name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

#Facebook/Instagram 2022

fb_ig_2022 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Link_Clicks) AS Clicks,   
    SUM(Cost__EUR_) AS Spent,
    SUM(Reach) AS Reach, 
    SUM(Frequency) AS Frequency,
    SUM(Three_second_video_views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    CASE 
        WHEN LOWER(Publisher_platform) LIKE '%facebook%' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%audience_network' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%messenger%' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%instagram%' THEN 'FB/IG'
    ELSE "Other"
    END
    AS Channel,
    CASE
        WHEN Ad_Set_Name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Ad_Set_Name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Ad_Set_Name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Ad_Set_Name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Ad_Set_Name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Ad_Set_Name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Ad_Set_Name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Ad_Set_Name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Ad_Set_Name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Ad_Set_Name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Ad_Set_Name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

#Facebook/Instagram 2021

fb_ig_2021 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Link_Clicks) AS Clicks,   
    SUM(Cost__EUR_) AS Spent,
    SUM(Reach) AS Reach, 
    SUM(Frequency) AS Frequency,
    SUM(Three_second_video_views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    CASE 
        WHEN LOWER(Publisher_platform) LIKE '%facebook%' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%audience_network' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%messenger%' THEN 'FB/IG'
        WHEN LOWER(Publisher_platform) LIKE '%instagram%' THEN 'FB/IG'
    ELSE "Other"
    END
    AS Channel,
    CASE
        WHEN Ad_Set_Name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Ad_Set_Name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Ad_Set_Name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Ad_Set_Name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Ad_Set_Name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Ad_Set_Name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Ad_Set_Name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Ad_Set_Name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Ad_Set_Name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Ad_Set_Name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Ad_Set_Name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

#Linkedin 2023

li_2023 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Total_spent__EUR_) AS Spent,
    SUM(Reach) AS Reach, 
    NULL AS Frequency,
    SUM(Video_views_) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    "LinkedIn" AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

#LinkedIn 2022

li_2022 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Total_spent__EUR_) AS Spent,
    SUM(Reach) AS Reach, 
    NULL AS Frequency,
    SUM(Video_views_) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    "LinkedIn" AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

#LinkedIn 2021

li_2021 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Total_spent__EUR_) AS Spent,
    SUM(Reach) AS Reach, 
    NULL AS Frequency,
    SUM(Video_views_) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    "LinkedIn" AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

# Reddit 2023

reddit_2023 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Amount_Spent) AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    SUM(Video_Views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    "Reddit" AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),


# Reddit 2022: There is no 2021 data

reddit_2022 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Amount_Spent) AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    SUM(Video_Views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    "Reddit" AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

# Google 2023

go_2023 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Cost) AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    SUM(Video_Views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    CASE
        WHEN LOWER(Advertising_channel_type) LIKE '%display%' THEN 'Display Campaign' 
        WHEN LOWER(Advertising_channel_type) LIKE '%search%' THEN 'Paid Search' 
        WHEN LOWER(Advertising_channel_type) LIKE '%video%' THEN 'Video Campaign'
        WHEN Campaign_name LIKE '%[DIS]%' THEN 'Discovery Campaign'
    ELSE "Other"
    END 
    AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

# Google - Paid Search since 2022-07-11 because Paid Search is seperate from Display & Video 

go_2022 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Cost) AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    SUM(Video_Views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    CASE
        WHEN LOWER(Advertising_channel_type) LIKE '%display%' THEN 'Display Campaign' 
        WHEN LOWER(Advertising_channel_type) LIKE '%search%' THEN 'Paid Search' 
        WHEN LOWER(Advertising_channel_type) LIKE '%video%' THEN 'Video Campaign'
        WHEN Campaign_name LIKE '%[DIS]%' THEN 'Discovery Campaign'
    ELSE "Other"
    END 
    AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

# Google 2021

go_2021 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    SUM(Impressions) AS Impressions, 
    SUM(Clicks) AS Clicks,   
    SUM(Cost) AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    SUM(Video_Views) AS Video_views,
    NULL AS Visits,
    NULL AS Job_views,
    CASE
        WHEN LOWER(Advertising_channel_type) LIKE '%display%' THEN 'Display Campaign' 
        WHEN LOWER(Advertising_channel_type) LIKE '%search%' THEN 'Paid Search' 
        WHEN LOWER(Advertising_channel_type) LIKE '%video%' THEN 'Video Campaign'
        WHEN Campaign_name LIKE '%[DIS]%' THEN 'Discovery Campaign'
    ELSE "Other"
    END 
    AS Channel,
    CASE
        WHEN Campaign_name LIKE '%EU%' THEN 'EU'
    ELSE "Other"
    END
    AS Continent,
    CASE
        WHEN LOWER(Campaign_name) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Campaign_name) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Campaign_name) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Campaign_name) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Campaign_name) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Campaign_name) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Campaign_name) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Campaign_name) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Campaign_name) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Campaign_name) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    NULL AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),


# No data for DV360 2022 Nor data for 2021 
# No data Asquared Media


# adobe 2023

adobe_2023 AS
(
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    NULL AS Impressions, 
    NULL AS Clicks,   
    NULL AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    NULL AS Video_views,
    NULL AS Visits,
    SUM(Job_Views) AS Job_views,
    Channel,
    CASE
      WHEN LOWER(Geotargeting) LIKE '%eu%' THEN 'EU'
      WHEN LOWER(Geotargeting) LIKE '%Netherlands%' THEN 'EU'
    ELSE
    "Other"
  END
    AS Continent,
    CASE
        WHEN LOWER(Target_Audience) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Target_Audience) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Target_Audience) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Target_Audience) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Target_Audience) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Target_Audience) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Target_Audience) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Target_Audience) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Target_Audience) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Target_Audience) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    SUM(Applications) AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),




#Adobe 2022

adobe_2022 AS
(   
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    NULL AS Impressions, 
    NULL AS Clicks,   
    NULL AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    NULL AS Video_views,
    NULL AS Visits,
    SUM(Job_Views) AS Job_views,
    Channel,
    CASE
      WHEN LOWER(Geotargeting) LIKE '%eu%' THEN 'EU'
      WHEN LOWER(Geotargeting) LIKE '%Netherlands%' THEN 'EU'
    ELSE
    "Other"
  END
    AS Continent,
    CASE
        WHEN LOWER(Target_Audience) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Target_Audience) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Target_Audience) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Target_Audience) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Target_Audience) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Target_Audience) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Target_Audience) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Target_Audience) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Target_Audience) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Target_Audience) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    SUM(Applications) AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

#Adobe 2021

adobe_2021 AS
(   
  SELECT 
    Date,
    CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,
    NULL AS Impressions, 
    NULL AS Clicks,   
    NULL AS Spent,
    NULL AS Reach, 
    NULL AS Frequency,
    NULL AS Video_views,
    NULL AS Visits,
    SUM(Job_Views) AS Job_views,
    Channel,
    CASE
      WHEN LOWER(Geotargeting) LIKE '%eu%' THEN 'EU'
      WHEN LOWER(Geotargeting) LIKE '%Netherlands%' THEN 'EU'
    ELSE
    "Other"
  END
    AS Continent,
    CASE
        WHEN LOWER(Target_Audience) LIKE '%customer%' THEN 'Customer Support'
        WHEN LOWER(Target_Audience) LIKE '%electrical%' THEN 'Electrical'
        WHEN LOWER(Target_Audience) LIKE '%flow and thermal%' THEN 'Flow and Thermal'
        WHEN LOWER(Target_Audience) LIKE '%software java developer%' THEN 'Java'
        WHEN LOWER(Target_Audience) LIKE '%manufacturing%' THEN 'Manufacturing'
        WHEN LOWER(Target_Audience) LIKE '%mechanical%' THEN 'Mechanical'
        WHEN LOWER(Target_Audience) LIKE '%mechatronics%' THEN 'Mechatronics'
        WHEN LOWER(Target_Audience) LIKE '%retargeting%' THEN 'Retargeting'
        WHEN LOWER(Target_Audience) LIKE '%software%' THEN 'Software'
        WHEN LOWER(Target_Audience) LIKE '%metrology%' THEN 'Metrology'
    ELSE "Other"
    END
    AS Job_Category,
    SUM(Applications) AS Applications,
    # target sheet
    CAST(NULL AS STRING) AS Target_Job_Category,
    NULL AS Target_Job_views,
    NULL AS Target_Applications,	
    NULL AS Target_Impressions,	
    NULL AS Target_Clicks,
    NULL AS Target_CTR,
    NULL AS Target_Avg__CPC,
    NULL AS Target_Conversion_rate,
    NULL AS Target_Cost_per_application,
    NULL AS Target_CPM,
    NULL AS Target_Video_Views,
    NULL AS Target_View_rate,
    NULL AS Target_Avg_CPV,
    NULL AS Target_Budget,
    NULL AS Target_Reach,
    NULL AS Target_Frequency
    FROM `project.dataset.table`
    GROUP BY Date, Channel, Continent, Job_Category
),

# CONCAT('Q',EXTRACT(QUARTER FROM Date), ' ', EXTRACT(YEAR FROM Date)) AS Period,

# Target sheet

target_sheet AS
(   
      SELECT 
        Date, 
        Period,
        NULL AS Impressions,
        NULL AS Clicks,
        NULL AS Spent,
        NULL AS Reach, 
        NULL AS Frequency,
        NULL AS Video_views,
        NULL AS Visits,
        NULL AS Job_Views,
        CASE
        WHEN LOWER(Channel) LIKE '%paid%' THEN 'Paid Search'
        WHEN LOWER(Channel) LIKE '%display%' THEN 'Display Campaign'
        WHEN LOWER(Channel) LIKE '%linked%' THEN 'LinkedIn'
        WHEN LOWER(Channel) LIKE '%reddit%' THEN 'Reddit'
        WHEN LOWER(Channel) LIKE '%display%' THEN 'Display Campaign'
        WHEN LOWER(Channel) LIKE '%Discovery%' THEN 'Discovery Campaign'
        WHEN LOWER(Channel) LIKE '%video%' THEN 'Video Campaign'
        WHEN LOWER(Channel) LIKE '%fb/ig%' THEN 'FB/IG'
        ELSE "Other"
        END
        AS Channel,
        'EU' AS Continent,
        CASE
          WHEN LOWER(Job_Category) LIKE '%manufacturing%' THEN 'Manufacturing' 
          ELSE Job_Category
          END
        AS Job_Category,
        NULL AS Applications,
        #target sheet
        Job_Category AS Target_Job_Category,
        SUM(Job_views) AS Target_Job_views,
        SUM(Applications) AS Target_Applications,	
        SUM(Impressions) AS Target_Impressions,	
        SUM(Clicks) AS Target_Clicks,
        SUM(CTR) AS Target_CTR,
        SUM(Avg__CPC) AS Target_Avg_CPC,
        SUM(Conversion_rate) AS Target_Conversion_rate,
        SUM(Cost_per_application) AS Target_Cost_per_application,
        SUM(CPM) AS Target_CPM,
        SUM(Video_views) AS Target_Video_Views,
        SUM(View_rate) AS Target_View_rate,
        SUM(Avg__CPV) AS Target_Avg_CPV,
        SUM(Budget) AS Target_Budget,
        SUM(Reach) AS Target_Reach,
        SUM(Frequency) AS Target_Frequency,
        

      FROM `project.dataset.table`
        GROUP BY Date, Channel, Continent, Job_Category, Period, Target_Job_Category
)


#UNION ALL the datasets 



SELECT * FROM fb_ig_2023
WHERE Continent = "EU"
UNION ALL
SELECT * FROM fb_ig_2022
WHERE Continent = "EU"
UNION ALL
SELECT * FROM fb_ig_2021
WHERE Continent = "EU"
UNION ALL
SELECT * FROM li_2023
WHERE Continent = "EU" 
UNION ALL
SELECT * FROM li_2022
WHERE Continent = "EU" 
UNION ALL
SELECT * FROM li_2021
WHERE Continent ="EU"
UNION ALL
SELECT * FROM reddit_2023
WHERE Continent ="EU" 
UNION ALL
SELECT * FROM reddit_2022
WHERE Continent = "EU" 
UNION ALL
SELECT * FROM go_2023
WHERE Continent ="EU"
UNION ALL
SELECT * FROM go_2022
WHERE Continent ="EU" 
UNION ALL
SELECT * FROM go_2021
WHERE Continent = "EU" 
UNION ALL
SELECT * FROM adobe_2023
WHERE Continent ="EU"
UNION ALL
SELECT * FROM adobe_2022
WHERE Continent ="EU" 
UNION ALL
SELECT * FROM adobe_2021
WHERE Continent = "EU"
UNION ALL
SELECT * FROM target_sheet
WHERE Continent = "EU"
