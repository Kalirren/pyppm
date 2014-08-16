
/* rshh.c: source file for the command-line humanized shims read routine.
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

/* declare the output format string. */
#define RSHH_FORMAT "\n\
  X-shim value:\t%6.3lf \n\
  Y-shim value:\t%6.3lf \n\
  Z-shim value:\t%6.3lf \n\
"

/* main: application entry point. */
int main (int argc, char **argv) {
  /* declare required variables. */
  ppm_shims shims;

  /* read the shims. */
  if (!ppm_rsh (NULL, &shims)) {
    /* output an error message. */
    fprintf (stderr, "error: rsh failed\n");

    /* return an error. */
    return 1;
  }

  /* humanize the shims. */
  if (!ppm_shims_humanize (&shims)) {
    /* output an error message. */
    fprintf (stderr, "error: humanize failed\n");

    /* return an error. */
    return 1;
  }

  /* output human-readable shims. */
  fprintf (stdout, RSHH_FORMAT, shims.f_x, shims.f_y, shims.f_z);

  /* return success. */
  return 0;
}
