
/* wpar.c: source file for the command-line parms write routine.
 * Copyright (C) 2014  Bradley Worley  <geekysuavo@gmail.com>.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to:
 *
 *   Free Software Foundation, Inc.
 *   51 Franklin Street, Fifth Floor
 *   Boston, MA  02110-1301, USA.
 */

/* include the PPM header. */
#include "ppm.h"

/* main: application entry point. */
int main (int argc, char **argv) {
  /* declare required variables. */
  ppm_parms parms;

  /* ensure the number of arguments is correct. */
  if (argc != 7) {
    /* output an error message. */
    fprintf (stderr, "error: arguments (parms) required\n");

    /* return an error. */
    return 1;
  }

  /* read the arguments into the parameter structure. */
  parms.polarize_ovf = atoi (argv[1]);
  parms.acquire_ovf = atoi (argv[2]);
  parms.acquire_count = atoi (argv[3]);
  parms.deadtime_pol = atoi (argv[4]);
  parms.deadtime_acq = atoi (argv[5]);
  parms.ccs_value = atoi (argv[6]);

  /* write the parameters to the device. */
  if (!ppm_wpar (NULL, &parms)) {
    /* output an error message. */
    fprintf (stderr, "error: wpar failed\n");

    /* return an error. */
    return 1;
  }

  /* return success. */
  return 0;
}
