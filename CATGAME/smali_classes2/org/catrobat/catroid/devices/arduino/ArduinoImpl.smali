.class public Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;
.super Ljava/lang/Object;
.source "ArduinoImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/arduino/Arduino;


# static fields
.field private static final ARDUINO_UUID:Ljava/util/UUID;

.field public static final NUMBER_OF_ANALOG_PINS:I = 0x6

.field public static final NUMBER_OF_DIGITAL_PINS:I = 0xe

.field public static final NUMBER_OF_DIGITAL_PORTS:I = 0x2

.field public static final PINS_IN_A_PORT:I = 0x8

.field public static final PWM_PINS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private arduinoListener:Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

.field private btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

.field private firmata:Lname/antonsmirnov/firmata/Firmata;

.field private isInitialized:Z

.field private isReportingSensorData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->PWM_PINS:[I

    .line 54
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->ARDUINO_UUID:Ljava/util/UUID;

    .line 55
    const-class v0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x5
        0x6
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isReportingSensorData:Z

    .line 59
    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isInitialized:Z

    return-void
.end method

.method public static getIndexOfPinOnPort(I)I
    .locals 1
    .param p0, "pin"    # I

    .line 243
    rem-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static getPortFromPin(I)I
    .locals 1
    .param p0, "pin"    # I

    .line 239
    div-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static isValidAnalogPin(I)Z
    .locals 1
    .param p0, "analogPinNumber"    # I

    .line 235
    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidDigitalPin(I)Z
    .locals 1
    .param p0, "pin"    # I

    .line 231
    if-ltz p0, :cond_0

    const/16 v0, 0xe

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reportSensorData(Z)V
    .locals 2
    .param p1, "report"    # Z

    .line 163
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isReportingSensorData:Z

    if-ne v0, p1, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    iput-boolean p1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isReportingSensorData:Z

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 170
    new-instance v1, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;

    invoke-direct {v1, v0, p1}, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;-><init>(IZ)V

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private sendAnalogFirmataMessage(II)V
    .locals 2
    .param p1, "pin"    # I
    .param p2, "value"    # I

    .line 247
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    sget-object v1, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->PWM:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->getMode()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 248
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    invoke-direct {v0, p1, p2}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 249
    return-void
.end method

.method private sendDigitalFirmataMessage(III)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "pin"    # I
    .param p3, "value"    # I

    .line 252
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    sget-object v1, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->OUTPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->getMode()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 253
    new-instance v0, Lname/antonsmirnov/firmata/message/DigitalMessage;

    invoke-direct {v0, p1, p3}, Lname/antonsmirnov/firmata/message/DigitalMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 254
    return-void
.end method

.method private sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;

    .line 257
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    if-nez v0, :cond_0

    .line 258
    return-void

    .line 262
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lname/antonsmirnov/firmata/Firmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->TAG:Ljava/lang/String;

    const-string v2, "Firmata Serial error, cannot send message."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    return-void
.end method

.method private tryInitialize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 147
    new-instance v0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 149
    .local v0, "serial":Lname/antonsmirnov/firmata/serial/ISerial;
    new-instance v1, Lname/antonsmirnov/firmata/Firmata;

    invoke-direct {v1, v0}, Lname/antonsmirnov/firmata/Firmata;-><init>(Lname/antonsmirnov/firmata/serial/ISerial;)V

    iput-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    .line 151
    new-instance v1, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

    invoke-direct {v1}, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->arduinoListener:Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

    .line 152
    iget-object v2, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v2, v1}, Lname/antonsmirnov/firmata/Firmata;->addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 154
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/Firmata;->getSerial()Lname/antonsmirnov/firmata/serial/ISerial;

    move-result-object v1

    invoke-interface {v1}, Lname/antonsmirnov/firmata/serial/ISerial;->start()V

    .line 156
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->PWM_PINS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 157
    .local v4, "pin":I
    new-instance v5, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    sget-object v6, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->PWM:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v6}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->getMode()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;-><init>(II)V

    invoke-direct {p0, v5}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 156
    .end local v4    # "pin":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->reportSensorData(Z)V

    .line 160
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->reportSensorData(Z)V

    .line 189
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->reportSensorData(Z)V

    .line 88
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/Firmata;->clearListeners()V

    .line 89
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/Firmata;->getSerial()Lname/antonsmirnov/firmata/serial/ISerial;

    move-result-object v1

    invoke-interface {v1}, Lname/antonsmirnov/firmata/serial/ISerial;->stop()V

    .line 90
    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isInitialized:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error stop Arduino serial"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    return-void
.end method

.method public getAnalogArduinoPin(I)D
    .locals 2
    .param p1, "analogPinNumber"    # I

    .line 227
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->arduinoListener:Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->getAnalogPinValue(I)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getBluetoothDeviceUUID()Ljava/util/UUID;
    .locals 1

    .line 126
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->ARDUINO_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->ARDUINO:Ljava/lang/Class;

    return-object v0
.end method

.method public getDigitalArduinoPin(I)D
    .locals 5
    .param p1, "digitalPinNumber"    # I

    .line 207
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    sget-object v1, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->INPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->getMode()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 209
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->getPortFromPin(I)I

    move-result v0

    .line 210
    .local v0, "port":I
    new-instance v1, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;-><init>(IZ)V

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 213
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->TAG:Ljava/lang/String;

    const-string v3, "Error Arduino sensor thread sleep()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->arduinoListener:Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->getDigitalPinValue(I)I

    move-result v1

    int-to-double v1, v1

    .line 220
    .local v1, "result":D
    new-instance v3, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;-><init>(IZ)V

    invoke-direct {p0, v3}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 222
    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "ARDUINO"

    return-object v0
.end method

.method public initialise()V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 137
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->tryInitialize()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isInitialized:Z
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error opening streams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error starting firmata serials"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    nop

    .line 144
    :goto_1
    return-void
.end method

.method public isAlive()Z
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return v1

    .line 105
    :cond_0
    :try_start_0
    new-instance v2, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;-><init>()V

    invoke-virtual {v0, v2}, Lname/antonsmirnov/firmata/Firmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    return v1
.end method

.method public pause()V
    .locals 0

    .line 184
    return-void
.end method

.method public reportFirmwareVersion()V
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 118
    :cond_0
    :try_start_0
    new-instance v1, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;-><init>()V

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/Firmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->TAG:Ljava/lang/String;

    const-string v2, "Firmata Serial error, cannot send message."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    return-void
.end method

.method public setAnalogArduinoPin(II)V
    .locals 0
    .param p1, "pin"    # I
    .param p2, "value"    # I

    .line 193
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendAnalogFirmataMessage(II)V

    .line 194
    return-void
.end method

.method public setConnection(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 72
    return-void
.end method

.method public setDigitalArduinoPin(II)V
    .locals 2
    .param p1, "digitalPinNumber"    # I
    .param p2, "pinValue"    # I

    .line 198
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->getPortFromPin(I)I

    move-result v0

    .line 200
    .local v0, "digitalPort":I
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->arduinoListener:Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->setDigitalPinValue(II)V

    .line 202
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->arduinoListener:Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->getPortValue(I)I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->sendDigitalFirmataMessage(III)V

    .line 203
    return-void
.end method

.method public start()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isInitialized:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->initialise()V

    .line 179
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->reportSensorData(Z)V

    .line 180
    return-void
.end method
