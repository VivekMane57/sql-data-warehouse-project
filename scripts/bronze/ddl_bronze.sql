/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/



IF OBJECT_ID('bronze.crm_cust_info','U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
    crm_cust_id INT,
    crm_cust_key NVARCHAR(50),
    crm_cust_firstname NVARCHAR(50),
    crm_cust_lastname NVARCHAR(60),
    crm_cust_material NVARCHAR(50),
    crm_cust_gen NVARCHAR(50),
    crm_cust_create_date DATE
);


IF OBJECT_ID('bronze.crm_prd_info','U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    crm_prd_id INT,
    crm_prd_key NVARCHAR(50),
    crm_prd_nm NVARCHAR(50),
    crm_prd_cost INT,
    crm_prd_line NVARCHAR(50),
    crm_prd_start DATE,
    crm_prd_end DATE
);



-- Drop and Create crm_sales_details
IF OBJECT_ID('bronze.crm_sales_details','U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    crm_sls_ord_num NVARCHAR(50),
    crm_sls_prd_key NVARCHAR(50),
    crm_sls_cust_id INT,
    crm_sls_ord_dt INT,
    crm_sls_ship_dt INT,
    crm_sls_due_dt INT,
    crm_sls_sales_dt INT,
    crm_sls_sales_quantity INT,
    crm_sls_sales_price INT
);

-- Drop and Create erp_cust_az12
IF OBJECT_ID('bronze.erp_cust_az12','U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    cid NVARCHAR(50),
    bdate DATE,
    gen NVARCHAR(10)
);

-- Drop and Create erp_loc_a101
IF OBJECT_ID('bronze.erp_loc_a101','U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
    cid NVARCHAR(50),
    cntry NVARCHAR(50)
);

-- Drop and Create erp_px_cat_g1v2 (fixed name mismatch)
IF OBJECT_ID('bronze.erp_px_cat_g1v2','U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
    id NVARCHAR(50),
    cat NVARCHAR(50),
    subcat NVARCHAR(100),
    maintenance NVARCHAR(5)
);
