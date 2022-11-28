# MechaCar Analysis Using R

## Objective

AutosRUs has tasked my team to review the new MechaCar as it has been suffering from production troubles. We will analyze the current data to see if we can assist.

## Statitical analysis techniques:
  - Linear regressions for mpg
  - PSI review on summary statistics
  - T-tests 
 

### Linear Regression Results

![1](https://user-images.githubusercontent.com/107363203/204184698-006046f1-dbc6-4e9f-8f4f-8c04945aa343.png)

### Summary of Linear Regression Results

![2](https://user-images.githubusercontent.com/107363203/204184729-74fe67c8-7891-4860-bcab-3ecd147e1f64.png)

### Analysis Review
**Which variables/coefficients provided gave a different dataset?**

vehicle length and ground-clearence are likely to add non-random variance to the MechCar, which effects the MPG.

**Is slope on linear model considered to be zero, explain?**

Looking at the regression of the slope, the p-value is 5.35e-11. Meaning that the slope is not zero.

**Linear model predict mpg of MechaCar prototypes effectively, explain?**

The adjusted R-squared value is .6825, which makes this statistically more than not able to predict the MPG of the MechaCar.

## Summary Statistics on Suspension Coils

### Total Summary
![3](https://user-images.githubusercontent.com/107363203/204184754-a7a2ae12-454d-40a3-b558-41f5960b8b6f.png)
### Lot Summary
![4](https://user-images.githubusercontent.com/107363203/204185238-c8fa311f-4354-4eb7-8191-36ed1c3325af.png)


### Analysis Review


Upon review of the Total Summary informaiton the variance is well below the need 100 PSI as dicatated by manufacturing standards. However, when the lots are sorted by their own Lot 3 is 70 PSI off. 

## T-Tests on Suspension Coils

### All Lots T-Tests
![Alltests](https://user-images.githubusercontent.com/107363203/204185293-2487393e-a555-411f-aa5d-d5ef6aa9603a.png)


### Lot 1

![lot1](https://user-images.githubusercontent.com/107363203/204185305-e2e3f0c5-9f3b-4ac3-becf-a485119826b8.png)

### Lot 2

![lot2](https://user-images.githubusercontent.com/107363203/204185323-135341b7-5591-4e80-9da6-b7c268a4c38d.png)

### Lot 3

![lot3](https://user-images.githubusercontent.com/107363203/204185336-e0f5be39-6df1-4c9d-9e45-9f6cb8b625b1.png)

### Summary of T-Tests

All Lots analysis you can see that the p-value is 0.06, this is higher than the common significance of 0.05. The mean of the three lots are statisically similar. Especially, when compared to the estimated population mean of 1,500.

- Lot 1 - has a mean of 1,500 and a p-value of 1. This lot is matching what is expected from the population. 

- Lot 2 - has a mean of 1,500 and a p-value of .60. This lot is statistically similiar to Lot 1

- Lot 3- has a mean of 1496 and a p-value of .42. This lot, which has been shown in other statistical reviews, is statistically different than the other two lots. 

## Study Design: MechaCar vs Competition

With total MPG for MechaCar being good, how does this compare to those of its competitors? If that data can be gathered, then a review can be done on MPG by AutosRUs on any competitor. With gas being close to $5 per gallon (June 2022) this will be an important factor for purchasing of a vehicle. 

**Metric**
  - MPG from Competitor and MechaCar (Dependant)
  - Type of Engine (Independant)
  - Type of Drive Train: 4x4 or 2x4 (Independant)
  - Hybrid Capabilities (Independant)
  - List could go on about features that effect the engine
  
  **Hypothesis**
  
  - Null: MechaCar's MPG is competitive based on its features and performance
  
  - Alternative: MechaCar's MPG is not competitive against its rival car makers based on ites features and performans
  
  **Testing**
  
  - T-tests of car models
  - Linear regressions
  - Visuals, such as box plots and scatter plots to see comparisons
  




