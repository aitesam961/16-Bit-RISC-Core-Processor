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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004278715254_2397809620_init();
    work_m_00000000003448265910_0771584760_init();
    work_m_00000000004110769547_3901337038_init();
    work_m_00000000002673435209_0167927651_init();
    work_m_00000000002207890934_1831320275_init();
    work_m_00000000002673435209_1570885135_init();
    work_m_00000000000183547763_3398234877_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000183547763_3398234877");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
