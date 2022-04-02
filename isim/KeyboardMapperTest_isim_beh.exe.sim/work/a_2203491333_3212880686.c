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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/kamil/Desktop/STUDIA/VI SEMESTR/UCiSW2/organs/KeyboardMapper.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2203491333_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4536);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 2152U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t3 = (t0 + 4664);
    t9 = (t3 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t8;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_2203491333_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    int t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4728);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)2);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB3:    t1 = (t0 + 4552);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 7718);
    t9 = xsi_mem_cmp(t1, t4, 8U);
    if (t9 == 1)
        goto LAB6;

LAB19:    t6 = (t0 + 7726);
    t10 = xsi_mem_cmp(t6, t4, 8U);
    if (t10 == 1)
        goto LAB7;

LAB20:    t11 = (t0 + 7734);
    t13 = xsi_mem_cmp(t11, t4, 8U);
    if (t13 == 1)
        goto LAB8;

LAB21:    t14 = (t0 + 7742);
    t16 = xsi_mem_cmp(t14, t4, 8U);
    if (t16 == 1)
        goto LAB9;

LAB22:    t17 = (t0 + 7750);
    t19 = xsi_mem_cmp(t17, t4, 8U);
    if (t19 == 1)
        goto LAB10;

LAB23:    t20 = (t0 + 7758);
    t22 = xsi_mem_cmp(t20, t4, 8U);
    if (t22 == 1)
        goto LAB11;

LAB24:    t23 = (t0 + 7766);
    t25 = xsi_mem_cmp(t23, t4, 8U);
    if (t25 == 1)
        goto LAB12;

LAB25:    t26 = (t0 + 7774);
    t28 = xsi_mem_cmp(t26, t4, 8U);
    if (t28 == 1)
        goto LAB13;

LAB26:    t29 = (t0 + 7782);
    t31 = xsi_mem_cmp(t29, t4, 8U);
    if (t31 == 1)
        goto LAB14;

LAB27:    t32 = (t0 + 7790);
    t34 = xsi_mem_cmp(t32, t4, 8U);
    if (t34 == 1)
        goto LAB15;

LAB28:    t35 = (t0 + 7798);
    t37 = xsi_mem_cmp(t35, t4, 8U);
    if (t37 == 1)
        goto LAB16;

LAB29:    t38 = (t0 + 7806);
    t40 = xsi_mem_cmp(t38, t4, 8U);
    if (t40 == 1)
        goto LAB17;

LAB30:
LAB18:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(62, ng0);
    t41 = (t0 + 4728);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    *((unsigned char *)t45) = (unsigned char)1;
    xsi_driver_first_trans_fast(t41);
    goto LAB5;

LAB7:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB12:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB13:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB14:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)9;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB15:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)10;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB16:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)11;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB17:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)12;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB31:;
}

static void work_a_2203491333_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15};

LAB0:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4568);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(84, ng0);
    t4 = (t0 + 7814);
    t6 = (t0 + 4792);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB4:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 7818);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB5:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 7822);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB6:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 7826);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB7:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 7830);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB8:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 7834);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB9:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 7838);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB10:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 7842);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB11:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 7846);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB12:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 7850);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB13:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 7854);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB14:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 7858);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB15:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 7862);
    t4 = (t0 + 4792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

}

static void work_a_2203491333_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(100, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4584);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2203491333_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2203491333_3212880686_p_0,(void *)work_a_2203491333_3212880686_p_1,(void *)work_a_2203491333_3212880686_p_2,(void *)work_a_2203491333_3212880686_p_3};
	xsi_register_didat("work_a_2203491333_3212880686", "isim/KeyboardMapperTest_isim_beh.exe.sim/work/a_2203491333_3212880686.didat");
	xsi_register_executes(pe);
}
