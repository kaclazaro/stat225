library(readxl)
df <- read_excel("Exercise1_Stat225_OFWRemittances.xlsx", sheet = "Data")

#Check if the data is imported correctly by printing the first few rows of the data frame.
head(df)

#Convert the date format in Column A from character to date format using the as.Date() function.
df$Date <- as.Date(df$Date, format = "%Y%m%d")

library(ggplot2)
ggplot(data = df, aes(x = Date, y = Remittance)) +
  geom_line()


#Customize the chart as needed, such as adding titles, axis labels, and changing the color and linewidth of the lines.
ggplot(data = df, aes(x = Date, y = Remittance)) +
  geom_line(color = "blue", linewidth = 0.5) +
  labs(title = "OFW Remittances over Time",
       x = "Year",
       y = "Remittance (USD)") +
  theme(panel.background = element_rect(fill = "white"),
        panel.grid.major.x = element_line(color = "white", linetype = 0),
        panel.grid.minor.x = element_line(color = "black", linewidth = 0.2)) 

#This code creates a time series chart with a light gray background and removes the gridlines. The theme() function is used to customize the background and gridlines. The element_rect() function is used to set the fill color of the panel background to light gray. The element_blank() function is used to remove the major and minor gridlines from the chart.

#You can customize the background color to any other color by changing the fill argument in element_rect(). For example, if you want a white background, you can use fill = "white".

#You can customize the gridlines by changing the panel.grid.major and panel.grid.minor arguments in theme(). For example, if you want to show only the major gridlines, you can use element_line(color = "black") for panel.grid.major and element_blank() for panel.grid.minor. If you want to change the color of the gridlines, you can change the color argument in element_line().

#This code creates a time series chart with no horizontal gridlines. The theme() function is used to modify the appearance of the plot. The panel.grid.major.x argument is set to element_blank() to remove the major horizontal gridlines in the x-axis. The panel.grid.minor argument is set to element_blank() to remove the minor gridlines in the plot.

#Note that this code still includes vertical gridlines in the plot. If you also want to remove the vertical gridlines, you can add panel.grid.major.y = element_blank() to the theme() function.

#This code creates a time series chart with no visible horizontal gridlines. The panel.grid.major.x argument is set to element_line(color = "white", linetype = 0) to make the major horizontal gridlines completely transparent. The linetype parameter is set to 0 to make the lines completely transparent. The panel.grid.minor argument is set to element_blank() to remove the minor gridlines in the plot.


