; --- SysCAD Model Procedures (MP) file ---
; --- See https://help.syscad.net/PGMs for online documentation ---

; --- variable declarations ---
Pagelabel "Slag_KPIs"
Textbreak
Textlabel "Slag"
Real Fe_To_Silica{r,Cnv("MRatio", "kg/kg"),comment("Fe to Silica ratio in slag")}
Real Fe_slag{r,Cnv("Qm", "t/h")}
Real SiO2_slag{r,Cnv("Qm", "t/h")}

; --- procedure declarations ---


; ------------------------------------------------------------

Sub MP_InitialiseSolution()
    Fe_slag   = ["Qo.QEl:IPh.Fe(sl) (t/h)"] 
    SiO2_slag = ["Qo.QM:IPh.SiO2(sl) (t/h)"]
EndSub



; ------------------------------------------------------------

; Sub MP_InitialiseIteration()
;  
; EndSub

; ------------------------------------------------------------

Sub MP_Eval_Before()
    Fe_slag   = ["Qo.QEl:IPh.Fe(sl) (t/h)"] 
    SiO2_slag = ["Qo.QM:IPh.SiO2(sl) (t/h)"]
    Fe_To_Silica = iif(SiO2_slag > 0, Fe_slag/SiO2_slag, nan)
EndSub

; ------------------------------------------------------------

; Sub MP_Eval_BeforeEB()
;  
; EndSub

; ------------------------------------------------------------

; Sub MP_Eval_AfterEB()
;  
; EndSub

; ------------------------------------------------------------

; Sub MP_Eval_After()
;  
; EndSub

; ------------------------------------------------------------

; Sub MP_Results()
;     Fe_To_Silica = iif(SiO2_slag > 0, Fe_slag/SiO2_slag, nan) 
; EndSub

; ------------------------------------------------------------

; Sub MP_TerminateIteration()
;     Fe_To_Silica = iif(SiO2_slag > 0, Fe_slag/SiO2_slag, nan)
; EndSub

; ------------------------------------------------------------

; Sub MP_TerminateSolution()
;  
; EndSub

; ------------------------------------------------------------

$ ; --- end of file ---

