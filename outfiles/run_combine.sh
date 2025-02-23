#!/bin/bash
#SBATCH --job-name=runregs
#SBATCH --error=/oak/stanford/groups/omramom/group_members/aminaly/mountain_biodiversity/outfiles/runcomb.err
#SBATCH --output=/oak/stanford/groups/omramom/group_members/aminaly/mountain_biodiversity/outfiles/runcomb.out
#SBATCH --nodes=1
#SBATCH --time=23:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=120GB
#SBATCH --mail-type=END,FAIL 
#SBATCH --mail-user=aminaly@stanford.edu
#SBATCH -p diffenbaugh

ml physics gdal udunits/2.2.26 netcdf/4.4.1.1 R/3.6.1 proj geos;
module load math;

cd $OAK/group_members/aminaly/mountain_biodiversity
python3.6 ./analysis/wdpa_cleaning.py
