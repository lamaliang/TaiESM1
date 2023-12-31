!===============================================================================
! SVN $Id: shr_kind_mod.F90 35698 2012-03-22 23:59:57Z kauff $
! SVN $URL: https://svn-ccsm-models.cgd.ucar.edu/tools/mapping/release_tags/mapping_140603/gen_mapping_files/runoff_to_ocn/src/shr_kind_mod.F90 $
!===============================================================================

MODULE shr_kind_mod

   !----------------------------------------------------------------------------
   ! precision/kind constants add data public
   !----------------------------------------------------------------------------
   public
   integer,parameter :: SHR_KIND_R8 = selected_real_kind(12) ! 8 byte real
   integer,parameter :: SHR_KIND_R4 = selected_real_kind( 6) ! 4 byte real
   integer,parameter :: SHR_KIND_RN = kind(1.0)              ! native real
   integer,parameter :: SHR_KIND_I8 = selected_int_kind (13) ! 8 byte integer
   integer,parameter :: SHR_KIND_I4 = selected_int_kind ( 6) ! 4 byte integer
   integer,parameter :: SHR_KIND_IN = kind(1)                ! native integer
   integer,parameter :: SHR_KIND_CL = 256                    ! long char
   integer,parameter :: SHR_KIND_CS = 80                     ! short char

END MODULE shr_kind_mod
