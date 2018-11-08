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
static const char *ng0 = "/home/lukas/ISE_PROJETOS/SD_BCD_OP/Adder8x8DigitsBCD.vhd";



static void work_a_2300730327_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3968);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);

LAB2:    t7 = (t0 + 3872);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2300730327_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4032);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_delta(t1, 0U, 16U, 0LL);

LAB2:    t7 = (t0 + 3888);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2300730327_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2300730327_3212880686_p_0,(void *)work_a_2300730327_3212880686_p_1};
	xsi_register_didat("work_a_2300730327_3212880686", "isim/Multiplica4x4DigitsBCD_isim_beh.exe.sim/work/a_2300730327_3212880686.didat");
	xsi_register_executes(pe);
}
