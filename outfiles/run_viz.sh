#!/bin/bash
#SBATCH --job-name=runViz
#SBATCH --error=/oak/stanford/groups/omramom/group_members/aminaly/mountain_biodiversity/outfiles/runViz.err
#SBATCH --output=/oak/stanford/groups/omramom/group_members/aminaly/mountain_biodiversity/outfiles/runViz.out
#SBATCH --nodes=1
#SBATCH --time=23:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=90GB
#SBATCH --mail-type=END,FAIL 
#SBATCH --mail-user=aminaly@stanford.edu
#SBATCH -p diffenbaugh

ml physics gdal udunits/2.2.26 netcdf/4.4.1.1 R/3.6.1 proj geos;
module load R/3.6.1

cd $OAK/group_members/aminaly/mountain_biodiversity
Rscript ./visuals/results_mt_kba_pa.R
