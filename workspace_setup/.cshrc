#! /usr/local/bin/tcsh -f

#  Licensing
source /tools/commercial/flexlm/flexlm.cshrc

setenv LORENTZ_LICENSE_FILE 27017@sunv20z-1.eecs.berkeley.edu
setenv RLM_LICENSE 5053@sunv40z-1.eecs.berkeley.edu

# Cadence Settings
setenv SPECTRE_DEFAULTS -E
setenv CDS_Netlisting_Mode "Analog"


# Setup Additional Tools
setenv SPECTRE /tools/cadence/SPECTRE/SPECTRE191
setenv MMSIM_HOME   /tools/cadence/MMSIM/MMSIM151
setenv CDS_INST_DIR /tools/cadence/IC/IC617
setenv CDSHOME      $CDS_INST_DIR
setenv ASSURAHOME   /tools/cadence/ASSURA/AASSURA_613_41_lnx86
setenv IUSHOME      /tools/cadence/IUS/IUS82_USR5_lnx
setenv ICCHOME      /tools/synopsys/icc/current
setenv SYNOPSYS     /tools/synopsys/syn/current
setenv MGC_HOME     /tools/mentor/calibre/ixl_cal_2011.3_29.20
setenv HSPICE_HOME  /tools/synopsys/hspice/H-2013.03-SP2/hspice
setenv SXHOME       /tools/synopsys/sx/C-2009.03-SP1/C2009.03-SP1/sx_C2009_03-SP1
setenv ASTROHOME    /tools/synopsys/astro/Z-2007.03-SP4/bin/IA.32
setenv BDA_ROOT     /tools/commercial/bda/bda_root
setenv PEAKHOME     /tools/commercial/lorentz/peakview/current
setenv EMXHOME      /tools/commercial/integrand/2011
setenv MODEL_TECH   /tools/mentor/modelsim/modelsim10.2a/modeltech/
setenv STAR_HOME    /tools/synopsys/starrcxt/O-2018.06-SP3
# cdsLibPlugin installation home
setenv CDSLIB_HOME  /tools/projects/erichang/BAG_2.0/cdslib_plugin
setenv CDSLIB_TOOL  ${CDSLIB_HOME}/tools.lnx86
setenv PDK_CAD_FILES /tools/cadence/GPDK/gpdk045_v_6_0

set path = ( ${CDSLIB_TOOL}/bin \
    $path \
    ${MMSIM_HOME}/tools/bin \
    ${CDS_INST_DIR}/tools/bin \
    ${CDS_INST_DIR}/tools/dfII/bin \
    ${CDS_INST_DIR}/tools/plot/bin \
    ${ASSURAHOME}/tools/assura/bin \
    ${IUSHOME}/tools/bin \
    ${ICCHOME}/bin \
    ${SYNOPSYS}/bin \
    ${MGC_HOME}/bin \
    ${HSPICE_HOME}/bin \
    ${SXHOME}/bin \
    ${ASTROHOME} \
    ${BDA_ROOT}/bin \
    ${PEAKHOME}/bin \
    ${EMXHOME} \
    ${MODEL_TECH}/bin \
    ${STAR_HOME}/bin \
    )

setenv PTS_HOME /tools/synopsys/pt/D-2009.12-SP3
setenv AMSHOME $IUSHOME
setenv CDSHOME $CDS_INST_DIR
setenv CDS_AUTO_64BIT ALL


### Setup BAG
source .cshrc_bag
