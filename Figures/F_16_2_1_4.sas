/*******************************************************************
* Client: PHARMA Private Limited.                                                           
* Project: Protocol: 043-1-2025                                                    
* Program: F_16_2_1_4.SAS  
*
* Program Type: Figure
*
* Purpose: To produce Figure 16.2.1.4 Forest Plot of Effect Sizes Based on Parameter
* Usage Notes: Uses ADAM.FOREST to plot effect sizes and confidence intervals by parameter;
*              creates OUTPUTS/F_16_2_1_4.RTF.
*
* SAS® Version: Base SAS 9.4_M8.
* Operating System: SAS OnDemand Linux server (client: Windows 11)                
*
* Author: ANSANIA SALAM
* Date Created: 25AUG2026
* Modification History: 06OCT2026
*******************************************************************/				

LIBNAME ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM/Figures"; 
 
%INCLUDE "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas"; 
 
OPTIONS ORIENTATION=LANDSCAPE; 
ODS ESCAPECHAR='^'; 
ODS SELECT ALL;
TITLE1 J=L "PHARMA Private Limited."; 
TITLE2 J=L "Protocol: 043-1-2025"; 
TITLE3 J=C "16.2.1.4 Forest Plot of Effect Sizes Based on Parameter       "; 
 
FOOTNOTE1 J=L "Ansania_MCC_Immunotherapy_Phase1/MCCFigures/F_16_2_1_4.sas"; 
 
ODS RTF FILE="/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/F_16_2_1_4.RTF"  
STYLE=Styles.Test 
; 
 
ODS GRAPHICS / WIDTH=9IN HEIGHT=5IN; 
 
 
PROC SGPLOT DATA=adam.forest; 
SCATTER Y=param X=Effect_Size/ 
MARKERATTRS=(SYMBOL=squarefilled SIZE=10) 
GROUP=param; 
 
HIGHLOW Y=param LOW=Lower_CI HIGH=Upper_CI/ LINEATTRS=(THICKNESS=2 COLOR=black); 
REFLINE 1 / AXIS=X LINEATTRS=(PATTERN=shortdash COLOR=red); 
XAXIS LABEL='Effect size (odds Ratio)     ' MIN=0.5 MAX=3.0; 
YAXIS LABEL='Parameter'; 
RUN; 
 
ODS _ALL_ CLOSE;










