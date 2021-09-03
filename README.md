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

| ![connect_bq_to_looker.png](images/connect_bq_to_looker.png) |
|:--:|
| |

| ![navigate_to_marketplace.png](images/navigate_to_marketplace.png) |
|:--:|
|  |

| ![Netsuite_Looker_Marketplace_page.png](images/Netsuite_Looker_Marketplace_page.png) |
|:--:|
| |

| ![Block_installation_configuration.png](images/Block_installation_configuration.png) |
|:--:|
|  |

| ![Navigate_to_explore.png](images/Navigate_to_explore.png) |
|:--:|
|  |

| ![block_contents_overview.png](images/block_contents_overview.png) |
|:--:|
| |

| ![dashboard_selection.png](images/dashboard_selection.png) |
|:--:|
|  |

| ![save_to_dashboard.png](images/save_to_dashboard.png) |
|:--:|
|  |

| ![visualize_acquisition_cost.png](images/visualize_acquisition_cost.png) |
|:--:|
| |

| ![final_dashboard.png](images/final_dashboard.png) |
|:--:|
|  |

