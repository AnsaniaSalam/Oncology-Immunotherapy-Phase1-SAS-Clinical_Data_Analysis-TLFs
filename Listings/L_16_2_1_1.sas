/*******************************************************************
* Client: PHARMA Private Limited.
* Project: Protocol: 043-1-2025
* Program: L_16_2_1_1.SAS
*
* Program Type: Listing
*
* Purpose: To produce 16.2.1.1 Assignment to Analysis Populations
* Usage Notes: Uses ADAM.ADSL and Macro/RTF.sas; creates OUTPUTS/L_16_2_1_1.RTF.
*
* SAS Version: Base SAS 9.4_M8
* Operating System: SAS OnDemand Linux server (client: Windows 11)
*
* Author: ANSANIA SALAM
* Date Created: 01JULY2026
* Modification History: 04OCT2026
*******************************************************************/

LIBNAME ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM";

DATA LISTING1;
SET ADAM.ADSL;
KEEP USUBJID SAFFL DLTEVLFL PKEVLFL ENRLFL;
RUN;

%INCLUDE "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas";

OPTIONS ORIENTATION=LANDSCAPE;
TITLE1 J=L "PHARMA Private Limited.";
TITLE2 J=L "Protocol: 043-1-2025";
TITLE3 J=C "16.2.1.1 Assignment to Analysis Populations";
FOOTNOTE1 J=L "Ansania_MCC_Immunotherapy_Phase1/MCCListings/L_16_2_1_1.sas";

ODS ESCAPECHAR='^';
ODS RTF FILE= "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/L_16_2_1_1.RTF"
STYLE=Styles.Test;

PROC REPORT DATA=LISTING1 NOWD
STYLE={OUTPUTWIDTH=100%} MISSING SPLIT='|';

COLUMN USUBJID SAFFL DLTEVLFL PKEVLFL ENRLFL;

DEFINE USUBJID / ORDER "Subject|Number"
STYLE(COLUMN)={JUST=L CELLWIDTH=20%}
STYLE(HEADER)={JUST=L CELLWIDTH=20%};

DEFINE SAFFL / "Safety|Population"
STYLE(COLUMN)={JUST=L CELLWIDTH=20%}
STYLE(HEADER)={JUST=L CELLWIDTH=20%};

DEFINE DLTEVLFL / "DLT Evaluable|Population"
STYLE(COLUMN)={JUST=L CELLWIDTH=20%}
STYLE(HEADER)={JUST=L CELLWIDTH=20%};

DEFINE PKEVLFL / "PK Evaluable|Population"
STYLE(COLUMN)={JUST=L CELLWIDTH=20%}
STYLE(HEADER)={JUST=L CELLWIDTH=20%};

DEFINE ENRLFL / "Enrolled|Population"
STYLE(COLUMN)={JUST=L CELLWIDTH=19%}
STYLE(HEADER)={JUST=L CELLWIDTH=19%};

COMPUTE BEFORE _PAGE_;
LINE@1 "^{STYLE[OUTPUTWIDTH=100% BORDERTOPWIDTH=0.5PT]}";
ENDCOMP;

COMPUTE AFTER _PAGE_;
LINE@1 "^{STYLE[OUTPUTWIDTH=100% BORDERTOPWIDTH=0.5PT]}";
ENDCOMP;
RUN;

ODS _ALL_ CLOSE;