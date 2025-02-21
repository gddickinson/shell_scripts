# ROS Robot Shell Scripts

A collection of useful shell scripts for ROS (Robot Operating System) robot setup, configuration, and startup.

## Overview

This repository contains shell scripts that automate common tasks for working with ROS-powered robots, including:

- Setting environment variables for ROS networking
- Automating IP address detection and configuration
- Starting ROS core services
- Managing hardware like laser sensors and cameras
- Environment configuration helpers

## Scripts

### IP Address Management

- **`ip_address.sh`**: Returns the current IP address of the active network interface.
  ```bash
  ./ip_address.sh
  ```

### ROS Core Management

- **`roscore_startup.sh`**: Configures ROS networking environment variables using the current IP address and starts the ROS core.
  ```bash
  ./roscore_startup.sh
  ```

### ROS Terminal Configuration

- **`ROS_terminal_startup.sh`**: Sets up the ROS networking environment in a terminal session to connect to a remote ROS master.
  ```bash
  ./ROS_terminal_startup.sh
  ```

### Hardware Controllers

- **`XV_11_startup.sh`**: Script to start an XV-11 (Neato) LIDAR sensor. Automatically configures ROS environment variables and prompts for the serial port.
  ```bash
  ./XV_11_startup.sh
  # Then enter port name when prompted (e.g., ACM0)
  ```

### Camera Integration

- **`robot_uvc_camera`**: Commands and instructions for using and calibrating UVC cameras with ROS. Contains commands for:
  - Starting camera nodes
  - Calibrating cameras
  - Launching USB cameras

### Installation Scripts

- **`install-opencv.sh`**: Comprehensive script for installing OpenCV on Ubuntu/Debian systems with all dependencies.
  ```bash
  ./install-opencv.sh
  ```

### Bash Configuration

- **`bashrc_copy`**: Example `.bashrc` configuration with ROS environment setup, useful aliases, and helper functions.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/shell_scripts.git
   ```

2. Make the scripts executable:
   ```bash
   cd shell_scripts
   chmod +x *.sh
   ```

## Usage

Most scripts can be run directly from the terminal:

```bash
./script_name.sh
```

For the `.bashrc` file, you can copy relevant sections to your own `.bashrc` file:

```bash
# Copy ROS-specific portions
cat bashrc_copy >> ~/.bashrc
```

## ROS Configuration Tips

### Environment Variables

These scripts manage the following important ROS environment variables:

- `ROS_HOSTNAME`: The hostname or IP address of this machine
- `ROS_MASTER_URI`: The URI of the ROS master (usually http://hostname:11311)
- `ROS_IP`: The IP address of this machine

### Networking Configuration

For multi-machine ROS setups, remember to:
1. Configure hostnames correctly
2. Ensure all machines can communicate over the network
3. Set ROS_MASTER_URI on all machines to point to the machine running roscore

## Requirements

- Ubuntu/Debian Linux
- ROS (tested with ROS Indigo)
- Bash shell
- Network connectivity for multi-machine setups

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
