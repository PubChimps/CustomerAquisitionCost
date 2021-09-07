# Customer Aquisition Cost with Fivetran, BigQuery and Looker

## Identifying the Proper Data Sources

## Moving Data to BigQuery with Fivetran


| ![ft1.png](images/ft1.png) |
|:--:|
| To start a Fivetran trial, the **E-mail** and **Company** entered cannot have been used for a trial previously. To achieve this, I created an email for this workshop and used it as the Company as well. Select *Sign up* |

| ![ft2.png](images/ft2.png) |
|:--:|
| Select *Verify your Account* in an email from sales@fivetran.com |

| ![ft3.png](images/ft3.png) |
|:--:|
| After creating a password, a Fivetran trial account has been created! Just one connector will be used in this example, select *Set up a connector* |

| ![ft4.jpeg](images/ft4.jpeg) |
|:--:|
| The data Fivetran will be brining into BigQuery is from NetSuite, search *netsuite* and select *NetSuite SuiteAnalytics*, then *Continue Setup* |

| ![ft5.png](images/ft5.png) |
|:--:|
| Using the guide on the right, fill out your NetSuite credentials, then select *TEST CONNECTION** |

| ![ft6.png](images/ft6.png) |
|:--:|
| After all connection tests pass, select *VIEW CONNECTOR* |

| ![ft7.png](images/ft7.png) |
|:--:|
| On the Connector's page, select *REVIEW SCHEMA* to select the NetSuite tables Fivetran will bring into BigQuery |


| ![ft8.png](images/ft8.png) |
|:--:|
| For Customer Acquistion Costs, the tables below will be needed, once they have been selected and unnecessary have been unselected, click *SAVE AND CONTINUE* |

```
accounting_books
accounting_periods
accounts
companies
consolidated_exchange_rates
currencies
customers
departments
expense_accounts
income_accounts
items
locations
partners
subsidiaries
transaction_lines
transactions
vendor_types
vendors
```

| ![ft9.png](images/ft9.png) |
|:--:|
| *Start Initial Sync* will begin the process of having Fivetran bring Customer Acquistion Cost data into BigQuery |

## Calculating and Displaying Customer Acquistion Costs in Looker

Once Fivetran has finished loading your initial sync of NetSuite data into BigQuery, you are ready to connect to Looker so you can get started visualizing your data. 

| ![connect_bq_to_looker.png](images/connect_bq_to_looker.png) |
|:--:|
| Start by logging into your Looker instance. If one doesn't exist already, set up your connection between BigQuery and Looker. Follow the steps in the [Looker documentation](https://docs.looker.com/setup-and-management/database-config/google-bigquery) to get set up |

| ![navigate_to_marketplace.png](images/navigate_to_marketplace.png) |
|:--:|
| Navigate to the Looker Marketplace. You can browse the full list of Looker Blocks by [searching the directory](https://looker.com/platform/directory/home) |

| ![Netsuite_Looker_Marketplace_page.png](images/Netsuite_Looker_Marketplace_page.png) |
|:--:|
| Search for the "NetSuite by Fivetran" block in the Marketplace, and navigate to the page |

| ![Block_installation_configuration.png](images/Block_installation_configuration.png) |
|:--:|
| Click install and you will be prompted for two configuration options. The "connection name" is the name of the BigQuery connection you created earlier. The "Schema Name" is the name of the BigQuery dataset into which data is transferred. |

| ![block_contents_overview.png](images/block_contents_overview.png) |
|:--:|
| Once you have installed the block in your Looker instance, you will see a list of resources added to your Looker instance. This includes three pre-built dashboards to help you review your income statement and balance sheet. However, we are most interested in the transaction details for this analysis |

## Visualize your data

| ![Navigate_to_explore.png](images/Navigate_to_explore.png) |
|:--:|
| To get started, navigate to the *Transaction Details* Explore to get started analyzing your data |

| ![visualize_acquisition_cost.png](images/visualize_acquisition_cost.png) |
|:--:|
| Start visualizing your data by selecting the "Customer Name" dimension and the "Customer Acquisition Cost" and select "Run" in the top right. You can recreate the visualization above by changing the visualization type to "Table" |

| ![save_to_dashboard.png](images/save_to_dashboard.png) |
|:--:|
| You can this visualization to a dashboard to enable easier reporting or see it alongside other visualization types |

| ![dashboard_selection.png](images/dashboard_selection.png) |
|:--:|
| You may need to create a new dashboard if one doesn't already exist for your customer acquisition cost data |

| ![final_dashboard.png](images/final_dashboard.png) |
|:--:|
| You can continue to create and add visualizations to your dashboard to develop a comprehensive overview of your customer acquisition data. You can see [the LookML for this dashboard](https://raw.githubusercontent.com/PubChimps/CustomerAquisitionCost/main/Netsuite_Looker_BigQuery/cac_demo_dashboard.lookml) to give you a head start analyzing your data |
