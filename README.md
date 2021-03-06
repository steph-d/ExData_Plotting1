## Data from UC Irvine Machine Learning Repository

We will be using the “Individual household electric power consumption Data Set”:

    Dataset: Electric power consumption [20Mb]

    Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

    1. Date: Date in format dd/mm/yyyy
    2. Time: time in format hh:mm:ss
    3. Global_active_power: household global minute-averaged active power (in kilowatt)
    4. Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
    5. Voltage: minute-averaged voltage (in volt)
    6. Global_intensity: household global minute-averaged current intensity (in ampere)
    7. Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
    8 Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
    9 Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Loading the data
	
Calculation of an estimation of how much memory the dataset will require:
2 075 259 rows x 9 columns x 8 = 149 418 648 bytes = 142 Mb.
So we need 284 Mb of memory.

No problem with the computer, but as an exercise, I tried to read only the data from the dates 2007-02-01 and 2007-02-02.

		1. Read only the first column which correspond to the dates
		2. Transformation of this column in a date format by as.Date()
		3. Add a new column by mutate (dplyr package) to have an id of the rows
		4. Filter the data using filter (dplyr) to obtain only rows with the date of interest
		5. The id give the number of the rows of these dates
		
		6. Read the entire dataset variable but only the rows corresponding to the dates of interest
		7. Add a new variable (DT) of date and time together by the paste() function 
		8. Put the good format of date and time with strptime()
		
		
The resulting dataset was used to plot the graphics

## plots
4 plots (files "plot1.png" to "plot4.png") were produced, reproducing the ones showed on the website
They were generated thanks to png(). All the plots are with a size of 480 x 480 pixels, specified in png()

The 4 R files corresponding to each plot are named "plot1.R" to "plot4.R"
		
		
		