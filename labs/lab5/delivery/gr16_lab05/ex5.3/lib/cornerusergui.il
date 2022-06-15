
;----------------------------------------------------------------------
;                           Process Variations
;----------------------------------------------------------------------
; TEMPLATE   : process.t,v 1.4 2002/03/06 14:24:20
; PARAMETERS : statistic.dds,v 2.8 2002/06/04 11:44:06
; TRANSLATOR : ddspp.tcl,v 1.48 2002/06/19 09:12:40
; Translated by re11 on June 21, 2002
; PACKAGE    : modelString.tcl,v 1.13 2002/04/10 07:19:16
; PACKAGE    : statPackage.tcl,v 1.15 2001/11/26 16:05:19
;----------------------------------------------------------------------
; (C) Copyright STMicroelectronics
;     Unauthorized Reproduction and Communication Strictly Prohibited.
;----------------------------------------------------------------------
(defun UartCornerUserParameterList ()
   '(


   ("common_poly"
      ("poly_cdvar" mean "-20e-9" tolerance "8.0e-9" distribution "uniform")
      ("go2_3v3_poly_cdvar" mean "-15e-9" tolerance "1.8e-8" distribution "uniform")
      ("go2_2v5_poly_cdvar" mean "-4e-8" tolerance "1.8e-8" distribution "uniform")
      ("npoly_rsh" mean "10" tolerance "4" distribution "uniform")
      ("ppoly_rsh" mean "10" tolerance "4" distribution "uniform")
      ("npoly_rsc" mean "15" tolerance "15" distribution "uniform")
      ("ppoly_rsc" mean "15" tolerance "15" distribution "uniform")

   )


   ("common_active"
      ("active_cdvar" mean "0.0" tolerance "20.00e-9" distribution "uniform")
      ("go2_3v3_acti_cdvar" mean "0" tolerance "3.6e-8" distribution "uniform")
      ("go2_2v5_acti_cdvar" mean "0" tolerance "3.6e-8" distribution "uniform")

   )


   ("common_go1"
      ("go1_dtoxn" mean "0.0e-10" tolerance "0.50e-10" distribution "uniform")
      ("go1_ll_dtoxn" mean "0.0e-10" tolerance "0.66e-10" distribution "uniform")
      ("go1_dcfring" mean "0.0" tolerance "0.3e-10" distribution "uniform")

   )


   ("common_go2"
      ("go2_3v3_dtoxn" mean "0.0e-10" tolerance "2.25e-10" distribution "uniform")
      ("go2_2v5_dtoxn" mean "0.0e-10" tolerance "2.25e-10" distribution "uniform")

   )


   ("nmosll"
      ("nmosll_vth0" mean "0.241" tolerance "0.015" distribution "uniform")
      ("nmosll_dmu" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("nmosll_drdsw" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("nmosll_dcjb" mean "0.0" tolerance "10e-2" distribution "uniform")
      ("nmosll_dcjgate" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("nmosll_dcjsw" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("nmosll_djsdbr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmosll_djsdgr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmosll_djsdsr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmosll_djsgbr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmosll_djsggr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmosll_djsgsr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmosll_varmaxvth00" mean "0.0" tolerance "0.0" distribution "uniform")
      ("nmosll_dvarmaxu0" mean "0.0" tolerance "0.33" distribution "uniform")
      ("nmosll_dvarmaxrdsw" mean "0.0" tolerance "0.0" distribution "uniform")
      ("nmosll_rbvdr" mean "1364" tolerance "409.2" distribution "uniform")
      ("nmosll_rbvdl" mean "5544" tolerance "1663.2" distribution "uniform")
      ("nmosll_rbvsr" mean "1364" tolerance "409.2" distribution "uniform")
      ("nmosll_rbvsl" mean "5544" tolerance "1663.2" distribution "uniform")
      ("nmosll_rbvgr" mean "3304" tolerance "991.2" distribution "uniform")
      ("nmosll_rbvgl" mean "2576" tolerance "772.8" distribution "uniform")

   )


   ("pmosll"
      ("pmosll_vth0" mean "-0.343" tolerance "0.015" distribution "uniform")
      ("pmosll_dmu" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("pmosll_drdsw" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("pmosll_dcjb" mean "0.0" tolerance "10e-2" distribution "uniform")
      ("pmosll_dcjgate" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("pmosll_dcjsw" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("pmosll_djsdbr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmosll_djsdgr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmosll_djsdsr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmosll_djsgbr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmosll_djsggr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmosll_djsgsr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmosll_varmaxvth00" mean "0.0" tolerance "0.0" distribution "uniform")
      ("pmosll_dvarmaxu0" mean "0.0" tolerance "0.33" distribution "uniform")
      ("pmosll_dvarmaxrdsw" mean "0.0" tolerance "0.0" distribution "uniform")
      ("pmosll_rbvdr" mean "216" tolerance "64.8" distribution "uniform")
      ("pmosll_rbvdl" mean "2916" tolerance "874.8" distribution "uniform")
      ("pmosll_rbvsr" mean "216" tolerance "64.8" distribution "uniform")
      ("pmosll_rbvsl" mean "2916" tolerance "874.8" distribution "uniform")
      ("pmosll_rbvgr" mean "864" tolerance "259.2" distribution "uniform")
      ("pmosll_rbvgl" mean "1360" tolerance "408" distribution "uniform")

   )


   ("nmoshs"
      ("nmoshs_vth0" mean "0.227" tolerance "0.015" distribution "uniform")
      ("nmoshs_nlx" mean "8.5e-8" tolerance "8.5e-9" distribution "uniform")
      ("nmoshs_dmu" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("nmoshs_drdsw" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("nmoshs_dcjb" mean "0.0" tolerance "10e-2" distribution "uniform")
      ("nmoshs_dcjgate" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("nmoshs_dcjsw" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("nmoshs_djsdbr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmoshs_djsdgr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmoshs_djsdsr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmoshs_djsgbr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmoshs_djsggr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmoshs_djsgsr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmoshs_varmaxvth00" mean "0.0" tolerance "0.0" distribution "uniform")
      ("nmoshs_dvarmaxu0" mean "0.0" tolerance "0.33" distribution "uniform")
      ("nmoshs_dvarmaxrdsw" mean "0.0" tolerance "0.0" distribution "uniform")
      ("nmoshs_rbvdr" mean "1364" tolerance "409.2" distribution "uniform")
      ("nmoshs_rbvdl" mean "5544" tolerance "1663.2" distribution "uniform")
      ("nmoshs_rbvsr" mean "1364" tolerance "409.2" distribution "uniform")
      ("nmoshs_rbvsl" mean "5544" tolerance "1663.2" distribution "uniform")
      ("nmoshs_rbvgr" mean "3304" tolerance "991.2" distribution "uniform")
      ("nmoshs_rbvgl" mean "2576" tolerance "772.8" distribution "uniform")

   )


   ("pmoshs"
      ("pmoshs_vth0" mean "-0.20825" tolerance "0.015" distribution "uniform")
      ("pmoshs_nlx" mean "8.5014e-8" tolerance "8.5014e-9" distribution "uniform")
      ("pmoshs_dmu" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("pmoshs_drdsw" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("pmoshs_dcjb" mean "0.0" tolerance "10e-2" distribution "uniform")
      ("pmoshs_dcjgate" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("pmoshs_dcjsw" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("pmoshs_djsdbr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmoshs_djsdgr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmoshs_djsdsr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmoshs_djsgbr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmoshs_djsggr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmoshs_djsgsr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmoshs_varmaxvth00" mean "0.0" tolerance "0.0" distribution "uniform")
      ("pmoshs_dvarmaxu0" mean "0.0" tolerance "0.33" distribution "uniform")
      ("pmoshs_dvarmaxrdsw" mean "0.0" tolerance "0.0" distribution "uniform")
      ("pmoshs_prwb" mean "-0.8" tolerance "0.133" distribution "uniform")
      ("pmoshs_rbvdr" mean "216" tolerance "64.8" distribution "uniform")
      ("pmoshs_rbvdl" mean "2916" tolerance "874.8" distribution "uniform")
      ("pmoshs_rbvsr" mean "216" tolerance "64.8" distribution "uniform")
      ("pmoshs_rbvsl" mean "2916" tolerance "874.8" distribution "uniform")
      ("pmoshs_rbvgr" mean "864" tolerance "259.2" distribution "uniform")
      ("pmoshs_rbvgl" mean "1360" tolerance "408" distribution "uniform")

   )


   ("nmos3v3"
      ("nmos3v3_vth0" mean "0.53621" tolerance "0.039" distribution "uniform")
      ("nmos3v3_dmu" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("nmos3v3_drdsw" mean "0.0" tolerance "15e-2" distribution "uniform")
      ("nmos3v3_dcjb" mean "0.0" tolerance "10e-2" distribution "uniform")
      ("nmos3v3_dcjgate" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("nmos3v3_dcjsw" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("nmos3v3_djsdbr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmos3v3_djsdgr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmos3v3_djsdsr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmos3v3_djsgbr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmos3v3_djsggr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmos3v3_djsgsr" mean "0.0" tolerance "1" distribution "uniform")
      ("nmos3v3_varmaxvth00" mean "0.0" tolerance "0.0" distribution "uniform")
      ("nmos3v3_dvarmaxu0" mean "0.0" tolerance "0.5" distribution "uniform")
      ("nmos3v3_dvarmaxrdsw" mean "0.0" tolerance "0.5" distribution "uniform")

   )


   ("pmos3v3"
      ("pmos3v3_vth0" mean "-0.5055" tolerance "0.039" distribution "uniform")
      ("pmos3v3_dmu" mean "0.0" tolerance "5e-2" distribution "uniform")
      ("pmos3v3_drdsw" mean "0.0" tolerance "15e-2" distribution "uniform")
      ("pmos3v3_dcjb" mean "0.0" tolerance "10e-2" distribution "uniform")
      ("pmos3v3_dcjgate" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("pmos3v3_dcjsw" mean "0.0" tolerance "20e-2" distribution "uniform")
      ("pmos3v3_djsdbr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmos3v3_djsdgr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmos3v3_djsdsr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmos3v3_djsgbr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmos3v3_djsggr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmos3v3_djsgsr" mean "0.0" tolerance "1" distribution "uniform")
      ("pmos3v3_varmaxvth00" mean "0.0" tolerance "0.0" distribution "uniform")
      ("pmos3v3_dvarmaxu0" mean "0.0" tolerance "0.5" distribution "uniform")
      ("pmos3v3_dvarmaxrdsw" mean "0.0" tolerance "0.5" distribution "uniform")

   )

   )
)
