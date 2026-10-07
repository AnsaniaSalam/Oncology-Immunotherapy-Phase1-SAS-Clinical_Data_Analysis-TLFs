/*******************************************************************
* Client: PHARMA Private Limited.
* Project: Protocol: 043-1-2025
* Program: L_16_2_1_2.SAS
*
* Program Type: Listing
*
* Purpose: To produce 16.2.1.2 Informed Consent
* Usage Notes: Uses ADAM.ADSL (RFICDT); creates OUTPUTS/L_16_2_1_2.RTF.
*
* SAS Version: Base SAS 9.4_M8
* Operating System: SAS OnDemand Linux server (client: Windows 11)
*
* Author: ANSANIA SALAM
* Date Created: 05JUL2026
* Modification History: 04OCT2026
*******************************************************************/

LIBNAME ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM";

DATA LISTING2;
SET ADAM.ADSL;
RFICDTc = STRIP(PUT(RFICDT, YYMMDD10.));
KEEP USUBJID RFICDTc;
RUN;

%INCLUDE "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas";

OPTIONS ORIENTATION=LANDSCAPE;
TITLE1 J=L "PHARMA Private Limited.";
TITLE2 J=L "Protocol: 043-1-2025";
TITLE3 J=C "16.2.1.2 Informed Consent";
FOOTNOTE1 J=L "Ansania_MCC_Immunotherapy_Phase1/MCCListings/L_16_2_1_2.sas";

ODS ESCAPECHAR='^';
ODS RTF FILE= "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/L_16_2_1_2.RTF"
STYLE=Styles.Test;

PROC REPORT DATA=LISTING2 NOWD
STYLE={OUTPUTWIDTH=100%} MISSING SPLIT='|';

COLUMN USUBJID RFICDTc;

DEFINE USUBJID / ORDER "Subject Number"
STYLE(COLUMN)={JUST=L CELLWIDTH=50%}
STYLE(HEADER)={JUST=L CELLWIDTH=50%};

DEFINE RFICDTc / "Date of Informed Consent"
STYLE(COLUMN)={JUST=L CELLWIDTH=49%}
STYLE(HEADER)={JUST=L CELLWIDTH=49%};

COMPUTE BEFORE _PAGE_;
LINE@1 "^{STYLE[OUTPUTWIDTH=100% BORDERTOPWIDTH=0.5PT]}";
ENDCOMP;

COMPUTE AFTER _PAGE_;
LINE@1 "^{STYLE[OUTPUTWIDTH=100% BORDERTOPWIDTH=0.5PT]}";
ENDCOMP;
RUN;

ODS _ALL_ CLOSE;

