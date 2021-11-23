int i2c_write(char *dev_file, uint8_t reg_addr, uint8_t data) {
    /* ---- Open device file /dev/i2c-N ---- */
    int fd = open(dev_file, O_RDWR);
    if (fd == -1) {
        fprintf(stderr, "i2c_write(): failed to open %s: %s\n", dev_file,
                strerror(errno));
        return -1;
    }

    /* ---- Set I2C slave address ---- */
    int ret = ioctl(fd, I2C_SLAVE, dev_addr);
    if (ret < 0 && errno == EBUSY) {
        ret = ioctl(fd, I2C_SLAVE_FORCE,
                    dev_addr);  // Use this slave address, even if it is already
                                // in use by a driver !
    }
    if (ret < 0) {
        fprintf(stderr, "i2c_write(): Couldn't set I2C slave address: %s\n",
                strerror(errno));
        close(fd);
        return -1;
    }

    /* ---- I2C write ---- */
    uint8_t packet[2];
    packet[0] = reg_addr;
    packet[1] = data;
    if (write(fd, packet, 2) < 0) {
        fprintf(stderr,
                "i2c_write(): Couldn't write 0x%02X at reg address %3d: %s\n",
                data, reg_addr, strerror(errno));
        close(fd);
        return -1;
    }

    close(fd);
    return 0;
}

int i2c_read(char *dev_file, uint8_t reg_addr, uint8_t *pdata) {
    /* ---- Open device file /dev/i2c-N ---- */
    int fd = open(dev_file, O_RDWR);
    if (fd == -1) {
        fprintf(stderr, "i2c_read(): failed to open %s: %s\n", dev_file,
                strerror(errno));
        return -1;
    }

    /* ---- Set I2C slave address ---- */
    int ret = ioctl(fd, I2C_SLAVE, dev_addr);
    if (ret < 0 && errno == EBUSY) {
        ret = ioctl(fd, I2C_SLAVE_FORCE,
                    dev_addr);  // Use this slave address, even if it is already
                                // in use by a driver !
    }
    if (ret < 0) {
        fprintf(stderr, "i2c_read(): Couldn't set I2C slave address: %s\n",
                strerror(errno));
        close(fd);
        return -1;
    }

    /* ---- I2C read ---- */
    // set register address
    if (write(fd, &reg_addr, 1) < 0) {
        fprintf(stderr,
                "i2c_read(): write(): Couldn't set I2C register address: %s\n",
                strerror(errno));
        close(fd);
        return -1;
    }
    // read the value stored in the register
    if (read(fd, pdata, 1) < 0) {
        fprintf(stderr,
                "i2c_read(): read(): Couldn't read register value: %s\n",
                strerror(errno));
        close(fd);
        return -1;
    }
    close(fd);
    return 0;
}