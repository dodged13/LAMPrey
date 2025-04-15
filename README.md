This is the new method for analysing qPCR and qLAMP data whereby the relative fluoresence is taken into account across time/cycle number such that there is no investigator bias in the analysis method for quantitative PCR. The calculation is the fluoresence at N+5 is divided by N to show the efficiency of the PCR reaction. This allows a bell-curve to be plotted, where the highest point on the curve is where the reaction is most active and therefore the new Ct value. Testing the LAMPrey protocol against conventional methods showed an R2 value of 0.99 (shown below), but LAMPrey has the benefit of not requiring a background dye and also being able to be applied to both qPCR and qLAMP data with ease regardless of technology.

![correlation](https://github.com/user-attachments/assets/b185baa2-dc9c-43ac-ac1a-9f4416f606cc)

Figure 1. The Ct values calculated for qPCR data of the standards of a NEBNext Quant library kit by the LAMPrey method compared to those calculated by the StepOne software. The concentration of the standard is listed as pM. Linear modelling calculated the correlation coefficient (R2) between the two methods to be  0.9967


![Rplot02](https://github.com/user-attachments/assets/ad5459e3-600c-4279-a703-25e5aafff507)

Figure 2. The blue trace in the plot below is the Raw data from the QuantStudio and the red is the normalised value through the use of the LAMPrey_analyse() function plotted against Cycle number. The black dotted line is the CT value calculated by the QuantStudio software which clearly overlaps with that of the LAMPrey analysis.
