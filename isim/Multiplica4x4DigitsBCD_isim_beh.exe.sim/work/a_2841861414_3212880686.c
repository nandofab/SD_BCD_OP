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
static const char *ng0 = "/home/lukas/ISE_PROJETOS/SD_BCD_OP/Multiplica2Digits.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2841861414_3212880686_p_0(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 8571);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4000);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (3 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 8416U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (4U + 4U);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 5192);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 8U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 5080);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t11, 0);
    goto LAB6;

}

static void work_a_2841861414_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = (7 - 7);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 8575);
    t9 = xsi_mem_cmp(t7, t2, 4U);
    if (t9 == 1)
        goto LAB5;

LAB12:    t10 = (t0 + 8579);
    t12 = xsi_mem_cmp(t10, t2, 4U);
    if (t12 == 1)
        goto LAB6;

LAB13:    t13 = (t0 + 8583);
    t15 = xsi_mem_cmp(t13, t2, 4U);
    if (t15 == 1)
        goto LAB7;

LAB14:    t16 = (t0 + 8587);
    t18 = xsi_mem_cmp(t16, t2, 4U);
    if (t18 == 1)
        goto LAB8;

LAB15:    t19 = (t0 + 8591);
    t21 = xsi_mem_cmp(t19, t2, 4U);
    if (t21 == 1)
        goto LAB9;

LAB16:    t22 = (t0 + 8595);
    t24 = xsi_mem_cmp(t22, t2, 4U);
    if (t24 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8623);
    t7 = (t0 + 5256);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);

LAB4:    xsi_set_current_line(88, ng0);

LAB21:    t2 = (t0 + 5096);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(89, ng0);
    t25 = (t0 + 8599);
    t27 = (t0 + 5256);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 4U);
    xsi_driver_first_trans_fast(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8603);
    t7 = (t0 + 5256);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8607);
    t7 = (t0 + 5256);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8611);
    t7 = (t0 + 5256);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB9:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8615);
    t7 = (t0 + 5256);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8619);
    t7 = (t0 + 5256);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 5096);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}

static void work_a_2841861414_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = (7 - 7);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 8627);
    t9 = xsi_mem_cmp(t7, t2, 4U);
    if (t9 == 1)
        goto LAB5;

LAB12:    t10 = (t0 + 8631);
    t12 = xsi_mem_cmp(t10, t2, 4U);
    if (t12 == 1)
        goto LAB6;

LAB13:    t13 = (t0 + 8635);
    t15 = xsi_mem_cmp(t13, t2, 4U);
    if (t15 == 1)
        goto LAB7;

LAB14:    t16 = (t0 + 8639);
    t18 = xsi_mem_cmp(t16, t2, 4U);
    if (t18 == 1)
        goto LAB8;

LAB15:    t19 = (t0 + 8643);
    t21 = xsi_mem_cmp(t19, t2, 4U);
    if (t21 == 1)
        goto LAB9;

LAB16:    t22 = (t0 + 8647);
    t24 = xsi_mem_cmp(t22, t2, 4U);
    if (t24 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 8675);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);

LAB4:    xsi_set_current_line(97, ng0);

LAB21:    t2 = (t0 + 5112);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(98, ng0);
    t25 = (t0 + 8651);
    t27 = (t0 + 5320);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 4U);
    xsi_driver_first_trans_fast(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 8655);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 8659);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 8663);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB9:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 8667);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 8671);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 5112);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_2841861414_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2841861414_3212880686_p_0,(void *)work_a_2841861414_3212880686_p_1,(void *)work_a_2841861414_3212880686_p_2};
	xsi_register_didat("work_a_2841861414_3212880686", "isim/Multiplica4x4DigitsBCD_isim_beh.exe.sim/work/a_2841861414_3212880686.didat");
	xsi_register_executes(pe);
}
