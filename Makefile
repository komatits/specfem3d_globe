#=====================================================================
#
#          S p e c f e m 3 D  G l o b e  V e r s i o n  4 . 0
#          --------------------------------------------------
#
#          Main authors: Dimitri Komatitsch and Jeroen Tromp
#    Seismological Laboratory, California Institute of Technology, USA
#             and University of Pau / CNRS / INRIA, France
# (c) California Institute of Technology and University of Pau / CNRS / INRIA
#                            February 2008
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
#=====================================================================

# Makefile.  Generated from Makefile.in by configure.

#
# Intel ifort
#
FC = ifort
MPIFC = mpif90
FLAGS_NO_CHECK = -O1 -vec-report0 -e95 -implicitnone -warn truncated_source -warn argument_checking -warn unused -warn declarations -std95 -check nobounds -align sequence -assume byterecl -ftrapuv -fpe0 -ftz -traceback
#FLAGS_NO_CHECK = -O3 -xP -vec-report0 -e95 -implicitnone -warn truncated_source -warn argument_checking -warn unused -warn declarations -std95 -check nobounds -align sequence -assume byterecl -fpe3 -ftz

#
# GNU gfortran
#
#FC = gfortran
#MPIFC = /opt/mpich2_gfortran/bin/mpif90
#FLAGS_NO_CHECK = -std=gnu -fimplicit-none -frange-check -O3 -fmax-errors=10 -pedantic -pedantic-errors -Waliasing -Wampersand -Wcharacter-truncation -Wline-truncation -Wsurprising -Wno-tabs -Wunderflow -fno-trapping-math

#
# Portland pgf90
#
#FC = pgf90
#MPIFC = mpif90
#FLAGS_NO_CHECK = -fast -Mnobounds -Minline -Mneginfo -Mdclchk -Knoieee -Minform=warn -Mstandard -fastsse -tp amd64e

FLAGS_CHECK = $(FLAGS_NO_CHECK)
#FLAGS_NO_CHECK2 = -O3 -e95 -implicitnone -warn truncated_source -warn argument_checking -warn declarations -std95 -CB -align sequence -assume byterecl # -warn unused
FLAGS_NO_CHECK2 = $(FLAGS_NO_CHECK)
FCFLAGS_f90 =
MPILIBS =
FCFLAGS = #-g

SPECINC=setup/
BIN=bin

FCCOMPILE_CHECK = ${FC} ${FCFLAGS} $(FLAGS_CHECK) -I$(SPECINC)
FCCOMPILE_NO_CHECK = ${FC} ${FCFLAGS} $(FLAGS_NO_CHECK) -I$(SPECINC)
MPIFCCOMPILE_CHECK = ${MPIFC} ${FCFLAGS} $(FLAGS_CHECK) -I$(SPECINC)
MPIFCCOMPILE_NO_CHECK = ${MPIFC} ${FCFLAGS} $(FLAGS_NO_CHECK) -I$(SPECINC)
MPIFCCOMPILE_NO_CHECK2 = ${MPIFC} ${FCFLAGS} $(FLAGS_NO_CHECK2) -I$(SPECINC)

CC = gcc
CFLAGS = -g -O2
CPPFLAGS = -I. 

AR = ar
ARFLAGS = cru
RANLIB = ranlib

O = obj
S = src

