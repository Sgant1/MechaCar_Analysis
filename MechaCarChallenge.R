# Deliverable 1

# Technical Analysis
# 1. Download the MechaCar_mpg.csv file, and place it in the active directory for your R session.
# 2. Create a new RScript in your R source pane, name it MechaCarChallenge.RScript, and save it to your active directory.

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mechacar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# 5. Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)) 

# 7. Save your MechaCarChallenge.RScript file to your GitHub repository.

# Deliverable 2
# Techinical Analysis
# 1. Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
# 2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, 
# variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group
# each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

# Deliverable 3
# Technical Analysis
# 1. In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across 
# all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI,mu = 1500)

# 2. Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() 
# argument to determine if the PSI for each manufacturing lot is statistically different from the 
# population mean of 1,500 pounds per square inch.
  # Lot 1 Test
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot1"),mu=1500)
  # Lot 2 Test
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot2"),mu=1500)
  # Lot 3 Test
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot3"),mu=1500)
