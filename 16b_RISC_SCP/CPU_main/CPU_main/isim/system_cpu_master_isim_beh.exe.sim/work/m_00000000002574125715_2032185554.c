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
static const char *ng0 = "C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/16b_RISC_SCP/CPU_main/CPU_main/Instruction_memory.v";
static const char *ng1 = "instruction_memory.txt";



static void Initial_18_0(char *t0)
{
    char *t1;

LAB0:    xsi_set_current_line(18, ng0);

LAB2:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1012);
    xsi_vlogfile_readmemb(ng1, 0, t1, 0, 0, 0, 0);

LAB1:    return;
}

static void Always_22_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 1680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1876);
    *((int *)t2) = 1;
    t3 = (t0 + 1708);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(22, ng0);

LAB5:    xsi_set_current_line(23, ng0);
    t4 = (t0 + 1012);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t8 = (t0 + 1012);
    t9 = (t8 + 44U);
    t10 = *((char **)t9);
    t11 = (t0 + 1012);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    t14 = (t0 + 692U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 16, t6, t10, t13, 2, 1, t15, 6, 2);
    t14 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t14, t7, 0, 0, 16, 0LL);
    goto LAB2;

}


extern void work_m_00000000002574125715_2032185554_init()
{
	static char *pe[] = {(void *)Initial_18_0,(void *)Always_22_1};
	xsi_register_didat("work_m_00000000002574125715_2032185554", "isim/system_cpu_master_isim_beh.exe.sim/work/m_00000000002574125715_2032185554.didat");
	xsi_register_executes(pe);
}
