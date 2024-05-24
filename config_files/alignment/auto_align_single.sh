#!/bin/bash

RUN_NUMBER="$1"
SET="$2"

source /opt/setup.sh

RAW_DIR="/home/testbeam/HVCMOS/desy_mpw4_202404"
ROOT_DIR="/home/users/hhanderkas/Testbeam/desy_04_24/output"
CORRY_CONFIG="/home/users/hhanderkas/Testbeam/desy_04_24/prealign.cfg"

echo "Starting Run $RUN_NUMBER"

FILE_TLU=`ls $RAW_DIR/tlu/*$RUN_NUMBER*`
FILE_AD=`ls $RAW_DIR/adenium/*$RUN_NUMBER*`
FILE_MPW=`ls $RAW_DIR/mpw4/*$RUN_NUMBER*`


echo "Found TLU RAW file: $FILE_TLU"
echo "Found AD RAW file: $FILE_AD"
echo "Found MPW RAW file: $FILE_MPW"


ROOT_FILE="prealign_run_$RUN_NUMBER.root"
echo "Output root file: $ROOT_FILE"

corry -c $CORRY_CONFIG \
-o detectors_file="geometries/init_geo/auto_files/${SET}.geo" \
-o detectors_file_updated="geometries/alignment/${RUN_NUMBER}_detectors_prealigned.geo" \
-o histogram_file="$ROOT_FILE" \
-o output_directory="$ROOT_DIR" \
-o EventLoaderEUDAQ2:TLU_0.file_name="$FILE_TLU" \
-o EventLoaderEUDAQ2:RD50_MPWx_base_0.file_name=\"$FILE_MPW\" \
-o EventLoaderEUDAQ2:Adenium_0.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_1.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_2.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_3.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_4.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_5.file_name=\"$FILE_AD\" 



CORRY_CONFIG="/home/users/hhanderkas/Testbeam/desy_04_24/align_mille_tel.cfg"
ROOT_FILE="align_mille_tel_run_$RUN_NUMBER.root"

corry -c $CORRY_CONFIG \
-o detectors_file="geometries/alignment/${RUN_NUMBER}_detectors_prealigned.geo" \
-o detectors_file_updated="geometries/milli/${RUN_NUMBER}_detectors_mille_tel_aligned.geo" \
-o histogram_file="$ROOT_FILE" \
-o output_directory="$ROOT_DIR" \
-o EventLoaderEUDAQ2:TLU_0.file_name="$FILE_TLU" \
-o EventLoaderEUDAQ2:RD50_MPWx_base_0.file_name=\"$FILE_MPW\" \
-o EventLoaderEUDAQ2:Adenium_0.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_1.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_2.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_3.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_4.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_5.file_name=\"$FILE_AD\" 



CORRY_CONFIG="/home/users/hhanderkas/Testbeam/desy_04_24/align_mille_dut.cfg"
ROOT_FILE="align_mille_dut_run_$RUN_NUMBER.root"

corry -c $CORRY_CONFIG \
-o detectors_file="geometries/milli/${RUN_NUMBER}_detectors_mille_tel_aligned.geo" \
-o detectors_file_updated="geometries/milli/${RUN_NUMBER}_detectors_mille_dut_aligned.geo" \
-o histogram_file="$ROOT_FILE" \
-o output_directory="$ROOT_DIR" \
-o EventLoaderEUDAQ2:TLU_0.file_name="$FILE_TLU" \
-o EventLoaderEUDAQ2:RD50_MPWx_base_0.file_name=\"$FILE_MPW\" \
-o EventLoaderEUDAQ2:Adenium_0.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_1.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_2.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_3.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_4.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_5.file_name=\"$FILE_AD\" 



CORRY_CONFIG="/home/users/hhanderkas/Testbeam/desy_04_24/align_dut_final.cfg"
ROOT_FILE="align_dut_final_$RUN_NUMBER.root"

corry -c $CORRY_CONFIG \
-o detectors_file="geometries/milli/${RUN_NUMBER}_detectors_mille_dut_aligned.geo" \
-o detectors_file_updated="geometries/milli/full_aligned/${RUN_NUMBER}_detectors_mille_full_aligned.geo" \
-o histogram_file="$ROOT_FILE" \
-o output_directory="$ROOT_DIR" \
-o EventLoaderEUDAQ2:TLU_0.file_name="$FILE_TLU" \
-o EventLoaderEUDAQ2:RD50_MPWx_base_0.file_name=\"$FILE_MPW\" \
-o EventLoaderEUDAQ2:Adenium_0.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_1.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_2.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_3.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_4.file_name=\"$FILE_AD\" \
-o EventLoaderEUDAQ2:Adenium_5.file_name=\"$FILE_AD\" 




