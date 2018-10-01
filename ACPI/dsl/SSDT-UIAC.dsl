// SSDT-UIAC.dsl

DefinitionBlock ("", "SSDT", 2, "hack", "UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "8086_9dxx", Package()  // examples: 0x9d2f, 0x9ded
            {
                "port-count", Buffer() { 18, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package() // left type-A
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package() // right type-A
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS04", Package() // first/top type-C
                    {
                        "UsbConnector", 9,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS07", Package() // Bluetooth
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package() // Camera
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package() // Fingerprint
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package() // Touchscreen
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "SS01", Package() // left type-A
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "SS02", Package() // right type-A
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS03", Package() // Cardreader
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "SS04", Package() // first/top type-C
                    {
                        "UsbConnector", 9,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                },
            },
        })
    }
}
//EOF
