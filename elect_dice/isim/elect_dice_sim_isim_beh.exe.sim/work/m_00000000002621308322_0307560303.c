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
static const char *ng0 = "C:/Users/teramoto_2/Documents/works/FPGA/project/elect_dice/elect_dice.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {6U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {91U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {79U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {102U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {109U, 0U};
static unsigned int ng11[] = {5U, 0U};
static unsigned int ng12[] = {125U, 0U};

static void NetReassign_54_2(char *);
static void NetReassign_58_3(char *);
static void NetReassign_64_4(char *);


static int sp_DEC(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;

LAB0:    t0 = 1;
    xsi_set_current_line(36, ng0);

LAB2:    xsi_set_current_line(37, ng0);
    t3 = (t1 + 1544);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);

LAB3:    t6 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t6, 3);
    if (t7 == 1)
        goto LAB4;

LAB5:    t3 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB6;

LAB7:    t3 = ((char*)((ng5)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = ((char*)((ng7)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB10;

LAB11:    t3 = ((char*)((ng9)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB12;

LAB13:    t3 = ((char*)((ng11)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB14;

LAB15:
LAB17:
LAB16:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 1452);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);

LAB18:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(38, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t1 + 1452);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 7);
    goto LAB18;

LAB6:    xsi_set_current_line(39, ng0);
    t4 = ((char*)((ng4)));
    t6 = (t1 + 1452);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 7);
    goto LAB18;

LAB8:    xsi_set_current_line(40, ng0);
    t4 = ((char*)((ng6)));
    t6 = (t1 + 1452);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 7);
    goto LAB18;

LAB10:    xsi_set_current_line(41, ng0);
    t4 = ((char*)((ng8)));
    t6 = (t1 + 1452);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 7);
    goto LAB18;

LAB12:    xsi_set_current_line(42, ng0);
    t4 = ((char*)((ng10)));
    t6 = (t1 + 1452);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 7);
    goto LAB18;

LAB14:    xsi_set_current_line(43, ng0);
    t4 = ((char*)((ng12)));
    t6 = (t1 + 1452);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 7);
    goto LAB18;

}

static void Cont_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 2068U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2892);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void Always_51_1(char *t0)
{
    char t13[8];
    char t28[8];
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;

LAB0:    t1 = (t0 + 2212U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2840);
    *((int *)t2) = 1;
    t3 = (t0 + 2240);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 948U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1268);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng11)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB12;

LAB9:    if (t18 != 0)
        goto LAB11;

LAB10:    *((unsigned int *)t13) = 1;

LAB12:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(62, ng0);

LAB26:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 948U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB30;

LAB28:    if (*((unsigned int *)t2) == 0)
        goto LAB27;

LAB29:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB30:    t5 = (t13 + 4);
    t11 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    *((unsigned int *)t13) = t15;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t11) != 0)
        goto LAB32;

LAB31:    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t12 = (t13 + 4);
    t24 = *((unsigned int *)t12);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t31 = (t27 != 0);
    if (t31 > 0)
        goto LAB33;

LAB34:
LAB35:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1268);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 3, t4, 3, t5, 3);
    t11 = (t0 + 1268);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 3, 0LL);

LAB15:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(54, ng0);
    t11 = (t0 + 1360);
    xsi_set_assignedflag(t11);
    t12 = (t0 + 4064);
    *((int *)t12) = 1;
    NetReassign_54_2(t0);
    goto LAB8;

LAB11:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB12;

LAB13:    xsi_set_current_line(56, ng0);

LAB16:    xsi_set_current_line(57, ng0);
    t29 = (t0 + 948U);
    t30 = *((char **)t29);
    memset(t28, 0, 8);
    t29 = (t30 + 4);
    t31 = *((unsigned int *)t29);
    t32 = (~(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB20;

LAB18:    if (*((unsigned int *)t29) == 0)
        goto LAB17;

LAB19:    t36 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t36) = 1;

LAB20:    t37 = (t28 + 4);
    t38 = (t30 + 4);
    t39 = *((unsigned int *)t30);
    t40 = (~(t39));
    *((unsigned int *)t28) = t40;
    *((unsigned int *)t37) = 0;
    if (*((unsigned int *)t38) != 0)
        goto LAB22;

LAB21:    t45 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t45 & 1U);
    t46 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t46 & 1U);
    t47 = (t28 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t28);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB23;

