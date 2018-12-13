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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/lukas/ISE_PROJETOS/DigitalSystems-BCD-Operations/Multiplica4x1Digits.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1117423424_3212880686_p_0(char *t0)
{
    char t4[16];
    char t10[16];
    char t15[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4000);
    t6 = (t0 + 7520U);
    t7 = (t0 + 7520U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t0 + 7520U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t4, (char)97, t9, t12, (char)101);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t16 = ((IEEE_P_2592010699) + 4000);
    t17 = (t0 + 7520U);
    t13 = xsi_base_array_concat(t13, t15, t16, (char)97, t8, t10, (char)97, t14, t17, (char)101);
    t18 = (t0 + 1512U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4000);
    t22 = (t0 + 7520U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t13, t15, (char)97, t19, t22, (char)101);
    t23 = (4U + 4U);
    t24 = (t23 + 4U);
    t25 = (t24 + 4U);
    t26 = (t25 + 4U);
    t27 = (20U != t26);
    if (t27 == 1)
        goto LAB5;

LAB6:    t28 = (t0 + 4344);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 20U);
    xsi_driver_first_trans_fast_port(t28);

LAB2:    t33 = (t0 + 4264);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(20U, t26, 0);
    goto LAB6;

}


extern void work_a_1117423424_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1117423424_3212880686_p_0};
	xsi_register_didat("work_a_1117423424_3212880686", "isim/Multiplica4x1Digits_isim_beh.exe.sim/work/a_1117423424_3212880686.didat");
	xsi_register_executes(pe);
}
