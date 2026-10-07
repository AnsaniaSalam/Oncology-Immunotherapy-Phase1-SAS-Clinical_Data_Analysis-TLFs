/*******************************************************************
* Client: PHARMA Private Limited.
* Project: Protocol: 043-1-2025
* Program: F_16_2_1_3.SAS
*
* Program Type: Figure
*
* Purpose: To produce Figure 16.2.1.3 Spaghetti Plot of Tumor Size Over Time by Patient
* Usage Notes: Uses ADAM.ADTR to plot tumor size by visit for each patient;
*              creates OUTPUTS/F_16_2_1_3.RTF.
*
* SAS® Version: Base SAS 9.4_M8.
* Operating System: SAS OnDemand Linux server (client: Windows 11)
*
* Author: ANSANIA SALAM
* Date Created: 20AUG2026
* Modification History: 06OCT2026
*******************************************************************/

LIBNAME ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM/Figures";

DATA ADTR;
SET ADAM.ADTR;

ABLFL = '';

IF VISIT = 'VISIT1' THEN DO;
ABLFL = 'Y';
CHG = .;
END;

IF VISIT = 'VISIT1' THEN VISITNUM = 1;
IF VISIT = 'VISIT2' THEN VISITNUM = 2;
IF VISIT = 'VISIT3' THEN VISITNUM = 3;
IF VISIT = 'END_OF_V' THEN VISITNUM = 4;
RUN;

PROC SORT DATA=ADTR;
BY PATIENT_ID VISITNUM;
RUN;

%INCLUDE "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas";

OPTIONS ORIENTATION=LANDSCAPE;
ODS ESCAPECHAR='^';

TITLE1 J=L "PHARMA Private Limited.";
TITLE2 J=L "Protocol: 043-1-2025";
TITLE3 J=C "FIGURE 16.2.1.3 Spaghetti Plot of Tumor Size Over Time by Patient";

FOOTNOTE1 J=L "Ansania_MCC_Immunotherapy_Phase1/MCCFigures/F_16_2_1_3.sas";

ODS RTF FILE= "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/F_16_2_1_3.RTF"
STYLE=Styles.Test;

ODS GRAPHICS / WIDTH=9IN HEIGHT=5IN;

PROC SGPLOT DATA=ADTR;
SERIES X=VISITNUM Y=AVAL /
GROUP=PATIENT_ID
MARKERS;

XAXIS LABEL="Visit";
YAXIS LABEL="Tumor Size (cm)";

KEYLEGEND /
TITLE="Patient_ID"
LOCATION=OUTSIDE
POSITION=BOTTOM;
RUN;

ODS _ALL_ CLOSE;