libspecfem_a_OBJECTS = \
	$O/add_missing_nodes.o \
	$O/add_topography.o \
	$O/add_topography_410_650.o \
	$O/add_topography_cmb.o \
	$O/add_topography_icb.o \
	$O/anisotropic_inner_core_model.o \
	$O/anisotropic_mantle_model.o \
	$O/assemble_MPI_scalar.o \
	$O/assemble_MPI_vector.o \
	$O/attenuation_model.o \
	$O/calc_jacobian.o \
	$O/comp_source_spectrum.o \
	$O/comp_source_time_function.o \
	$O/compute_arrays_source.o \
	$O/compute_coordinates_grid.o \
	$O/compute_element_properties.o \
	$O/count_number_of_sources.o \
	$O/create_central_cube_buffers.o \
	$O/create_chunk_buffers.o \
	$O/create_header_file.o \
	$O/create_name_database.o \
	$O/create_regions_mesh.o \
	$O/crustal_model.o \
	$O/define_derivation_matrices.o \
	$O/define_superbrick.o \
	$O/euler_angles.o \
	$O/get_MPI_1D_buffers.o \
	$O/get_MPI_cutplanes_eta.o \
	$O/get_MPI_cutplanes_xi.o \
	$O/get_cmt.o \
	$O/get_ellipticity.o \
	$O/get_event_info.o \
	$O/get_global.o \
	$O/get_jacobian_boundaries.o \
	$O/get_jacobian_discontinuities.o \
	$O/get_model.o \
	$O/get_perm_cuthill_mckee.o \
	$O/get_shape2D.o \
	$O/get_shape3D.o \
	$O/get_value_parameters.o \
	$O/gll_library.o \
	$O/hex_nodes.o \
	$O/intgrl.o \
	$O/lagrange_poly.o \
	$O/lgndr.o \
	$O/locate_receivers.o \
	$O/locate_sources.o \
	$O/make_ellipticity.o \
	$O/make_gravity.o \
	$O/mantle_model.o \
	$O/jp3d1994_model.o \
	$O/sea99_s_model.o \
	$O/memory_eval.o \
	$O/model_1066a.o \
	$O/model_ak135.o \
	$O/model_iasp91.o \
	$O/model_prem.o \
	$O/model_ref.o \
	$O/model_jp1d.o \
	$O/model_sea1d.o \
	$O/moho_stretching.o \
	$O/spline_routines.o \
	$O/create_list_files_chunks.o \
	$O/recompute_missing_arrays.o \
	$O/netlib_specfun_erf.o \
	$O/read_compute_parameters.o \
	$O/read_value_parameters.o \
	$O/auto_ner.o \
	$O/recompute_jacobian.o \
	$O/reduce.o \
	$O/rthetaphi_xyz.o \
	$O/s362ani.o \
	$O/save_header_file.o \
	$O/sort_array_coordinates.o \
	$O/stretching_function.o \
	$O/topo_bathy.o \
	$O/write_seismograms.o \
	$(EMPTY_MACRO)

# solver objects with statically allocated arrays; dependent upon
# values_from_mesher.h
SOLVER_ARRAY_OBJECTS = \
	$O/assemble_MPI_central_cube.o \
	$O/compute_forces_crust_mantle.o \
	$O/compute_forces_inner_core.o \
	$O/compute_forces_outer_core.o \
	$O/specfem3D.o \
	$(EMPTY_MACRO)

LIBSPECFEM = $O/libspecfem.a


####
#### targets
####

# default targets
DEFAULT = \
	xcreate_header_file \
  OUTPUT_FILES/values_from_mesher.h \
	xmeshfem3D \
	$(EMPTY_MACRO)

default: $(DEFAULT)

all: clean default

backup:
	cp *f90 *h README_SPECFEM3D_GLOBE DATA/Par_file* Makefile go_mesher go_solver mymachines bak

bak: backup


####
#### rules for executables
####

# rules for the main programs
XMESHFEM_OBJECTS = $O/meshfem3D.o $O/exit_mpi.o $(SOLVER_ARRAY_OBJECTS) $(LIBSPECFEM)
xmeshfem3D: $(XMESHFEM_OBJECTS)
## use MPI here
	${MPIFCCOMPILE_CHECK} -o $(BIN)/xmeshfem3D $(XMESHFEM_OBJECTS) $(MPILIBS)

# solver also depends on values from mesher
XSPECFEM_OBJECTS = $(SOLVER_ARRAY_OBJECTS) $O/exit_mpi.o $(LIBSPECFEM)

