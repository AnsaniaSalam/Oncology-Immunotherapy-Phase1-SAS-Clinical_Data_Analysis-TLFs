/*******************************************************************
* Client: PHARMA Private Limited.                                                            
* Project: Protocol: 043-1-2025                                                    
* Program: L_16_2_1_7.SAS  
*
* Program Type: Listing
*
* Purpose: To produce 16.2.1.7 Abnormal Biochemistry Values
* Usage Notes: Uses ADAM.ADLB; selects abnormal chemistry results; creates OUTPUTS/L_16_2_1_7.RTF.
*
* SAS® Version: Base SAS 9.4_M8
* Operating System: SAS OnDemand Linux server (client: Windows 11)                 
*
* Author:ANSANIA SALAM 
* Date Created: 15JUL2026
* Modification History:05OCT2026
*******************************************************************/				

LIBNAME ADAM "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/ADaM";

data adlb;
retain usubjid paramn param avisitn avisit low_high  adtc avalc 
anrind ;

set adam.adlb;
if parcat1='CHEMISTRY' and anrind not in ('NORMAL' '');
low_high=catx("-",anrlo,anrhi);
adtc=strip(put(adt,date9.));
keep usubjid paramn param avisitn avisit low_high   adtc avalc anrind ;
run;

data adlb2;
set adlb;
retain lnt pag1 0;
lnt+1;
if lnt >20 then do;
pag1=pag1+1;

lnt=1;
end;
run;



%INCLUDE "/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/Macro/RTF.sas";
OPTIONS ORIENTATION= LANDSCAPE;
TITLE1 J=L "PHARMA Private Limited.";
TITLE2 J=L "Protocol: 043-1-2025";
TITLE3 J=C "16.2.1.7 Abnormal Biochemistry Values";
FOOTNOTE1 J=L "Ansania_MCC_Immunotherapy_Phase1/MCCListings/L_16_2_1_7.sas";
ODS ESCAPECHAR='^';
ODS RTF FILE="/home/u64420862/Ansania_MCC_Immunotherapy_Phase1/OUTPUTS/L_16_2_1_7.RTF" 
STYLE=Styles.Test
;

PROC REPORT DATA=adlb2 NOWD STYLE={OUTPUTWIDTH=100%} MISSING SPLIT='|';
COLUMN pag1 usubjid paramn param avisitn avisit low_high   
adtc avalc anrind;

define pag1/order noprint;
DEFINE USUBJID/ORDER "Subject|Number"
STYLE (COLUMN)={JUST=L CELLWIDTH=15%}
STYLE (HEADER)={JUST=L CELLWIDTH=15%};

define paramn/order noprint;
DEFINE param/ORDER "Test"
STYLE (COLUMN)={JUST=L CELLWIDTH=25%}
STYLE (HEADER)={JUST=L CELLWIDTH=25%};

define avisitn/order noprint;
DEFINE avisit/ORDER "Visit"
STYLE (COLUMN)={JUST=L CELLWIDTH=15%}
STYLE (HEADER)={JUST=L CELLWIDTH=15%};

DEFINE low_high/ "Normal Range|LOW-HIGH"
STYLE (COLUMN)={JUST=L CELLWIDTH=15%}
STYLE (HEADER)={JUST=L CELLWIDTH=15%};

DEFINE adtc/ "Date/Time of |Measurement"
STYLE (COLUMN)={JUST=L CELLWIDTH=10%}
STYLE (HEADER)={JUST=L CELLWIDTH=10%};

DEFINE avalc/ "Result"
STYLE (COLUMN)={JUST=L CELLWIDTH=5%}
STYLE (HEADER)={JUST=L CELLWIDTH=5%};

DEFINE anrind/ "Flag"
STYLE (COLUMN)={JUST=L CELLWIDTH=5%}
STYLE (HEADER)={JUST=L CELLWIDTH=5%};

COMPUTE BEFORE _PAGE_;
LINE@1 "^{STYLE[OUTPUTWIDTH=100% BORDERTOPWIDTH=0.5PT]}";
ENDCOMP;


COMPUTE AFTER _PAGE_;
LINE@1 "^{STYLE[OUTPUTWIDTH=100% BORDERTOPWIDTH=0.5PT]}";
ENDCOMP;

break after pag1/page;
RUN;

ODS _ALL_ CLOSE;
