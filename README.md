# Public repository

All the publicly shared projects will be stored here. Additionally, a short description of each project.

## They come in threes

Three docker containers:
* **Cultivator**: Has the instructions to create new data
* **Hoarder**: Has the capacity to store and manipulate data
* **Tattletale**: Has the means to reveal the data
    
## TODO:
* **DOCUMENTATION**
* **Cultivator**:
    * Create Docker container for the database
    * Create database:
        * Config
        * Schemas
            * Seed
            * Export
        * Tables
            * Seed data
                * Beers
                * Breweries
                * Customers
        * Seed data
    * Create logic to create data
        * Transactions
        * Beers
        * Customers
        * Breweries
    * Data transfer to Hoarder
        * Views for queries
        * Export files
        * ???
* **Hoarder**:
    * Create Docker container for the database
    * Create database:
        * Config
        * Schemas
            * Import
            * Master
            * Transactions
            * Export
        * Tables
        * Seed data
    * Create transformation and cleanup logic
    * Data transfer from Cultivator
        * Views for queries
        * Export files
        * ???
    * Data transfer to Tattletale
        * Views for queries  
