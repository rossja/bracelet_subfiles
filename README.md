# bracelet_subfiles
.sub files for the LED bracelets distributed at DEFCON

# Uploading the .sub files to FREE-WILi

## Prerequisites
* Use Python 3.10+
* Install the freewili library with pip: `pip install freewili`

## Upload Methods

### Method 1: Using the Upload Scripts (Recommended)
The easiest way to upload all .sub files is to use the provided upload scripts:

**Windows (PowerShell):**
```powershell
.\upload.ps1
```

**Linux/macOS (Bash):**
```bash
./upload.sh
```

These scripts will automatically upload all .sub files to the `/radio/` directory on your FREE-WILi device.

### Method 2: Manual Upload
If you prefer to upload files manually or need more control:

```
❯ fwi-serial --version
fwi-serial 0.0.29
> fwi-serial -l
Found 1 FreeWili(s)
1. Free-Wili FW4852
        1. Main: MainCPU v54 (USB Composite Device): COM4
        2. Display: DisplayCPU v54 (USB Composite Device): COM3
        3. FPGA: FreeWili (USB Serial Converter): COM49
```

* Upload individual .sub files: `fwi-serial -s yellow.sub`

## Verification
* You should see the .sub files in the `Radios/Transmit` menu on your FREE-WILi device. A power cycle of the Free-Wili may be required for them to show up.
* Files are uploaded to the `/radio/` directory automatically
