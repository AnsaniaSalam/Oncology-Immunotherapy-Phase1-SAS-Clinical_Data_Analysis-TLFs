/*******************************************************************
* Client: PHARMA Private Limited.                                                           
* Project: Protocol: 043-1-2025                                                    
* Program: F_16_2_1_1.SAS  
*
* Program Type: Figure
*
* Purpose: To produce Figure 16.2.1.1 Mean and Standard Error Plot
* Usage Notes: Uses ADAM.ADRS_SCORE; plots group means with standard error bars; 
*               creates OUTPUTS/F_16_2_1_1.RTF.
*
* SAS® Version: Base SAS 9.4_M8.
* Operating System: SAS OnDemand Linux server (client: Windows 11).                   
*
* Author: ANSANIA SALAM
* Date Created: 15AUG2026
* Modification History: 06OCT2026
*******************************************************************/				

libname ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM/Figures";


proc means data=adam.adrs_score nway noprint;
class group;
var value;
output out= stats mean=mean stderr=stderr;
run;
data stat2;
set stats;
mean_round= round(mean,0.01);
stderr_round=round(stderr,0.01);
mean_above=mean_round+stderr_round;
mean_below=mean_round-stderr_round;

run;


%include "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas";

options orientation=landscape;
ods escapechar='^';
title1 j=l "PHARMA Private Limited.";
title2 j=l "Protocol: 043-1-2025";
title3 j=c "FIGURE 16.2.1.1 Mean and Standard Error Plot        ";

footnote1 j=l "Ansania_MCC_Immunotherapy_Phase1/MCCFigures/F_16_2_1_1.sas";

ods rtf file="/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/F_16_2_1_1.RTF" 
style=Styles.Test;

ods graphics on;

proc sgplot data=stat2;
scatter x=group y=mean/
yerrorupper=mean_above
yerrorlower=mean_below
markerattrs=(symbol=circlefilled color=blue size=12)
errorbarattrs=(color=red thickness=2);
xaxis label='Group';
yaxis label='Mean with standard Error         ';
run;

ods _all_ close;









