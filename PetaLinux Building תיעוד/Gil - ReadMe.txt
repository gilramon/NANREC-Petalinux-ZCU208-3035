Gil Ramon:
It's better to read first this page. it is very helpful.
https://www.instructables.com/Getting-Started-With-PetaLinux/

There is a document in this folder UG1144 about all the commands of petalinux


I'm working with VMWARE pro workstation 16 , with Ubuntu 18, It is also good to use Virtualbox
Distributor ID:	Ubuntu
Description:	Ubuntu 18.04.6 LTS
Release:	18.04
Codename:	bionic
It's better to give at least 100GB for the Virtual machine!!!

1. Download the petalinux 2022.2 (I used the latest because they solved bugs there) from xilinx website, it is better to download it to the linux machine.

2. Install the petalinux with all the dependencies.

See the pictures for continue.





17.

Gil Ramon- do exactly!!! what is written in this lin to generate auto script at the startup.
https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842475/PetaLinux+Yocto+Tips#PetaLinuxYoctoTips-HowtoAutoRunApplicationatStartup

autostart.sh file:

#!/bin/sh
ifconfig -a | grep eth0
RESULT=$?
if [ $RESULT -eq 0 ]; then
	ifconfig eth0 192.168.1.100
	rftool
fi


When developing c application it is better to develop it on vitis with elf file and when it workds put it in the project compile it and run auto in the startup.



