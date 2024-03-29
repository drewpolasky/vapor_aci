BootStrap: docker
From: centos:7

%setup

%files

%environment
PATH="$PATH:/usr/lib64/openmpi/bin/"
LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib64/openmpi/lib/"
MPI_ROOT=/usr/lib64/openmpi/
export PATH
export LD_LIBRARY_PATH
export MPI_ROOT

%runscript
    exec /opt/bin/vapor

%post
    # commands to be executed inside container during bootstrap
    # add python and install some packages
    yum -y update
    yum -y install epel-release \
      centos-release-scl
    yum -y install vte-devel \
      vte291-devel \
      vte-profile \
      devtoolset-7-gcc* \
      devtoolset-8-gcc*
    yum -y groups install "Development Tools"
    yum -y groups install "Base"
    yum -y install git cmake gcc-c++ gcc binutils \
      libX11-devel libXpm-devel libXft-devel libXext-devel \
      gcc-gfortran openssl-devel pcre-devel \
      mesa-libGL-devel mesa-libGLU-devel glew-devel ftgl-devel mysql-devel \
      fftw-devel cfitsio-devel graphviz-devel \
      avahi-compat-libdns_sd-devel openldap-devel \
      libxml2-devel gsl-devel \
      cmake3 \
      hdf5-devel \
      patch \
      qt5-qtbase-devel \
      qt5-qtsvg-devel \
      gcc-g++ numpy eigen3-devel zlib-devel qt-devel libtiff-devel \
      bzip2 ca-certificates \
      glibc-devel libXext-devel libSM-devel libXrender-devel \
      mercurial subversion \
      mesa-libGLU-devel \
      mesa-libGL-devel \
      libcanberra-gtk* \
      autoconf \
      Lmod

    yum install -y glx-utils freeglut-devel
      
    yum -y install python27-python-devel python27-pip
    # Command below is installing python 3.6.3 while system version is 3.6.8
    # yum -y install rh-python36-python-devel rh-python36-python-pip
      
    yum -y update
    
    source /opt/rh/devtoolset-8/enable
       
    mkdir -p /storage/home
    mkdir -p /storage/work
    mkdir -p /gpfs/scratch
    mkdir -p /gpfs/group
    mkdir -p /var/spool/torque
    
    # Make symlinks
    ln -s `which qmake-qt5` /usr/local/bin/qmake
    ln -s `which moc-qt5` /usr/local/bin/moc
    ln -s `which rcc-qt5` /usr/local/bin/rcc
    ln -s `which vim` /usr/local/bin/vi
    
    ldconfig -n /usr/lib64/openmpi/lib/
    
    cd /opt/
    wget https://github.com/NCAR/VAPOR/releases/download/3.1.0/Vapor-3.1.0-CentOS.sh
    bash Vapor-3.1.0-CentOS.sh --prefix=/opt/ --skip-license 


