#!/bin/bash

#
# Copyright (c) 2019 Mateus Saquetti
# All rights reserved.
#
# This software was modified by Institute of Informatics of the Federal
# University of Rio Grande do Sul (INF-UFRGS)
#
# Description:
#              Adapted to run in P4VBox architecture
# Create Date:
#              31.05.2019
#
# @NETFPGA_LICENSE_HEADER_START@
#
# Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
# license agreements.  See the NOTICE file distributed with this work for
# additional information regarding copyright ownership.  NetFPGA licenses this
# file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at:
#
#   http://www.netfpga-cic.org
#
# Unless required by applicable law or agreed to in writing, Work distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations under the License.
#
# @NETFPGA_LICENSE_HEADER_END@
#

# set folder=$PWD

cd $SUME_FOLDER/lib/hw/xilinx/cores/tcam_v1_1_0/ && make update && make
cd $SUME_FOLDER/lib/hw/xilinx/cores/cam_v1_1_0/ && make update && make
cd $SUME_SDNET/sw/sume && make
cd $SUME_FOLDER && make

# Diver
# cd $DRIVER_FOLDER
# make all
# make install
# modprobe sume_riffa
# lsmod | grep sume_riffa

# cd $folder
export SUME_FOLDER=${HOME}/projects/P4VBox
export P4VBOX_SCRIPTS=${SUME_FOLDER}/scripts
cd $P4VBOX_SCRIPTS

exit 0