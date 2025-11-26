# Overview

| Summary Component | Description |
| :-------------: | ------ |
| **Dataset Size** | 108k |
| **Time Range** | 2019-2022 |
| **Tools Used** | Excel, SQL, Tableau, VSCode |
| **Key Metrics** | Revenue, Order Count, Average Order Value (AOV) |
| **Outcome** | Identified 35% refund rate reduction opportunity for the Operations Team and laptop Revenue stabilisation opportunity at $2m for the Product Team. |

Jump to:

- [Executive Summary](#executive-summary)
- [Insights Deep-Dive](#insights-deep-dive)
    - [Insight 1: Sales Trends](#insight-1-trends-in-revenue-indicate-long-term-demand-normalisation)
    - [Insight 2: Loyalty Program Performance](#insight-2-loyalty-members-generate-more-revenue-share-across-2021-2022-pointing-to-improved-loyalty-program-performance)
    - [Insight 3: Product Mix](#insight-3-4-core-products-drive-96-of-revenue)
    - [Insight 4: Refund Rates](#insight-4-core-products-suffer-from-high-refund-rates-leading-to-lost-revenue-over-10)
- [Recommendations](#recommendations)
- [Caveats & Next Steps](#caveats--next-steps)
- [Appendix](#appendix)

# Project Background
<center> <img src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/WebOne%20Gadgets%20Logo.png" alt="WebOne Gadgets Logo" width="200" height="200"> </center>

WebOne Gadgets is a global **e-commerce retailer that sells electronics from popular brands** like Apple, Samsung, and Lenovo (ThinkPad) since late-2018. Its messy dataset contains 108k transactions recorded across 4 years (2019-2022) and includes performance insights that the data team seeks to help the company discover.

Partnering with the Head of Operations, the Data Analytics Team at WebOne reports on findings related to sales trends across seasons, loyalty program performance, product performance, and refund rates. Recommendations enable the Finance, Marketing, Product, and Operations Teams to improve day-to-day processes and deliver top-notch products to customers around the world.

**Business questions impacting the Finance, Marketing, Product, and Operations Teams:**
1. **What were our overall sales trends?**
2. **How has the loyalty program performed and should we continue it?**
3. **How can we optimise our portfolio based on product performance?**
4. **What are our refund rates and how do they compare with the e-commerce industry?**

The project's **North Star Metrics** are:
- **Revenue**: Total sales in USD.
- **Order Count**: Number of orders fulfilled.
- **Average Order Value (AOV)**: Sale in USD per order.

View dataset ERD [here](https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/ERD.png).

<div style="page-break-after: always"></div>

# Executive Summary

<center> <img alt="Combi chart showing AOV & Revenue per month over 4Y" src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Sales%20Trends%20-%20Revenue%20%26%20AOV.png" > </center>

North Star Metric overview: **Revenue - $28M**, **Order Count - 108k**, **AOV - $260**.

**Revenue growth was anchored to the Covid-19 pandemic**: 162% Revenue growth in 2020 over 2019. Cheaper & fewer orders then followed, with Revenue dropping by 50% & AOV by 23% by 2022.
- **Non-Members purchasing laptops drove the pandemic surge**, with 76% of Revenue in 2019-2020 coming from this segment, indicating one-off purchases.
- **By contrast, post-pandemic, Loyalty Members sustained company Revenues** contributing 54% Revenue across 2021 & 2022 and purchasing pricier products than Non-Members.
- **4 core products drove 96% of Revenue**: 27" 4K Gaming Monitor ($9.9m), Apple Airpods ($7.7m), Apple Macbook Air Laptop ($6.3m), & Lenovo ThinkPad Laptop ($3.2m).
- **All core products had high refund rates**, with laptop refund rates rising to 16%.

Based on our findings, we recommend the following:
- **Product Team - introduce mid-tier laptops** to capture price sensitive demand and stabilise category Revenue around $2m.
- **Marketing Team - introduce membership tiers** to strengthen loyalty program, expected to increase Loyalty Member Revenue & Order Count.
- **Operations Team - implement stringent quality control checks on laptops** to reduce refunds by 35%.

<div style="page-break-after: always"></div>

# Insights Deep-Dive
## Insight 1: Trends in Revenue indicate long-term demand normalisation

<center> <img alt="Heatmap showing quarter-over-quarter growth rates" src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Quarterly%20Revenue%20Growth.png" width=95%> </center>

- **2020 was WebOne's best-performing year for Revenue ($10.1m) & AOV ($300), while for Order Count, it was 2021 (35k)**. The company's inaugural year, 2019, was the worst performer for Revenue ($3.8m), AOV ($230), and Order Count (17k).
- Quarterly Revenue growth peaked in Q2-2020 (+53%). Sustained growth continued to Q4-2020, its best-performing quarter with Revenue $3m.
- In 2022, Revenue shrunk in all quarters, especially in Q4 (-48%). **Q4-2022 was the company's worst performing quarter with $648k Revenue**.

For the Finance Team, this **demand normalisation back to pre-pandemic levels should be reflected in 2023 forecasts** to avoid overspending and spiraling losses.

<div style="page-break-after: always"></div>

### Demand Normalisation Impacts Seasonality
<center> <img alt="Candle chart showing month-over-month growth rates" src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Monthly%20Growth%20Rates.png" width=95% > </center>

- **Order Count grew between 12% & 20% during September in 2019, 2020, & 2021. However, it fell by 15% during September in 2022**.
- Contraction magnitude in October 2022 (-47%) was considerably higher than previous years (-21% to -27%).
- Growth in November & December 2022 was consistent with past seasonal patterns. However, Order Count grew from a lower base (825 in Oct-22) than in previous years (1.2k-2.6k in Oct-19 to Oct-21), leading to the exceptionally poor Q4-2022.

For the Marketing Team, **Back-to-School & Holiday seasons represent important spending surges during the year**. They should increase marketing around this time to better respond to demand in the future and avoid a repeat of the underwhelming Q4-2022.

<div style="page-break-after: always"></div>

## Insight 2: Loyalty Members Generate More Revenue Share Across 2021-2022, Pointing to Improved Loyalty Program Performance

<center> <img alt="100% Area chart showing member vs non-member Revenue (top) & OC (bottom)" src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Loyalty%20Rev_OC.png" width=95% > </center>

- Across 2021 & 2022, Loyalty Members contributed $7.6m to Revenue at an AOV of $245 whereas Non-Members contributed $6.5m Revenue at an AOV of $239.
- By contrast, across 2019 & 2020, Loyalty Members contributed $3.4m Revenue at an AOV of $205 whereas Non-Members contributed $10.6m Revenue at an AOV of $288.
- Loyalty Member Revenue & Order Count share once again dropped below 50% by Q4-2022, impacting Back-to-School & Holiday Season sales.

For the Marketing Team, this **123% improvement in loyalty program performance over 4 years underlines the program's long-term value to the company** and suggests a need to re-engage with Loyalty Members to correct the trend reversal from Q4-2022.

<div style="page-break-after: always"></div>

### Marketing Channels Performance Improves for Loyalty Members & Declines for Non-Members

<center> <img alt="Stacked bar chart showing 19-20 & 21-22 trends in email & direct marketing channels across loyalty status" src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Loyalty%20Channels.png" width=95% > </center>

- **Direct marketing makes up 83% of Revenue** followed by Email (12%) across 2019-2022. 36% ($8.4m) of Direct & 65% ($2.2m) of Email Revenues are from Loyalty Members.
- In 2021 & 2022, Loyalty Members converted via direct & email channels generated more value than in 2019 & 2020: 119% (direct) & 134% (email) increase in Revenue, and 53% ($231, email) increase in AOV, but AOV decreased by 3% to $252 from the direct channel.
- In 2021 & 2022, Non-Members converted via direct & email channels generated less value than in 2019 & 2020. 40% (direct) & 25% (email) decrease in Revenue, and 11% ($271, direct) & 51% ($109, email) decrease in AOV.

For the Marketing & Product Teams, **overall direct channel performance and high Non-Member AOV suggests well-positioned products successfully reached Non-Members through SEO** and instigated one-off purchases. The recent divergence in channel performance suggests that **product positioning is now more attractive for Loyalty Members and has become less attractive to Non-Members**.

<div style="page-break-after: always"></div>

## Insight 3: Four Core Products Drive 96% of Revenue

<center> <img alt="Multiple Line chart showing revenue across 4 products" src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Product%20Revenues.png" width=95% > </center>

- The 27" 4K Gaming Monitor, Apple Airpods Headphones, Apple Macbook Air Laptop, and Lenovo ThinkPad Laptop together consistently made up 96% of Revenue.
- **Revenue share of the two laptops reached 42% ($4.2m) in 2020, and fell to 27% ($1.4m) by 2022**, because of fewer orders. AOVs tend to be high ($1.1k-$1.6k), suggesting reduced demand for high-end products.
- Revenue share of the Samsung Webcam & Apple iPhone have consistently been low (1.3% & 0.8% respectively), suggesting potential room for growth.

For the Product Team, **a loss in Revenue for high-value products implies increased price sensitivity**. WebOne may need to divest away from high-value products to reach a more sensitive market segment.

<div style="page-break-after: always"></div>

### Loyalty Members Prefer Accessories & Pay More than Non-Members

<center> <img alt="Scatterplot showing member vs non-member differences in preferences & sensitivity" src ="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Loyalty%20Products.png" width=95% > </center>

- Loyalty Members pay 15% more (AOV $457) for the Gaming Monitor & 9% more for the Macbook (AOV $1721) on average than non-members (AOV $397 & $1574 respectively).
- Non-Members contributed to 90% ($5.6m) of Revenue for the Macbook. Loyalty Member Revenue share was more competitive for other core products (48%).
- Loyalty Members purchase more accessories (Airpods, Webcam) than Non-Members, and have 0 iPhone purchases.

For the Product & Marketing Teams, this suggests that **the company may have used deep discounts to attract one-off purchases from Non-Members**.

<div style="page-break-after: always"></div>

## Insight 4: Core Products Suffer From High Refund Rates Leading to Lost Revenue Over 10%

<center> <img alt="Gantt chart showing product-wise refund rates" src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Product%20Refund%20Rates.png" width=95% > </center>

The **overall refund rate was estimated at 7.8%**. [While lower than industry average of 10%](https://www.channelwill.com/blogs/ecommerce-return-rates/), a deeper dive presents a different story:

- **The refund rate for laptops was 16%** which suggests quality control issues.
- **AOV for refunded products was high, at $416**. Compared to overall AOV ($260), it's clear that customers are unhappier with & seek refunds for pricier products, leading to lost revenue over 10%.

<center> <img src="https://raw.githubusercontent.com/Shree-Analyst/WebOne_ECommerce_Analysis/main/Visualisations/Loyalty_Products%20Refund%20Rate%20Table.png" alt="Table showing product-wise refund rates for loyalty members" width=50%> </center>

- **Loyalty Members sought nearly twice as many refunds as Non-Members: 11.3% vs 5.8%**.
- Apart from Apple Macbook Air Laptops, Loyalty Members sought more refunds for core products.

While this may suggest overly lenient refund policies in the loyalty program, **a combination of higher prices paid & higher refunds sought by Loyalty Members suggests frequent displeasure with the quality of products they receive**. Therefore, for the Operations Team, this suggests potential quality control issues with most products, especially laptops.

<div style="page-break-after: always"></div>

# Recommendations
Our insights enable the **Marketing, Product, Finance, and Operations Teams to stabilise Revenue, improve loyalty program performance, introduce new revenue streams, and reduce refunds**. Based on our findings, we recommend the following:

- **Revise 2023 forecasts to pre-pandemic baseline**: due to long-term demand normalisation, we recommend the Finance Team to revise Revenue forecasts for 2023 to the pre-pandemic baseline of $3.9m. This is **expected to avoid over-spending in 2023 and shield from spiraling losses**.
- **Introduce mid-tier laptops & tablets**: to capture price-sensitive demand due to falling AOV & laptop Revenue, we recommend the Product Team to introduce mid-tier laptops & mid-range products like tablets. This would **stabilise Laptop Revenues around $2m and add Revenue from tablets**.
- **Increase marketing efforts leading up to Back-to-School and Holiday seasons**: to capture increased demand, we recommend the Marketing Team to increase marketing efforts in mid-August and mid-October. This would **increase seasonal Revenue by 50%** and bring it back to the pre-pandemic baseline.
- **Re-engage with Loyalty Members through member-only products**: to respond to reduced member sales in Q4-2022, we recommend the Marketing & Product Teams to introduce member-only products like accessories (keyboards, headset) or gaming consoles. This is **expected to increase Loyalty Member Revenue & AOV**.
- **Introduce Membership tiers to the loyalty program**: we recommend the Marketing Team to introduce tiered membership to attract loyalty members across various levels of price sensitivity. This is **expected to increase loyalty program signups & Revenue**.
- **Implement stringent quality control checks for laptops**: we recommend the Operations Team to implement strict quality control checks on goods reception and prior to shipping. This would **reduce laptop refund rates by 35% to be aligned with the industry benchmark of 10%**.

<div style="page-break-after: always"></div>

# Caveats & Next Steps

We acknowledge the following limitations in our analysis which require work with the Data Engineering Team:
- 169 (0.2%) duplicate entries were found which were included in the analysis, slightly compromising accuracy.
- 1.3% of records under Marketing Channel were blank, which were imputed with 'unknown'.
- No refunds were recorded after 14/07/2021. Refund Rate estimates were calculated based on 69k (64%) orders out of 108k total records.

We recommend to work with the Marketing & Operations Teams to dive deeper into this data:
- Calcaulte Customer Lifetime Value (CLV) & conduct RFM (Recency-Frequency-Monetary Value) segmentation analysis for each customer.
- Introduce country & region as dimensions for targeted geographical analyses.
- Introduce suppliers as a dimension to investigate high refund rates.
- Estimate churn probability for each customer and refund probability for each order, working with the Data Science Team.

# Appendix

View SQL queries used to answer stakeholder questions [here](https://github.com/Shree-Analyst/WebOne_ECommerce_Analysis/blob/main/Queries.sql).

Tools used: Excel, SQL, Tableau, VSCode, GitHub.

Technical process:
- used CLEAN framework to conceptualise & clean data. Noted issues encountered in documentation.
- used SCAN framework to conduct exploratory analysis in Excel using calculated functions, charts, and pivot tables.
- used SQL in BigQuery to answer ad-hoc stakeholder questions and prepare data for statistical testing.
- used Excel & confidence interval formulas to estimate real refund rates.
- used Tableau to create & format relevant charts to be included in report.
- used VSCode to write README in markdown & uploaded to GitHub.