xconvolve_source_timefunction: $O/convolve_source_timefunction.o
	${FCCOMPILE_CHECK} -o $(BIN)/xconvolve_source_timefunction $O/convolve_source_timefunction.o

xcreate_header_file: $O/create_header_file.o $O/exit_mpi.o $O/get_value_parameters.o $O/read_compute_parameters.o $O/memory_eval.o $O/save_header_file.o $O/count_number_of_sources.o $O/read_value_parameters.o $O/euler_angles.o $O/reduce.o $O/rthetaphi_xyz.o $O/auto_ner.o
	${MPIFCCOMPILE_CHECK} -o $(BIN)/xcreate_header_file $O/create_header_file.o $O/exit_mpi.o $O/get_value_parameters.o $O/read_compute_parameters.o $O/memory_eval.o $O/save_header_file.o $O/count_number_of_sources.o $O/read_value_parameters.o $O/euler_angles.o $O/reduce.o $O/rthetaphi_xyz.o $O/auto_ner.o

clean:
	rm -f $O/* *.o work.pc* *.mod $(BIN)/xmeshfem3D $(BIN)/xconvolve_source_timefunction $(BIN)/xcreate_header_file PI*


###
### rule for the archive library
###

$O/libspecfem.a: $(libspecfem_a_OBJECTS)
	-rm -f $O/libspecfem.a
	$(AR) $(ARFLAGS) $O/libspecfem.a $(libspecfem_a_OBJECTS)
	$(RANLIB) $O/libspecfem.a

####
#### rule for each .o file below
####

###
### optimized flags and dependence on values from mesher here
###

$O/specfem3D.o: $(SPECINC)/constants.h OUTPUT_FILES/values_from_mesher.h $S/specfem3D.f90
	${MPIFCCOMPILE_NO_CHECK2} -c -o $O/specfem3D.o ${FCFLAGS_f90} $S/specfem3D.f90

$O/compute_forces_crust_mantle.o: $(SPECINC)/constants.h OUTPUT_FILES/values_from_mesher.h $S/compute_forces_crust_mantle.f90
	${FCCOMPILE_NO_CHECK} -c -o $O/compute_forces_crust_mantle.o ${FCFLAGS_f90} $S/compute_forces_crust_mantle.f90

$O/compute_forces_outer_core.o: $(SPECINC)/constants.h OUTPUT_FILES/values_from_mesher.h $S/compute_forces_outer_core.f90
	${FCCOMPILE_NO_CHECK} -c -o $O/compute_forces_outer_core.o ${FCFLAGS_f90} $S/compute_forces_outer_core.f90

$O/compute_forces_inner_core.o: $(SPECINC)/constants.h OUTPUT_FILES/values_from_mesher.h $S/compute_forces_inner_core.f90
	${FCCOMPILE_NO_CHECK} -c -o $O/compute_forces_inner_core.o ${FCFLAGS_f90} $S/compute_forces_inner_core.f90

### use MPI here
$O/assemble_MPI_vector.o: $(SPECINC)/constants.h $S/assemble_MPI_vector.f90
	${MPIFCCOMPILE_NO_CHECK} -c -o $O/assemble_MPI_vector.o ${FCFLAGS_f90} $S/assemble_MPI_vector.f90

### use MPI here
$O/assemble_MPI_scalar.o: $(SPECINC)/constants.h $S/assemble_MPI_scalar.f90
	${MPIFCCOMPILE_NO_CHECK} -c -o $O/assemble_MPI_scalar.o ${FCFLAGS_f90} $S/assemble_MPI_scalar.f90

$O/assemble_MPI_central_cube.o: $(SPECINC)/constants.h OUTPUT_FILES/values_from_mesher.h $S/assemble_MPI_central_cube.f90
	${MPIFCCOMPILE_NO_CHECK} -c -o $O/assemble_MPI_central_cube.o ${FCFLAGS_f90} $S/assemble_MPI_central_cube.f90

###
### regular compilation options here
###

$O/convolve_source_timefunction.o: $S/convolve_source_timefunction.f90
	${FCCOMPILE_CHECK} -c -o $O/convolve_source_timefunction.o ${FCFLAGS_f90} $S/convolve_source_timefunction.f90

$O/create_header_file.o: $S/create_header_file.f90
	${FCCOMPILE_CHECK} -c -o $O/create_header_file.o ${FCFLAGS_f90} $S/create_header_file.f90

$O/comp_source_time_function.o: $S/comp_source_time_function.f90
	${FCCOMPILE_CHECK} -c -o $O/comp_source_time_function.o ${FCFLAGS_f90} $S/comp_source_time_function.f90

## use MPI here
$O/create_chunk_buffers.o: $(SPECINC)/constants.h $S/create_chunk_buffers.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/create_chunk_buffers.o ${FCFLAGS_f90} $S/create_chunk_buffers.f90

$O/sort_array_coordinates.o: $(SPECINC)/constants.h $S/sort_array_coordinates.f90
	${FCCOMPILE_CHECK} -c -o $O/sort_array_coordinates.o ${FCFLAGS_f90} $S/sort_array_coordinates.f90

### use MPI here
$O/locate_sources.o: $(SPECINC)/constants.h $S/locate_sources.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/locate_sources.o ${FCFLAGS_f90} $S/locate_sources.f90

### use MPI here
$O/locate_receivers.o: $(SPECINC)/constants.h $S/locate_receivers.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/locate_receivers.o ${FCFLAGS_f90} $S/locate_receivers.f90

## use MPI here
$O/exit_mpi.o: $(SPECINC)/constants.h $S/exit_mpi.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/exit_mpi.o ${FCFLAGS_f90} $S/exit_mpi.f90

$O/count_number_of_sources.o: $(SPECINC)/constants.h $S/count_number_of_sources.f90
	${FCCOMPILE_CHECK} -c -o $O/count_number_of_sources.o ${FCFLAGS_f90} $S/count_number_of_sources.f90

$O/read_value_parameters.o: $(SPECINC)/constants.h $S/read_value_parameters.f90
	${FCCOMPILE_CHECK} -c -o $O/read_value_parameters.o ${FCFLAGS_f90} $S/read_value_parameters.f90

$O/get_value_parameters.o: $(SPECINC)/constants.h $S/get_value_parameters.f90
	${FCCOMPILE_CHECK} -c -o $O/get_value_parameters.o ${FCFLAGS_f90} $S/get_value_parameters.f90

$O/topo_bathy.o: $(SPECINC)/constants.h $S/topo_bathy.f90
	${FCCOMPILE_CHECK} -c -o $O/topo_bathy.o ${FCFLAGS_f90} $S/topo_bathy.f90

$O/calc_jacobian.o: $(SPECINC)/constants.h $S/calc_jacobian.f90
	${FCCOMPILE_CHECK} -c -o $O/calc_jacobian.o ${FCFLAGS_f90} $S/calc_jacobian.f90

$O/crustal_model.o: $(SPECINC)/constants.h $S/crustal_model.f90
	${FCCOMPILE_CHECK} -c -o $O/crustal_model.o ${FCFLAGS_f90} $S/crustal_model.f90

$O/make_ellipticity.o: $(SPECINC)/constants.h $S/make_ellipticity.f90
	${FCCOMPILE_CHECK} -c -o $O/make_ellipticity.o ${FCFLAGS_f90} $S/make_ellipticity.f90

$O/get_jacobian_boundaries.o: $(SPECINC)/constants.h $S/get_jacobian_boundaries.f90
	${FCCOMPILE_CHECK} -c -o $O/get_jacobian_boundaries.o ${FCFLAGS_f90} $S/get_jacobian_boundaries.f90

$O/get_jacobian_discontinuities.o: $(SPECINC)/constants.h $S/get_jacobian_discontinuities.f90
	${FCCOMPILE_CHECK} -c -o $O/get_jacobian_discontinuities.o ${FCFLAGS_f90} $S/get_jacobian_discontinuities.f90

$O/get_MPI_cutplanes_xi.o: $(SPECINC)/constants.h $S/get_MPI_cutplanes_xi.f90
	${FCCOMPILE_CHECK} -c -o $O/get_MPI_cutplanes_xi.o ${FCFLAGS_f90} $S/get_MPI_cutplanes_xi.f90

$O/get_MPI_cutplanes_eta.o: $(SPECINC)/constants.h $S/get_MPI_cutplanes_eta.f90
	${FCCOMPILE_CHECK} -c -o $O/get_MPI_cutplanes_eta.o ${FCFLAGS_f90} $S/get_MPI_cutplanes_eta.f90

$O/get_MPI_1D_buffers.o: $(SPECINC)/constants.h $S/get_MPI_1D_buffers.f90
	${FCCOMPILE_CHECK} -c -o $O/get_MPI_1D_buffers.o ${FCFLAGS_f90} $S/get_MPI_1D_buffers.f90

$O/get_cmt.o: $(SPECINC)/constants.h $S/get_cmt.f90
	${FCCOMPILE_CHECK} -c -o $O/get_cmt.o ${FCFLAGS_f90} $S/get_cmt.f90

$O/get_event_info.o: $(SPECINC)/constants.h $S/get_event_info.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/get_event_info.o ${FCFLAGS_f90} $S/get_event_info.f90

$O/get_ellipticity.o: $(SPECINC)/constants.h $S/get_ellipticity.f90
	${FCCOMPILE_CHECK} -c -o $O/get_ellipticity.o ${FCFLAGS_f90} $S/get_ellipticity.f90

$O/get_global.o: $(SPECINC)/constants.h $S/get_global.f90
	${FCCOMPILE_CHECK} -c -o $O/get_global.o ${FCFLAGS_f90} $S/get_global.f90

$O/make_gravity.o: $(SPECINC)/constants.h $S/make_gravity.f90
	${FCCOMPILE_CHECK} -c -o $O/make_gravity.o ${FCFLAGS_f90} $S/make_gravity.f90

$O/rthetaphi_xyz.o: $(SPECINC)/constants.h $S/rthetaphi_xyz.f90
	${FCCOMPILE_CHECK} -c -o $O/rthetaphi_xyz.o ${FCFLAGS_f90} $S/rthetaphi_xyz.f90

$O/get_model.o: $(SPECINC)/constants.h $S/get_model.f90
	${FCCOMPILE_CHECK} -c -o $O/get_model.o ${FCFLAGS_f90} $S/get_model.f90

$O/get_shape3D.o: $(SPECINC)/constants.h $S/get_shape3D.f90
	${FCCOMPILE_CHECK} -c -o $O/get_shape3D.o ${FCFLAGS_f90} $S/get_shape3D.f90

$O/get_shape2D.o: $(SPECINC)/constants.h $S/get_shape2D.f90
	${FCCOMPILE_CHECK} -c -o $O/get_shape2D.o ${FCFLAGS_f90} $S/get_shape2D.f90

$O/hex_nodes.o: $(SPECINC)/constants.h $S/hex_nodes.f90
	${FCCOMPILE_CHECK} -c -o $O/hex_nodes.o ${FCFLAGS_f90} $S/hex_nodes.f90

$O/intgrl.o: $(SPECINC)/constants.h $S/intgrl.f90
	${FCCOMPILE_CHECK} -c -o $O/intgrl.o ${FCFLAGS_f90} $S/intgrl.f90

$O/mantle_model.o: $(SPECINC)/constants.h $S/mantle_model.f90
	${FCCOMPILE_CHECK} -c -o $O/mantle_model.o ${FCFLAGS_f90} $S/mantle_model.f90

$O/jp3d1994_model.o: $(SPECINC)/constants.h $S/jp3d1994_model.f90
	${FCCOMPILE_CHECK} -c -o $O/jp3d1994_model.o ${FCFLAGS_f90} $S/jp3d1994_model.f90

$O/sea99_s_model.o: $(SPECINC)/constants.h $S/sea99_s_model.f90
	${FCCOMPILE_CHECK} -c -o $O/sea99_s_model.o ${FCFLAGS_f90} $S/sea99_s_model.f90

$O/euler_angles.o: $(SPECINC)/constants.h $S/euler_angles.f90
	${FCCOMPILE_CHECK} -c -o $O/euler_angles.o ${FCFLAGS_f90} $S/euler_angles.f90

## use MPI here
$O/meshfem3D.o: $(SPECINC)/constants.h $S/meshfem3D.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/meshfem3D.o ${FCFLAGS_f90} $S/meshfem3D.f90

$O/spline_routines.o: $(SPECINC)/constants.h $S/spline_routines.f90
	${FCCOMPILE_CHECK} -c -o $O/spline_routines.o ${FCFLAGS_f90} $S/spline_routines.f90

$O/create_list_files_chunks.o: $(SPECINC)/constants.h $S/create_list_files_chunks.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/create_list_files_chunks.o ${FCFLAGS_f90} $S/create_list_files_chunks.f90

$O/recompute_missing_arrays.o: $(SPECINC)/constants.h $S/recompute_missing_arrays.f90
	${FCCOMPILE_CHECK} -c -o $O/recompute_missing_arrays.o ${FCFLAGS_f90} $S/recompute_missing_arrays.f90

$O/netlib_specfun_erf.o: $S/netlib_specfun_erf.f90
	${FCCOMPILE_CHECK} -c -o $O/netlib_specfun_erf.o ${FCFLAGS_f90} $S/netlib_specfun_erf.f90

$O/lgndr.o: $(SPECINC)/constants.h $S/lgndr.f90
	${FCCOMPILE_CHECK} -c -o $O/lgndr.o ${FCFLAGS_f90} $S/lgndr.f90

$O/model_prem.o: $(SPECINC)/constants.h $S/model_prem.f90
	${FCCOMPILE_CHECK} -c -o $O/model_prem.o ${FCFLAGS_f90} $S/model_prem.f90

$O/model_iasp91.o: $(SPECINC)/constants.h $S/model_iasp91.f90
	${FCCOMPILE_CHECK} -c -o $O/model_iasp91.o ${FCFLAGS_f90} $S/model_iasp91.f90

$O/model_1066a.o: $(SPECINC)/constants.h $S/model_1066a.f90
	${FCCOMPILE_CHECK} -c -o $O/model_1066a.o ${FCFLAGS_f90} $S/model_1066a.f90

$O/model_ak135.o: $(SPECINC)/constants.h $S/model_ak135.f90
	${FCCOMPILE_CHECK} -c -o $O/model_ak135.o ${FCFLAGS_f90} $S/model_ak135.f90

$O/model_ref.o: $(SPECINC)/constants.h $S/model_ref.f90
	${FCCOMPILE_CHECK} -c -o $O/model_ref.o ${FCFLAGS_f90} $S/model_ref.f90

$O/model_jp1d.o: $(SPECINC)/constants.h $S/model_jp1d.f90
	${FCCOMPILE_CHECK} -c -o $O/model_jp1d.o ${FCFLAGS_f90} $S/model_jp1d.f90

$O/model_sea1d.o: $(SPECINC)/constants.h $S/model_sea1d.f90
	${FCCOMPILE_CHECK} -c -o $O/model_sea1d.o ${FCFLAGS_f90} $S/model_sea1d.f90

$O/anisotropic_mantle_model.o: $(SPECINC)/constants.h $S/anisotropic_mantle_model.f90
	${FCCOMPILE_CHECK} -c -o $O/anisotropic_mantle_model.o ${FCFLAGS_f90} $S/anisotropic_mantle_model.f90

$O/anisotropic_inner_core_model.o: $(SPECINC)/constants.h $S/anisotropic_inner_core_model.f90
	${FCCOMPILE_CHECK} -c -o $O/anisotropic_inner_core_model.o ${FCFLAGS_f90} $S/anisotropic_inner_core_model.f90

$O/reduce.o: $(SPECINC)/constants.h $S/reduce.f90
	${FCCOMPILE_CHECK} -c -o $O/reduce.o ${FCFLAGS_f90} $S/reduce.f90

$O/save_header_file.o: $(SPECINC)/constants.h $S/save_header_file.f90
	${FCCOMPILE_CHECK} -c -o $O/save_header_file.o ${FCFLAGS_f90} $S/save_header_file.f90

$O/comp_source_spectrum.o: $(SPECINC)/constants.h $S/comp_source_spectrum.f90
	${FCCOMPILE_CHECK} -c -o $O/comp_source_spectrum.o ${FCFLAGS_f90} $S/comp_source_spectrum.f90

$O/add_topography.o: $(SPECINC)/constants.h $S/add_topography.f90
	${FCCOMPILE_CHECK} -c -o $O/add_topography.o ${FCFLAGS_f90} $S/add_topography.f90

$O/moho_stretching.o: $(SPECINC)/constants.h $S/moho_stretching.f90
	${FCCOMPILE_CHECK} -c -o $O/moho_stretching.o ${FCFLAGS_f90} $S/moho_stretching.f90

$O/add_topography_410_650.o: $(SPECINC)/constants.h $S/add_topography_410_650.f90
	${FCCOMPILE_CHECK} -c -o $O/add_topography_410_650.o ${FCFLAGS_f90} $S/add_topography_410_650.f90

$O/add_topography_cmb.o: $(SPECINC)/constants.h $S/add_topography_cmb.f90
	${FCCOMPILE_CHECK} -c -o $O/add_topography_cmb.o ${FCFLAGS_f90} $S/add_topography_cmb.f90

$O/add_topography_icb.o: $(SPECINC)/constants.h $S/add_topography_icb.f90
	${FCCOMPILE_CHECK} -c -o $O/add_topography_icb.o ${FCFLAGS_f90} $S/add_topography_icb.f90

$O/write_seismograms.o: $(SPECINC)/constants.h $S/write_seismograms.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/write_seismograms.o ${FCFLAGS_f90} $S/write_seismograms.f90

$O/lagrange_poly.o: $(SPECINC)/constants.h $S/lagrange_poly.f90
	${FCCOMPILE_CHECK} -c -o $O/lagrange_poly.o ${FCFLAGS_f90} $S/lagrange_poly.f90

$O/recompute_jacobian.o: $(SPECINC)/constants.h $S/recompute_jacobian.f90
	${FCCOMPILE_CHECK} -c -o $O/recompute_jacobian.o ${FCFLAGS_f90} $S/recompute_jacobian.f90

$O/create_regions_mesh.o: $(SPECINC)/constants.h $S/create_regions_mesh.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/create_regions_mesh.o ${FCFLAGS_f90} $S/create_regions_mesh.f90

$O/create_name_database.o: $(SPECINC)/constants.h $S/create_name_database.f90
	${FCCOMPILE_CHECK} -c -o $O/create_name_database.o ${FCFLAGS_f90} $S/create_name_database.f90

$O/get_perm_cuthill_mckee.o: $(SPECINC)/constants.h $S/get_perm_cuthill_mckee.f90
	${FCCOMPILE_CHECK} -c -o $O/get_perm_cuthill_mckee.o ${FCFLAGS_f90} $S/get_perm_cuthill_mckee.f90

$O/define_derivation_matrices.o: $(SPECINC)/constants.h $S/define_derivation_matrices.f90
	${FCCOMPILE_CHECK} -c -o $O/define_derivation_matrices.o ${FCFLAGS_f90} $S/define_derivation_matrices.f90

$O/compute_arrays_source.o: $(SPECINC)/constants.h $S/compute_arrays_source.f90
	${FCCOMPILE_CHECK} -c -o $O/compute_arrays_source.o ${FCFLAGS_f90} $S/compute_arrays_source.f90

$O/create_central_cube_buffers.o: $(SPECINC)/constants.h $S/create_central_cube_buffers.f90
	${MPIFCCOMPILE_CHECK} -c -o $O/create_central_cube_buffers.o ${FCFLAGS_f90} $S/create_central_cube_buffers.f90

$O/attenuation_model.o: $(SPECINC)/constants.h $S/attenuation_model.f90 $O/model_ak135.o $O/model_1066a.o $O/model_ref.o
	${MPIFCCOMPILE_CHECK} -c -o $O/attenuation_model.o ${FCFLAGS_f90} $S/attenuation_model.f90

$O/gll_library.o: $(SPECINC)/constants.h $S/gll_library.f90
	${FCCOMPILE_CHECK} -c -o $O/gll_library.o ${FCFLAGS_f90} $S/gll_library.f90

$O/add_missing_nodes.o: $(SPECINC)/constants.h $S/add_missing_nodes.f90
	${FCCOMPILE_CHECK} -c -o $O/add_missing_nodes.o ${FCFLAGS_f90} $S/add_missing_nodes.f90

$O/compute_coordinates_grid.o: $(SPECINC)/constants.h $S/compute_coordinates_grid.f90
	${FCCOMPILE_CHECK} -c -o $O/compute_coordinates_grid.o ${FCFLAGS_f90} $S/compute_coordinates_grid.f90

$O/compute_element_properties.o: $(SPECINC)/constants.h $S/compute_element_properties.f90
	${FCCOMPILE_CHECK} -c -o $O/compute_element_properties.o ${FCFLAGS_f90} $S/compute_element_properties.f90

$O/define_superbrick.o: $(SPECINC)/constants.h $S/define_superbrick.f90
	${FCCOMPILE_CHECK} -c -o $O/define_superbrick.o ${FCFLAGS_f90} $S/define_superbrick.f90

$O/stretching_function.o: $(SPECINC)/constants.h $S/stretching_function.f90
	${FCCOMPILE_CHECK} -c -o $O/stretching_function.o ${FCFLAGS_f90} $S/stretching_function.f90

$O/read_compute_parameters.o: $(SPECINC)/constants.h $S/read_compute_parameters.f90
	${FCCOMPILE_CHECK} -c -o $O/read_compute_parameters.o ${FCFLAGS_f90} $S/read_compute_parameters.f90

$O/auto_ner.o: $(SPECINC)/constants.h $S/auto_ner.f90
	${FCCOMPILE_CHECK} -c -o $O/auto_ner.o ${FCFLAGS_f90} $S/auto_ner.f90

$O/memory_eval.o: $(SPECINC)/constants.h $S/memory_eval.f90
	${FCCOMPILE_CHECK} -c -o $O/memory_eval.o ${FCFLAGS_f90} $S/memory_eval.f90

$O/s362ani.o: $(SPECINC)/constants.h $S/s362ani.f90
	${FCCOMPILE_CHECK} -c -o $O/s362ani.o ${FCFLAGS_f90} $S/s362ani.f90

###
### rule for the header file
###

OUTPUT_FILES/values_from_mesher.h: $(BIN)/xcreate_header_file
	mkdir -p OUTPUT_FILES
	$(BIN)/xcreate_header_file