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
static const char *ng0 = "C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/New folder/RISC_16b_SCP/Reg_File_Main.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {3U, 0U};
static int ng8[] = {3, 0};
static unsigned int ng9[] = {4U, 0U};
static int ng10[] = {4, 0};
static unsigned int ng11[] = {5U, 0U};
static int ng12[] = {5, 0};
static unsigned int ng13[] = {6U, 0U};
static int ng14[] = {6, 0};
static unsigned int ng15[] = {7U, 0U};
static int ng16[] = {7, 0};
static unsigned int ng17[] = {8U, 0U};
static int ng18[] = {8, 0};
static unsigned int ng19[] = {9U, 0U};
static int ng20[] = {9, 0};
static unsigned int ng21[] = {10U, 0U};
static int ng22[] = {10, 0};
static unsigned int ng23[] = {11U, 0U};
static int ng24[] = {11, 0};
static unsigned int ng25[] = {12U, 0U};
static int ng26[] = {12, 0};
static int ng27[] = {13, 0};
static unsigned int ng28[] = {14U, 0U};
static int ng29[] = {14, 0};
static unsigned int ng30[] = {15U, 0U};
static int ng31[] = {15, 0};



static void Always_41_0(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    int t16;

LAB0:    t1 = (t0 + 4020U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 4648);
    *((int *)t2) = 1;
    t3 = (t0 + 4048);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 968U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3496);
    t4 = (t0 + 3496);
    t7 = (t4 + 44U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t9, t8, 2, t10, 32, 1);
    t11 = (t9 + 4);
    t15 = *((unsigned int *)t11);
    t6 = (!(t15));
    if (t6 == 1)
        goto LAB74;

LAB75:
LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(44, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 3496);
    t10 = (t0 + 3496);
    t11 = (t10 + 44U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t9, t12, 2, t13, 32, 1);
    t14 = (t9 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB42;

LAB43:    goto LAB41;

LAB9:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB44;

LAB45:    goto LAB41;

LAB11:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB46;

LAB47:    goto LAB41;

LAB13:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB48;

LAB49:    goto LAB41;

LAB15:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng10)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB50;

LAB51:    goto LAB41;

LAB17:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng12)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB52;

LAB53:    goto LAB41;

LAB19:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB54;

LAB55:    goto LAB41;

LAB21:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng16)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB56;

LAB57:    goto LAB41;

LAB23:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng18)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB58;

LAB59:    goto LAB41;

LAB25:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng20)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB60;

LAB61:    goto LAB41;

LAB27:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng22)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB62;

LAB63:    goto LAB41;

LAB29:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng24)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB64;

LAB65:    goto LAB41;

LAB31:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng26)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB66;

LAB67:    goto LAB41;

LAB33:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng27)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB68;

LAB69:    goto LAB41;

LAB35:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng29)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB70;

LAB71:    goto LAB41;

LAB37:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    t7 = (t0 + 3496);
    t8 = (t7 + 44U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng31)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB72;

LAB73:    goto LAB41;

LAB42:    xsi_vlogvar_wait_assign_value(t8, t7, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB43;

LAB44:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB45;

LAB46:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB47;

LAB48:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB49;

LAB50:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB51;

LAB52:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB53;

LAB54:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB55;

LAB56:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB57;

LAB58:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB59;

LAB60:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB61;

LAB62:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB63;

LAB64:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB65;

LAB66:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB67;

LAB68:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB69;

LAB70:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB71;

LAB72:    xsi_vlogvar_wait_assign_value(t4, t3, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB73;

LAB74:    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t9), 1, 0LL);
    goto LAB75;

}

static void Always_105_1(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 4164U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4656);
    *((int *)t2) = 1;
    t3 = (t0 + 4192);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(123, ng0);

