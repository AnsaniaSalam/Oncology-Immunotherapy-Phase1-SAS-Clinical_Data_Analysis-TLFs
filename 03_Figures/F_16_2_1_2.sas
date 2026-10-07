/*******************************************************************
* Client: PHARMA Private Limited.
* Project: Protocol: 043-1-2025
* Program: F_16_2_1_2.SAS
*
* Program Type: Figure
*
* Purpose: To produce Figure 16.2.1.2 Waterfall Plot of Patient-wise Change in Tumor Size per Visit
* Usage Notes: Uses ADAM.ADTR; plots tumor-size change by patient and
*              visit; creates OUTPUTS/F_16_2_1_2.RTF.
*
* SAS Version: Base SAS 9.4_M8.
* Operating System: SAS OnDemand Linux server (client: Windows 11).
*
* Author: ANSANIA SALAM
* Date Created: 20AUG2026
* Modification History: 06OCT2026
*******************************************************************/

LIBNAME ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM/Figures";

DATA ADTR;
SET ADAM.ADTR;

IF VISIT = "VISIT1" THEN ABLFL = "Y";

IF VISIT = "END_OF_V" THEN VISITNUM = 1;
ELSE IF VISIT = "VISIT1" THEN VISITNUM = 2;
ELSE IF VISIT = "VISIT2" THEN VISITNUM = 3;
ELSE IF VISIT = "VISIT3" THEN VISITNUM = 4;
RUN;

PROC SORT DATA=ADTR;
BY PATIENT_ID VISITNUM;
RUN;

PROC FORMAT;
VALUE VISITFMT
1 = "End of Visit"
2 = "Visit 1"
3 = "Visit 2"
4 = "Visit 3";
RUN;

%INCLUDE "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas";

OPTIONS ORIENTATION=LANDSCAPE;
ODS ESCAPECHAR='^';

TITLE1 J=L "PHARMA Private Limited.";
TITLE2 J=L "Protocol: 043-1-2025";
TITLE3 J=C "FIGURE 16.2.1.2 Waterfall Patient-wise Change in Tumor Size per Visit";

FOOTNOTE1 J=L "Ansania_MCC_Immunotherapy_Phase1/MCCFigures/F_16_2_1_2.sas";

ODS RTF FILE= "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/F_16_2_1_2.RTF"
STYLE=Styles.Test;

ODS GRAPHICS / WIDTH=9IN HEIGHT=5IN;

PROC SGPLOT DATA=ADTR;
VBAR PATIENT_ID /
RESPONSE=CHG
GROUP=VISITNUM
GROUPDISPLAY=CLUSTER
GROUPORDER=DATA
DATALABEL;

XAXIS LABEL="Patient ID";
YAXIS LABEL="Tumor Size Change (%)";

KEYLEGEND / TITLE="Visit";
FORMAT VISITNUM VISITFMT.;
RUN;

ODS _ALL_ CLOSE;