Gil - All the commands history:


    1  cd /mnt/hgfs/Shared/
    2  ls
    3  ./petalinux-v2020.2-final-installer.run -d ~/PetaLinux2020.2
    4  sudo apt-get install gawk
    5  ./petalinux-v2020.2-final-installer.run -d ~/PetaLinux2020.2
    6  sudo apt-get install gcc
    7  ./petalinux-v2020.2-final-installer.run -d ~/PetaLinux2020.2
    8  sudo apt-get install ntet-tools
    9  sudo apt-get install net-tools
   10  ./petalinux-v2020.2-final-installer.run -d ~/PetaLinux2020.2
   11  sudo apt-get install zlib zlib1g:i386 gcc-multilib build essential
   12  sudo apt-get install zlib1g:i386 gcc-multilib build essential
   13  sudo apt-get install zlib1g:i386 gcc-multilib build_essential
   14  sudo apt-get install zlib1g:i386 gcc-multilib build-essential
   15  ./petalinux-v2020.2-final-installer.run -d ~/PetaLinux2020.2
   16  sudo apt-get install libncurses5-dev
   17  sudo apt-get install xterm
   18  sudo apt-get install autoconf libtool
   19  sudo apt-get install texinfo
   20  ./petalinux-v2020.2-final-installer.run -d ~/PetaLinux2020.2
   21  sudo apt-get install zlib1g-dev
   22  sudo apt-get install zlib
   23  ./petalinux-v2020.2-final-installer.run -d ~/PetaLinux2020.2
   24  sudo gedit /etc/bash.bashrc 
   25  cd PetaLinux2020.2/
   26  pwd
   27  ls
   28  ./a.out 
   29  echo
   30  echo 1
   31  echo 1 > gil.txt
   32  cat gil.txt 
   33  ls
   34  cd xilinx-zcu216-2020.2/
   35  petalinux-build 
   36  memmap
   37  help memmap
   38  memmap --help
   39  mm
   40  mmap
   41  mmmap
   42  memm
   43  memmap
   44  pmem
   45  mmap
   46  sudo apt-get install busybox
   47  sudo busybox devmem 0x12345678
   48  sudo busybox devmem 0x11112222
   49  cd ..
   50  gedit write.c
   51  gcc write.c 
   52  ./a.out 
   53  ./a.out 0x12345678 
   54  ./a.out 0x12345678 0
   55  ./a.out 0 0
   56  ./a.out 0x1234567 0
   57  ./a.out 0x12333333
   58  ./a.out 0x12333333 0
   59  ./a.out 0x1233333 0
   60  sudo busybox devmem 0x12345678 w 0x9abcdef0
   61  sudo busybox devmem 0x11112228 w 0x9abcdef0
   62  ./a.out 0x1233333 0
   63  sudo ./a.out 0x1233333 0
   64  sudo ./a.out 0x1233333 1
   65  sudo ./a.out 0x1233333 2
   66  sudo ./a.out 0x804c000 0
   67  sudo ./a.out 0x0804c000 0
   68  sudo busybox devmem 0x11112228 w 0x9abcdef0
   69  sudo busybox devmem 0x0804c000
   70  sudo busybox devmem 0x0804c000 w 1111
   71  ./a.out 
   72  ./a.out 0x804c000
   73  ./a.out 0x804c000 2
   74  ./a.out qweqd 2
   75  ./a.out 
   76  sudo busybox devmem 0x0804c000 w 1111
   77  11
   78  man mmap
   79  ls
   80  cd xilinx-zcu216-2020.2/
   81  ls
   82  petalinux-config 
   83  petalinux-build 
   84  cd xilinx-zcu216-2020.2/
   85  petalinux-config -c kernel
   86  petalinux-build 
   87  cd xilinx-zcu216-2020.2/
   88  ls
   89  petalinux-config -c rootfs
   90  petalinux-build
   91  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --u-boot
   92  cd images/linux/
   93  cp BOOT.BIN boot.scr image.ub /mnt/hgfs/Shared/
   94  cd ..
   95  ls
   96  petalinux-config 
   97  petalinux-build --clean
   98  petalinux-build -x distclean
   99  petalinux-config 
  100  petalinux-build 
  101  cd xilinx-zcu216-2020.2/
  102  petalinux-build 
  103  cd xilinx-zcu216-2020.2/
  104  petalinux-build 
  105  ls
  106  rm gil.bsp gil1.bsp 
  107  cd EVB_ZCU216_ver0.9/
  108  ls
  109  cd ..
  110  petalinux-package --prebuild --fpga EVB_ZCU216_ver0.9/T_ZCU216_main_ver0_9c.bit 
  111  petalinux-create 
  112  petalinux-create -t project -n <PROJECT> --template zynqMP
  113  petalinux-create -t project -n Gil_Yakov_01 --template zynqMP
  114  cd Gil_Yakov_01/
  115  petalinux-package --prebuild --fpga ../EVB_ZCU216_ver0.9/T_ZCU216_main_ver0_9c.bit 
  116  petalinux-package --bsp -p . --hwsource ../EVB_ZCU216_ver0.9/ -o gil.bsp
  117  ls
  118  petalinux-create -t project -s gil.bsp 
  119  ls
  120  cd Gil_Yakov_01/
  121  ls
  122  petalinux-config 
  123  ls
  124  cd ..
  125  petalinux-config 
  126  ls
  127  cp ../EVB_ZCU216_ver0.9/T_ZCU216_main.xsa ./project-spec/hw-description/
  128  ls
  129  petalinux-config 
  130  petalinux-build 
  131  cd Gil_Yakov_01/
  132  ls
  133  petalinux-build 
  134  petalinux-build --clean
  135  petalinux-build 
  136  petalinux-build --clean
  137  petalinux-build -x mrproper
  138  petalinux-build 
  139  petalinux-build -x mrproper
  140  petalinux-config 
  141  petalinux-build
  142  cd images/linux/
  143  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --u-boot
  144  cd ..
  145  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --u-boot
  146  cd images/linux/
  147  ls
  148  cp ../../../EVB_ZCU216_ver0.9/T_ZCU216_main_ver0_9c.bit .
  149  mv T_ZCU216_main_ver0_9c.bit system.bit
  150  cd ..
  151  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --u-boot
  152  cd images/linux/
  153  ls
  154  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/
  155  cd /mnt/hgfs/
  156  ls
  157  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  158  cd -
  159  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  160  cd ..
  161  petalinux-config 
  162  petalinux-build 
  163  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --u-boot
  164  cd images/linux/
  165  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  166  cd ..
  167  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --u-boot
  168  cd images/linux/
  169  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  170  cd ..
  171  ls
  172  petalinux-config 
  173  petalinux-build 
  174  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --u-boot
  175  cd images/linux/
  176  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  177  cd ..
  178  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --u-boot
  179  cd images/linux/
  180  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  181  cd ..
  182  petalinux-config 
  183  petalinux-build 
  184  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --u-boot
  185  cd ..
  186  cd xilinx-zcu216-2020.2/
  187  ls
  188  cd project-spec/hw-description/
  189  ls
  190  cp ~/EVB_ZCU216_ver0.9/T_ZCU216_main.xsa .
  191  rm system.xsa 
  192  cd ..
  193  petalinux-config 
  194  petalinux-build 
  195  cd images/linux/
  196  ls
  197  cd ..
  198  ls
  199  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  200  cd images/linux/
  201  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  202  cd ..
  203  petalinux-config 
  204  petalinux-build 
  205  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  206  cd images/linux/
  207  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  208  cd ../..
  209  cd .
  210  cd ..
  211  ls
  212  cd PetaLinux2021.1/
  213  ls
  214  cd Downloads/
  215  ls
  216  chmod 777 petalinux-v2021.1-final-installer.run 
  217  ./petalinux-v2021.1-final-installer.run ~/PetaLinux2021.1
  218  ./petalinux-v2021.1-final-installer.run -d ~/PetaLinux2021.1
  219  sudo egdit /etc/bash.bashrc 
  220  sudo gedit /etc/bash.bashrc 
  221  petalinux-create 
  222  petalinux-create -t project -n <PROJECT> --template zynqMP
  223  petalinux-create -t project -n 2001.1_Gil_T_Project --template zynqMP
  224  cd 2001.1_Gil_T_Project/
  225  petalinux-config 
  226  cp ../EVB_ZCU216_ver0.9/T_ZCU216_main.xsa ./project-spec/hw-description/
  227  petalinux-config 
  228  petalinux-build 
  229  cd 2001
  230  cd 2001.1_Gil_T_Project/
  231  petalinux-build 
  232  cd \
  233  ls
  234  cd /
  235  ls
  236  sudo du -h --max-depth=1
  237  df -H
  238  sudo du -h --max-depth=1
  239  cd home/gil/
  240  ls
  241  sudo du -h --max-depth=1
  242  rm -r ./PetaLinux2021.1/
  243  y
  244  rm -r ./Gil_Yakov_01/
  245  rm -rf ./Gil_Yakov_01/
  246  sudo du -h --max-depth=1
  247  rm -rf ./2001.1_Gil_T_Project/
  248  sudo du -h --max-depth=
  249  sudo du -h --max-depth=1
  250  du -H
  251  df -H
  252  ./petalinux-v2022.2-10141622-installer.run --help
  253  ./petalinux-v2022.2-10141622-installer.run -d ~/PetaLinux2022.2
  254  sudo gedit /etc/bash.bashrc 
  255  ls
  256  rm -rf Gil_Yakov_Bit_Project/
  257  du -H
  258  du
  259  du --help
  260  du -h
  261  du --help
  262  du -a | sort -n -r | head -n 20
  263  sudo du -a | sort -n -r | head -n 20
  264  ls
  265  df -H
  266  ls
  267  cd 2022PetaLinux/
  268  ls
  269  petalinux-build -c gilapp --enable
  270  petalinux-create --help
  271  petalinux-create -t apps -n gil_app --enable
  272  petalinux-create -t apps -n gilapp --enable
  273  petalinux-build 
  274  petalinux-config 
  275  petalinux-build -c gilapp
  276  cd project-spec/meta-user/
  277  ls
  278  cd recipes-apps/
  279  ls
  280  cd gilapp/
  281  ls
  282  gedit files/gilapp.c 
  283  cd ..
  284  petalinux-build -c gilapp
  285  gedit project-spec/meta-user/recipes-apps/
  286  gedit project-spec/meta-user/recipes-apps/gilapp/files/gilapp.c 
  287  petalinux-build -c gilapp
  288  petalinux-config 
  289  petalinux-config -c rootfs
  290  petalinux-create -t apps --template install -n bootscript --enable
  291  cd project-spec/meta-user/recipes-apps/
  292  ls
  293  cd bootscript/
  294  ls
  295  cd files/
  296  ls
  297  gedit bootscript 
  298  cd ..\..
  299  cd //
  300  cd ~
  301  ;s
  302  ls
  303  cd 2022PetaLinux/
  304  petalinux-config -c rootfs
  305  petalinux-build
  306  history 
  307  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  308  cd images/linux/
  309  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  310  history 
  311  cd ..
  312  petalinux-config --help
  313  petalinux-config -c kernel
  314  cd 2022PetaLinux/
  315  petalinux-build 
  316  petalinux-config 
  317  petalinux-config -c rootfs
  318  gedit /home/gil/2022PetaLinux/project-spec/meta-user/recipes-apps/myapp-init/myapp-init.bb
  319  cd project-spec/meta-user/recipes-
  320  cd project-spec/meta-user/recipes-apps/
  321  ls
  322  rm -rf myapp-init/
  323  cd ..
  324  petalinux-build 
  325  rm -rf project-spec/meta-user/recipes-apps/gilapp/
  326  petalinux-build 
  327  petalinux-create -t apps --template install -n bootscript --enable
  328  rm -rf project-spec/meta-user/recipes-apps/bootscript/
  329  petalinux-create -t apps --template install -n bootscript --enable
  330  petalinux-build -x package
  331  gedit project-spec/meta-user/recipes-apps/bootscript/files/bootscript
  332  gedit project-spec/meta-user/recipes-apps/bootscript/bootscript.bb
  333  petalinux-build --help
  334  petalinux-build -c bootscript
  335  petalinux-build -c bootscript -x do_install -f
  336  petalinux-build -c rootfs
  337  petalinux-build
  338  history 
  339  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  340  cd images/linux/
  341  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  342  cd ..
  343  gedit project-spec/meta-user/recipes-apps/bootscript/bootscript.bb
  344  petalinux-build -c bootscript -x do_install -f
  345  petalinux-build -c rootfs
  346  petalinux-build
  347  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  348  cd images/linux/
  349  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  350  cd ..
  351  gedit project-spec/meta-user/recipes-apps/bootscript/bootscript.bb
  352  petalinux-build -c bootscript -x do_install -f
  353  gedit project-spec/meta-user/recipes-apps/bootscript/bootscript.bb
  354  petalinux-build -c bootscript -x do_install -f
  355  petalinux-build -c rootfs
  356  petalinux-config -c rootfs
  357  petalinux-config
  358  petalinux-config -c rootfs
  359  petalinux-build
  360  history 
  361  petalinux-create -t apps --template install -n bootscript --enable
  362  cd project-spec/meta-user/recipes-apps/
  363  ls
  364  cd bootscript/
  365  ls
  366  cd files/
  367  ls
  368  cat bootscript 
  369  ll
  370  cd ..
  371  ls
  372  gedit bootscript.bb 
  373  petalinux-create --help
  374  cd ..
  375  petalinux-create -t apps -n gilapp --enable
  376  gedit project-spec/meta-user/recipes-apps/
  377  gedit project-spec/meta-user/recipes-apps/gilapp/README 
  378  bg
  379  cd project-spec/meta-user/recipes-apps/
  380  ls
  381  rm -rf bootscript/
  382  cd gilapp/
  383  ls
  384  cd files/
  385  ls
  386  cd ..
  387  petalinux-create -t apps --template install -n gilapp-init  --enable
  388  gedit project-spec/meta-user/recipes-apps/gilapp-init/gilapp-init.bb 
  389  gedit project-spec/meta-user/recipes-apps/gilapp-init/files/gilapp-init.service
  390  gedit project-spec/meta-user/recipes-apps/gilapp-init/gilapp-init.bb 
  391  gedit /project-spec/meta-user/recipes-apps/gilapp-init/files/gilapp-init
  392  cd project-spec/meta-user/recipes-apps/gilapp-init/files/gilapp-init
  393  gedit project-spec/meta-user/recipes-apps/gilapp-init/files/gilapp-init
  394  rm -rf project-spec/meta-user/recipes-apps/gilapp
  395  petalinux-config -c rootfs
  396  petalinux-build 
  397  petalinux-config -c rootfs
  398  petalinux-build 
  399  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  400  cd images/linux/
  401  cp BOOT.BIN image.ub boot.scr /mnt/hgfs/Shared/
  402  cd ..
  403  cd .
  404  ls
  405  cd .
  406  cd ..
  407  cd project-spec/meta-user/recipes-apps/
  408  ld
  409  ls
  410  cd gilapp-init/
  411  ls
  412  cd files/
  413  ls
  414  gedit gilapp-init
  415  gedit gilapp-init.service 
  416  gedit gilapp-init
  417  cd ..
  418  ls
  419  gedit gilapp-init.bb 
  420  cd ..
  421  petalinux-build 
  422  petalinux-config -c rootfs
  423  rm -rf project-spec/meta-user/recipes-apps/gilapp-init/
  424  history
  425  grep --help
  426  history | grep petalinux-create
  427  petalinux-create --help
  428  petalinux-create -t apps --template install -n GilRamonInit  --enable
  429  gedit project-spec/meta-user/recipes-apps/GilRamonInit/GilRamonInit.bb 
  430  petalinux-build 
  431  history | grep petalinux-package
  432  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  433  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  434  cd project-spec/meta-user/recipes-apps/GilRamonInit/
  435  ls
  436  cd files/
  437  ls
  438  gedit GilRamonInit 
  439  cd ..
  440  ls
  441  petalinux-create --help
  442  petalinux-create -t apps -n myapp --enable
  443  gedit project-spec/meta-user/recipes-apps/myapp/myapp.bb 
  444  dh -H
  445  ds -H
  446  df -H
  447  cp /mnt/hgfs/Shared/petalinux-v2022.1-04191534-installer.run .
  448  df -H
  449  ls
  450  rm petalinux-v2022.1-04191534-installer.run 
  451  petalinux-config -c rootfs
  452  petalinux-build 
  453  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  454  petalinux-config -c rootfs
  455  cd images/linux/
  456  ls
  457  cd ..
  458  cp images/linux/ /mnt/hgfs/Shared/Linux
  459  cp -r images/linux/ /mnt/hgfs/Shared/Linux
  460  petalinux-config -c rootfs
  461  gedit project-spec/meta-user/recipes-apps/myapp/files/myapp.c 
  462  petalinux-build 
  463  petalinux-create -t apps --template install -n myapp-init --enable
  464  gedit /project-spec/meta-user/recipes-apps/myapp-init/files/myapp-init.service.
  465  gedit [Unit]
  466  Description=myapp-init
  467  [Service]
  468  ExecStart=/usr/bin/myapp-init
  469  StandardOutput=journal+console
  470  [Install]
  471  gedit project-spec/meta-user/recipes-apps/myapp-init/files/myapp-init.service
  472  gedit project-spec/meta-user/recipes-apps/myapp-init/myapp-init.bb 
  473  gedit project-spec/meta-user/recipes-apps/myapp-init/files/myapp-init
  474  petalinux-build 
  475  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  476  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  477  petalinux-config -c rootfs
  478  petalinux-build 
  479  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  480  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  481  gedit project-spec/meta-user/recipes-apps/myapp-init/files/myapp-init
  482  gedit project-spec/meta-user/recipes-apps/myapp/files/myapp.c 
  483  petalinux-build 
  484  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  485  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  486  gedit project-spec/meta-user/recipes-apps/myapp/files/myapp.c 
  487  gedit project-spec/meta-user/recipes-apps/myapp-init/files/myapp-init
  488  petalinux-build 
  489  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  490  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  491  gedit project-spec/meta-user/recipes-apps/myapp-init/files/myapp-init
  492  ls &
  493  gedit project-spec/meta-user/recipes-apps/myapp-init/files/myapp-init
  494  petalinux-build 
  495  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  496  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  497  gedit project-spec/meta-user/recipes-apps/myapp/files/myapp.c 
  498  petalinux-build 
  499  gedit project-spec/meta-user/recipes-apps/myapp/files/myapp.c 
  500  petalinux-build 
  501  petalinux-package --boot --force --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/T_ZCU216_main_ver0_9c.bit --u-boot
  502  cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub /mnt/hgfs/Shared/
  503  petalinux-config -c rootfs
  504  history









