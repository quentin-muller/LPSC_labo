/*-----------------------------------------------------------------------------
--                                 _             _
--                                | |_  ___ _ __(_)__ _
--                                | ' \/ -_) '_ \ / _` |
--                                |_||_\___| .__/_\__,_|
--                                         |_|
--
-------------------------------------------------------------------------------
--
-- Company: hepia
-- Author: Joachim Schmidt <joachim.schmidt@hesge.ch
--
-- File Name: lpsc_mandelbrot_firmware_app.c
-- Target Device: digilentinc.com:nexys_video:part0:1.1 xc7a200tsbg484-1
-- Tool version: 2021.2
-- Description: Software application
--
-- Last update: 2022-02-28 10:18:28
--
-----------------------------------------------------------------------------*/

/* Xilinx includes. */
#include "xil_printf.h"
#include "xparameters.h"


/*----------------------------------------------------------------
// Constants
//--------------------------------------------------------------*/


/*----------------------------------------------------------------
// Variables
//--------------------------------------------------------------*/
/** @brief Software version */
const char * APP_VERSION = "0.0.1";


/*----------------------------------------------------------------
// Static Functions
//--------------------------------------------------------------*/


/*----------------------------------------------------------------
// Functions
//--------------------------------------------------------------*/

/**
 * @brief Main entry point
 */
int main( void )
{

	//----------------------------------------------------------------
  xil_printf( "\r\n-- lpsc_mandelbrot_firmware app v%s\r\n", APP_VERSION);
  xil_printf("-- %s - %s\r\n", __DATE__,__TIME__);

  // Endless loop
	for( ;; );
}