LAB24:
LAB25:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1268);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB15;

LAB17:    *((unsigned int *)t28) = 1;
    goto LAB20;

LAB22:    t41 = *((unsigned int *)t28);
    t42 = *((unsigned int *)t38);
    *((unsigned int *)t28) = (t41 | t42);
    t43 = *((unsigned int *)t37);
    t44 = *((unsigned int *)t38);
    *((unsigned int *)t37) = (t43 | t44);
    goto LAB21;

LAB23:    xsi_set_current_line(58, ng0);
    t53 = (t0 + 1360);
    xsi_set_assignedflag(t53);
    t54 = (t0 + 4068);
    *((int *)t54) = 1;
    NetReassign_58_3(t0);
    goto LAB25;

LAB27:    *((unsigned int *)t13) = 1;
    goto LAB30;

LAB32:    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t13) = (t16 | t17);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t11);
    *((unsigned int *)t5) = (t18 | t19);
    goto LAB31;

LAB33:    xsi_set_current_line(64, ng0);
    t21 = (t0 + 1360);
    xsi_set_assignedflag(t21);
    t22 = (t0 + 4072);
    *((int *)t22) = 1;
    NetReassign_64_4(t0);
    goto LAB35;

}

static void NetReassign_54_2(char *t0)
{
    char t22[8];
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 2356U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t3 = 0;
    t2 = (t0 + 1268);
    t4 = (t2 + 36U);
    t5 = *((char **)t4);
    t6 = (t0 + 2256);
    t7 = (t0 + 484);
    t8 = xsi_create_subprogram_invocation(t6, 0, t0, t7, 0, 0);
    t9 = (t0 + 1544);
    xsi_vlogvar_assign_value(t9, t5, 0, 0, 3);

LAB4:    t10 = (t0 + 2308);
    t11 = *((char **)t10);
    t12 = (t11 + 44U);
    t13 = *((char **)t12);
    t14 = (t13 + 148U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    t17 = *((char **)t16);
    t18 = ((int  (*)(char *, char *))t17)(t0, t11);
    if (t18 != 0)
        goto LAB6;

LAB5:    t11 = (t0 + 2308);
    t19 = *((char **)t11);
    t11 = (t0 + 1452);
    t20 = (t11 + 36U);
    t21 = *((char **)t20);
    memcpy(t22, t21, 8);
    t23 = (t0 + 484);
    t24 = (t0 + 2256);
    t25 = 0;
    xsi_delete_subprogram_invocation(t23, t19, t0, t24, t25);
    t26 = (t0 + 4064);
    if (*((int *)t26) > 0)
        goto LAB7;

LAB8:    if (t3 > 0)
        goto LAB9;

LAB10:    t29 = (t0 + 2848);
    *((int *)t29) = 0;

LAB11:
LAB1:    return;
LAB6:    t10 = (t0 + 2356U);
    *((char **)t10) = &&LAB4;
    goto LAB1;

LAB7:    t27 = (t0 + 1360);
    xsi_vlogvar_assignassignvalue(t27, t22, 0, 0, 0, 7, ((int*)(t26)));
    t3 = 1;
    goto LAB8;

LAB9:    t28 = (t0 + 2848);
    *((int *)t28) = 1;
    goto LAB11;

}

static void NetReassign_58_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2500U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4068);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1360);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 7, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_64_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2644U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4072);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1360);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 7, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}


extern void work_m_00000000002621308322_0307560303_init()
{
	static char *pe[] = {(void *)Cont_28_0,(void *)Always_51_1,(void *)NetReassign_54_2,(void *)NetReassign_58_3,(void *)NetReassign_64_4};
	static char *se[] = {(void *)sp_DEC};
	xsi_register_didat("work_m_00000000002621308322_0307560303", "isim/elect_dice_sim_isim_beh.exe.sim/work/m_00000000002621308322_0307560303.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
