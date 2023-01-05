/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void Gate_29_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1524U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 772U);
    t3 = *((char **)t2);
    t2 = (t0 + 864U);
    t4 = *((char **)t2);
    t2 = (t0 + 1764);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    xsi_vlog_XorGate(t8, 2, t3, t4);
    t9 = (t0 + 1764);
    xsi_driver_vfirst_trans(t9, 0, 0);
    t10 = (t0 + 1720);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void simprims_ver_m_00000000002872589513_3118641787_2610851354_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2610851354", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2610851354.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0643039956_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0643039956", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0643039956.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_4223851345_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_4223851345", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_4223851345.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2259803401_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2259803401", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2259803401.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1529283724_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1529283724", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1529283724.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_3874318402_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_3874318402", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_3874318402.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0997962183_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0997962183", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0997962183.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0470508786_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0470508786", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0470508786.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2524991984_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2524991984", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2524991984.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1259767925_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1259767925", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1259767925.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1818647872_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1818647872", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1818647872.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2985329861_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2985329861", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2985329861.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_1123903394_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_1123903394", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_1123903394.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_2674638375_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_2674638375", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_2674638375.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_0581030633_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_0581030633", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_0581030633.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000002872589513_3118641787_4281797484_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000002872589513_3118641787_4281797484", "isim/system_cpu_master_tb_isim_par.exe.sim/simprims_ver/m_00000000002872589513_3118641787_4281797484.didat");
	xsi_register_executes(pe);
}
