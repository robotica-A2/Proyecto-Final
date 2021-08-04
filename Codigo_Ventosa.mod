MODULE Module1
        CONST robtarget Target_10:=[[61.530096909,457.528,1256.9],[0.5,0,0.866025404,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TomarVentana:=[[669.620428776,521.192210663,117.157127978],[0,0.707106781,0.707106781,0],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: ASUS M509
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !Add your code here
        WaitDI DIVC, 1;
        Path_10;
        
    ENDPROC
    PROC Path_10()
        MoveJ Target_10,v500,z100,tVacuum\WObj:=Workobject_1;
        MoveL TomarVentana,v200,fine,tVacuum\WObj:=Workobject_1;
        SetDO DOVV, 1;
        WaitTime 1;
        SetDO DOVV, 0;
        MoveJ Target_10,v500,z100,tVacuum\WObj:=Workobject_1;
    ENDPROC
ENDMODULE