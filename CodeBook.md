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
	
A new variable (DT) was computed and used to obtain the plots
	10. DT: date and time together obtained by the paste() function on Date and Time variables of the original dataset, and then put in the correct format by strptime()
