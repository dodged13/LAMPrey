LAMPrey.Read_StepOne = function(){
  library(readxl)
  x = file.choose()
  Setup <<- data.frame(read_excel(x, sheet = "Results"))
  z = which(Setup == "Task",arr.ind = TRUE)[1]
  colnames(Setup) <<- Setup[z,] 
  Setup <<- Setup[z+1:nrow(Setup),]
  Setup <<- data.frame(read_excel(x, sheet = "Results", skip = z))
  Raw_Data <<- data.frame(read_excel(x, sheet = "Raw Data", skip = 6))
  } 

### Reads in the data from an excel output from a stepone, specifically raw data and results ###

LAMPrey.Read_QuantStudio = function(){
  library(readxl)
  x = file.choose()
  Setup <<- data.frame(read_excel(x, sheet = "Sample Setup"))
  z = which(Setup == "Task",arr.ind = TRUE)[1]
  colnames(Setup) <<- Setup[z,] 
  Setup <<- Setup[z+1:nrow(Setup),]
  Raw_Data <<- data.frame(read_excel(x, sheet = "Raw Data", skip = z))
} 
### Reads in the data from an excel output from a Quantstudio file, specifically raw data and results 


LAMPrey.annotate_StepOne = function() {
  Raw_Data$Gene <<- Setup$Target.Name[pmatch(Raw_Data$Well, Setup$Well, duplicates.ok = TRUE)]
  Raw_Data$Task <<- Setup$Task[pmatch(Raw_Data$Well, Setup$Well, duplicates.ok = TRUE)]
} 

LAMPrey.annotate_QuantStudio = function() {
  Raw_Data$Gene <<- Setup$'Target Name'[pmatch(Raw_Data$Well, Setup$Well, duplicates.ok = TRUE)]
  Raw_Data$Task <<- Setup$Task[pmatch(Raw_Data$Well, Setup$Well, duplicates.ok = TRUE)]
} 
### annotates the raw data with columns detailing the genes and the task of the well (standard/unknown) ###

LAMPrey.normalise = function(x) {
  well_list = unique(na.omit(Raw_Data)$Well)
  cycle_list = unique(na.omit(Raw_Data)$Cycle)
  for (i in unique(well_list)) {
    for (cy in cycle_list) {
      Raw_Data$normalised[Raw_Data$Well == i & Raw_Data$Cycle == cycle_list[cy]] <<- Raw_Data[[x]][Raw_Data$Well == i & Raw_Data$Cycle == cycle_list[cy+5]] / 
        (Raw_Data[[x]][Raw_Data$Cycle == cycle_list[cy] & Raw_Data$Well == i ]) 
    } }
  return(Raw_Data)} 

### Uses the colour channel name as input - x = "GREEN" for Step one or "x1.m1" for QuantStudio, to calculate the Normalised LAMP value 

LAMPrey.plot = function(x) {
  library(ggplot2)
  if(missing(x)){ print("Please specify 'Task', 'Gene' or 'Well' as a grouping factor") 
  }else if(x == "Well" | x == "well") { ggplot(data = Raw_Data[!is.na(Raw_Data$Gene),]) + 
      geom_line(aes(x = Cycle, y = normalised, colour = as.factor(Well)), size = 0.5) +
      xlim(0,100) + 
      labs(y = "LAMPrey normalised value", colour = "Well") 
    }else if(x == "Task" | x =="task") {
    ggplot(data = Raw_Data[!is.na(Raw_Data$Gene),]) + 
      geom_line(aes(x = Cycle, y = normalised, group = as.factor(Well), colour = as.factor(Task)), size = 0.5) + 
      xlim(0,100) + 
      labs(y = "LAMPrey normalised value", colour = "Task")
      }else if(x == "Gene" | x =="gene") {
        ggplot(data = Raw_Data[!is.na(Raw_Data$Gene),]) + 
          geom_line(aes(x = Cycle, y = normalised, group = as.factor(Well), colour = as.factor(Gene)), size = 0.5) + 
          xlim(0,100) + 
          labs(y = "LAMPrey normalised value", colour = "Gene")
        } 
      } 
## Can be used to generate plots in which the data is colour-coded by the given variable
                                      
LAMPrey.analyse = function() {
  well_list = unique(na.omit(Raw_Data)$Well)
  LAMPrey_Results <<- data.frame(Well = well_list)
  for (i in unique(well_list)) {
    LAMPrey_Results$Gene_stepone[LAMPrey_Results$Well == i] <<- Setup$Target.Name[Setup$Well == i]
    LAMPrey_Results$Gene_quantstudio[LAMPrey_Results$Well == i] <<- Setup$'Target Name'[Setup$Well == i]
    LAMPrey_Results$Task[LAMPrey_Results$Well == i] <<- Setup$Task[Setup$Well == i]
    LAMPrey_Results$iCT[LAMPrey_Results$Well == i] <<- approx(Raw_Data$normalised[Raw_Data$Well == i], 
                                                                  Raw_Data$Cycle[Raw_Data$Well == i], 
                                                                  max(na.omit(Raw_Data$normalised[Raw_Data$Well == i])))[2] }
} 
  ### Calculates a iCT approximation for each well and creates a result dataframe named LAMPrey_Results
