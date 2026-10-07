/*******************************************************************
* Client: PHARMA Private Limited.
* Project: Protocol: 043-1-2025
* Program: F_16_2_1_5.SAS
*
* Program Type: Figure
*
* Purpose: To produce Figure 16.2.1.5 Kaplan-Meier Survival Plot
* Usage Notes: Uses ADAM.ADTTE and ADAM.ADSL to create the
*              Kaplan-Meier survival plot in OUTPUTS.
*
* SAS® Version: Base SAS 9.4_M8.
* Operating System: SAS OnDemand Linux server (client: Windows 11)
*
* Author: ANSANIA SALAM
* Date Created: 30AUG2026
* Modification History: 06OCT2026
*******************************************************************/

LIBNAME ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM";

PROC SORT DATA=ADAM.ADTTE OUT=ADTTE_SORT;
    BY USUBJID;
RUN;

PROC SORT DATA=ADAM.ADSL OUT=ADSL_SORT;
    BY USUBJID;
RUN;

DATA ADTTE;
    MERGE ADTTE_SORT (IN=A) ADSL_SORT (IN=B);
    BY USUBJID;
    IF A AND B;

    LABEL AVAL="survival_time"
          TRT01PN="treatment_group";
RUN;

%INCLUDE
    "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas";

OPTIONS ORIENTATION=LANDSCAPE;
ODS ESCAPECHAR='^';

TITLE1 J=L "PHARMA Private Limited.";
TITLE2 J=L "Protocol: 043-1-2025";
TITLE3 J=C
    "FIGURE 16.2.1.5 Kaplan-Meier Survival Plot";

FOOTNOTE1 J=L
    "Ansania_MCC_Immunotherapy_Phase1/MCCFigures/F_16_2_1_5.sas";

ODS RTF FILE=
    "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/F_16_2_1_5.RTF"
    STYLE=Styles.Test;

ODS GRAPHICS / WIDTH=9IN HEIGHT=5IN;
ODS SELECT SURVIVALPLOT (PERSIST);

PROC LIFETEST DATA=ADTTE
    PLOTS=SURVIVAL(ATRISK=0 1 2 3 4 5);

    TIME AVAL*CNSR(1);
    STRATA TRT01PN / NOTEST;
RUN;

ODS _ALL_ CLOSE;