LAB5:    xsi_set_current_line(124, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(125, ng0);
    t7 = (t0 + 1428U);
    t8 = *((char **)t7);
    memcpy(t9, t8, 8);
    t7 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t7, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB9:    xsi_set_current_line(126, ng0);
    t3 = (t0 + 1520U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB11:    xsi_set_current_line(127, ng0);
    t3 = (t0 + 1612U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB13:    xsi_set_current_line(128, ng0);
    t3 = (t0 + 1704U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB15:    xsi_set_current_line(129, ng0);
    t3 = (t0 + 1796U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB17:    xsi_set_current_line(130, ng0);
    t3 = (t0 + 1888U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB19:    xsi_set_current_line(131, ng0);
    t3 = (t0 + 1980U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB21:    xsi_set_current_line(132, ng0);
    t3 = (t0 + 2072U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB23:    xsi_set_current_line(133, ng0);
    t3 = (t0 + 2164U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB25:    xsi_set_current_line(134, ng0);
    t3 = (t0 + 2256U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB27:    xsi_set_current_line(135, ng0);
    t3 = (t0 + 2348U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB29:    xsi_set_current_line(136, ng0);
    t3 = (t0 + 2440U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB31:    xsi_set_current_line(137, ng0);
    t3 = (t0 + 2532U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB33:    xsi_set_current_line(138, ng0);
    t3 = (t0 + 2624U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB35:    xsi_set_current_line(139, ng0);
    t3 = (t0 + 2716U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

LAB37:    xsi_set_current_line(140, ng0);
    t3 = (t0 + 2808U);
    t4 = *((char **)t3);
    memcpy(t9, t4, 8);
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB41;

}

static void Always_148_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 4308U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 4664);
    *((int *)t2) = 1;
    t3 = (t0 + 4336);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(166, ng0);

LAB5:    xsi_set_current_line(167, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(168, ng0);
    t7 = (t0 + 1428U);
    t8 = *((char **)t7);
    t7 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 1, 0LL);
    goto LAB41;

LAB9:    xsi_set_current_line(169, ng0);
    t3 = (t0 + 1520U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB11:    xsi_set_current_line(170, ng0);
    t3 = (t0 + 1612U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB13:    xsi_set_current_line(171, ng0);
    t3 = (t0 + 1704U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB15:    xsi_set_current_line(172, ng0);
    t3 = (t0 + 1796U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB17:    xsi_set_current_line(173, ng0);
    t3 = (t0 + 1888U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB19:    xsi_set_current_line(174, ng0);
    t3 = (t0 + 1980U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB21:    xsi_set_current_line(175, ng0);
    t3 = (t0 + 2072U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB23:    xsi_set_current_line(176, ng0);
    t3 = (t0 + 2164U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB25:    xsi_set_current_line(177, ng0);
    t3 = (t0 + 2256U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB27:    xsi_set_current_line(178, ng0);
    t3 = (t0 + 2348U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB29:    xsi_set_current_line(179, ng0);
    t3 = (t0 + 2440U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB31:    xsi_set_current_line(180, ng0);
    t3 = (t0 + 2532U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB33:    xsi_set_current_line(181, ng0);
    t3 = (t0 + 2624U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB35:    xsi_set_current_line(182, ng0);
    t3 = (t0 + 2716U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

LAB37:    xsi_set_current_line(183, ng0);
    t3 = (t0 + 2808U);
    t4 = *((char **)t3);
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    goto LAB41;

}

static void Cont_189_3(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 4452U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(189, ng0);
    t2 = (t0 + 3312);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memcpy(t5, t4, 8);
    t6 = (t0 + 4716);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memset(t10, 0, 8);
    t11 = 65535U;
    t12 = t11;
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t11 = (t11 & t14);
    t15 = *((unsigned int *)t13);
    t12 = (t12 & t15);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 | t11);
    t18 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t18 | t12);
    xsi_driver_vfirst_trans(t6, 0, 15);
    t19 = (t0 + 4672);
    *((int *)t19) = 1;

LAB1:    return;
}


extern void work_m_00000000000246728971_1575303963_init()
{
	static char *pe[] = {(void *)Always_41_0,(void *)Always_105_1,(void *)Always_148_2,(void *)Cont_189_3};
	xsi_register_didat("work_m_00000000000246728971_1575303963", "isim/Reg_File_main_tb_isim_beh.exe.sim/work/m_00000000000246728971_1575303963.didat");
	xsi_register_executes(pe);
}
