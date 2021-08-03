echo 'lcm-server'

cd ~/
git clone https://github.com/TechShare-inc/slamrplidar
cd slamrplidar/slam_planner_sdk/Thirdparty/
sudo tar -xvf lcm-1.4.0.tar.gz
mv lcm-1.4.0 ~/
cd ~/
sudo rm -r slamrplidar
cd ~/lcm-1.4.0/
mkdir build && cd build
cmake ..
make -j4
sudo make install

echo 'unitree_legged_sdk'
cd ~/
git clone https://github.com/Wataru-Oshima-Tokyo/unitree_legged_sdk
cd unitree_legged_sdk
mkdir build && cd build
cmake ..
make -j4
cd ~/
sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo bionic main" -u
sudo apt install librealsense2-utils
sudo apt install librealsense2-dev

echo 'source /usr/share/gazebo/setup.sh' >> ~/.bashrc
echo 'export ROS_PACKAGE_PATH=~/catkin_ws:${ROS_PACKAGE_PATH}' >> ~/.bashrc
echo 'export GAZEBO_PLUGIN_PATH=~/catkin_ws/devel/lib:${GAZEBO_PLUGIN_PATH}' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=~/catkin_ws/devel/lib:${LD_LIBRARY_PATH}' >> ~/.bashrc
echo '# 3_1, 3_2' >> ~/.bashrc
echo 'export UNITREE_SDK_VERSION=3_2' >> ~/.bashrc
echo 'export UNITREE_LEGGED_SDK_PATH=~/unitree_legged_sdk' >> ~/.bashrc
echo 'export ALIENGO_SDK_PATH=~/aliengo_sdk' >> ~/.bashrc
echo '# amd64, arm32, arm64' >> ~/.bashrc
echo 'export UNITREE_PLATFORM="arm64" ' >> ~/.bashrc
