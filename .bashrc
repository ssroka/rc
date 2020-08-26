# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave

# ------------------  file manipulation --------------------------------
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# ===================== Gerris =====================
# ----- paths for Gerris
#export PATH=$PATH:$HOME/soft/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/X11/lib:$HOME/soft/lib
#export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig/:$HOME/soft/lib/pkgconfig
# ----- modules to add for gerris
# module add gcc/6.2.0
# module add openmpi/2.1.1
# module add ffmpeg/3.3.3
# module add gerris/20170609
# module add mit/matlab/2017b

# ----- modules to add for OpenFOAM
module purge
module add gcc/6.2.0
module add engaging/cmake/3.5.2
module add engaging/boost/1.56.0
module remove gcc/4.8.4
module add engaging/python/3.6.0
module add mit/matlab/2019a
module list
source ~/pkg/OpenFOAM/OpenFOAM-v1806/etc/bashrc

# ----- modules to add for MATLAB
#module add mit/matlab
# ------------------ vim in terminal -------------------------------
# set -o vi

# ------------------ matlab  -------------------------------
alias matlab_quick='matlab -nodesktop -nosplash'

# ------------------ slurm ------------------------------------------
alias myJobs='sacct --format="JobID,JobName%30,State,Elapsed"'

# ------------------ size of directories ------------------------------------------
alias check_size='du -h --max-depth=1 | sort -hr'

# ------------------ OpenFOAM ------------------------------------------
alias awty='grep "^Time" log.*oam* | tail -1'

# ------------------ FHLO (prophet) ------------------------------------------
module load engaging/anaconda/2018.12
export PYTHONPATH=$HOME/large-ensemble/
. /cm/shared/engaging/anaconda/2018.12/etc/profile.d/conda.sh

# ------------------  ------------------------------------------
# User specific environment and startup programs
# 
# PATH=$PATH:/nobackup1/jzlin/.local/bin:/nobackup1/jzlin/bin
# PATH=/nobackup1/jzlin/pkg/python:/nobackup1/jzlin/pkg/python/bin:$PATH
# export PATH
# 
# export PYTHONPATH=/nobackup1/jzlin/pkg/python:/nobackup1/jzlin/.local/lib/python3.6/site-packages:$HOME/src/prophet/
# 
# export HDF5_DIR=/nobackup1/jzlin/pkg/hdf5/
# export NCDIR=/nobackup1/jzlin/pkg/
# export NETCDF4_DIR=/nobackup1/jzlin/pkg/netcdf4/
# export GRIBAPI_DIR=/nobackup1/jzlin/pkg/grib/
# 
# export PYTHONPATH=$PYTHONPATH/:nobackup1/jzlin/.local/lib/python3.6/site-packages/h5py-2.8.0.post0-py3.6-linux-x86_64.egg:/nobackup1/jzlin/.local/lib/python3.6/site-packages/netCDF4-1.4.0-py3.6-linux-x86_64.egg:/nobackup1/jzlin/.local/lib/python3.6/site-packages/cftime-1.0.0-py3.6-linux-x86_64.egg:/nobackup1/jzlin/.local/lib/python3.6/site-packages/ecmwf_api_client-1.5.0-py3.6.egg:/nobackup1/jzlin/.local/lib/python3.6/site-packages/pyproj-1.9.5.1-py3.6-linux-x86_64.egg 
