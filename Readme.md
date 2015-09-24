<!-- R Commander Markdown Template -->

**   **PLEASE READ CAREFULLY EVERYTHING WHAT FOLLOWS :**



#### data.analysis@numericable.fr

#### 2015-09-24

#### Rscript : run_analysis.R


------------------------------------------------------------------------------------------
1. IMPORTANT :
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
Please ensure you have the latest data.table package installed,
as the 1.9.4 or any lower version does contain a bug which causes buffer overflow,
( ... a mismatch between variable declaration and it's memory space allocated), 
leading to R crash when loading the file ! 

**_I STRONGLY ADVISE_** to check the installed package version, **_BEFORE_** you load any file from your working directory :

**packageVersion('data.table')**

If a version 1.9.4 or below is displayed, then install the last version before you start :

**library(devtools)**

**install_github("Rdatatable/data.table",  build_vignettes = FALSE)**

------------------------------------------------------------------------------------------
2. INITIAL FILE MANIPULATIONS :
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
**These files should be extracted to your working directory BEFORE you launch the script:**

* features.txt ; subject_test.txt; subject_train.txt
* X_test.txt ; y_test.txt
* X_train.txt ; y_train.txt

------------------------------------------------------------------------------------------
3. THE PROCESS :
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
1. The script loads separately both train and test dataset and perform merges to have two
   separate and complete dataframes with participants,activities and variable names in each
   of them.
2. Both files are appended to , creating an intermediate dataframe : Merged.
3. Only the variables with mean and std in their names are selected for a new dataframe :
   ReducedDataSet , recorded as " ReducedDataSet.csv" in the working directory.
4. The final operation consist in summarization by column to get the average of the variable
   by a specific participant and activity.

------------------------------------------------------------------------------------------
4. THE OUTCOME :
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

>**The resulting dataframe should contain 180 records an is written to the working directory as
  a "FinalDataSet.csv" file.**








