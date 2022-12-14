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
static const char *ng0 = "C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/Temp/Reg_File/REG_File/R_16B.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static int ng7[] = {5, 0};
static int ng8[] = {6, 0};
static int ng9[] = {7, 0};
static int ng10[] = {8, 0};
static int ng11[] = {9, 0};
static int ng12[] = {10, 0};
static int ng13[] = {11, 0};
static int ng14[] = {12, 0};
static int ng15[] = {13, 0};
static int ng16[] = {14, 0};
static int ng17[] = {15, 0};



static void Always_37_0(char *t0)
{
    char t13[8];
    char t28[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    int t44;

LAB0:    t1 = (t0 + 1628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1824);
    *((int *)t2) = 1;
    t3 = (t0 + 1656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);

LAB10:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB14;

LAB11:    if (t18 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t13) = 1;

LAB14:    t12 = (t13 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);

LAB9:    xsi_set_current_line(41, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 16, 0LL);
    goto LAB8;

LAB13:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(44, ng0);

LAB18:    xsi_set_current_line(46, ng0);
    t26 = (t0 + 876U);
    t27 = *((char **)t26);
    memset(t28, 0, 8);
    t26 = (t28 + 4);
    t29 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 0);
    t32 = (t31 & 1);
    *((unsigned int *)t28) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 >> 0);
    t35 = (t34 & 1);
    *((unsigned int *)t26) = t35;
    t36 = (t0 + 1104);
    t38 = (t0 + 1104);
    t39 = (t38 + 44U);
    t40 = *((char **)t39);
    t41 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t37, t40, 2, t41, 32, 1);
    t42 = (t37 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (!(t43));
    if (t44 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 3);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 3);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 4);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 4);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 5);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 5);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 6);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 6);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 7);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB33;

LAB34:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 8);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 8);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng10)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 9);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 9);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng11)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 10);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 10);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng12)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB39;

LAB40:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 11);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 11);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng13)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB41;

LAB42:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 12);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 12);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB43;

LAB44:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 13);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 13);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng15)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB45;

LAB46:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 14);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 14);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng16)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB47;

LAB48:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 15);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 15);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1104);
    t11 = (t0 + 1104);
    t12 = (t11 + 44U);
    t26 = *((char **)t12);
    t27 = ((char*)((ng17)));
    xsi_vlog_generic_convert_bit_index(t28, t26, 2, t27, 32, 1);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t29);
    t44 = (!(t15));
    if (t44 == 1)
        goto LAB49;

LAB50:    goto LAB17;

LAB19:    xsi_vlogvar_wait_assign_value(t36, t28, 0, *((unsigned int *)t37), 1, 0LL);
    goto LAB20;

LAB21:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB22;

LAB23:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB24;

LAB25:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB26;

LAB27:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB28;

LAB29:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB30;

LAB31:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB32;

LAB33:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB34;

LAB35:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB36;

LAB37:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB38;

LAB39:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB40;

LAB41:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB42;

LAB43:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB44;

LAB45:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB46;

LAB47:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB48;

LAB49:    xsi_vlogvar_wait_assign_value(t5, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB50;

}


extern void work_m_00000000001177834462_0758788673_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000001177834462_0758788673", "isim/Register_File_tb_isim_beh.exe.sim/work/m_00000000001177834462_0758788673.didat");
	xsi_register_executes(pe);
}
