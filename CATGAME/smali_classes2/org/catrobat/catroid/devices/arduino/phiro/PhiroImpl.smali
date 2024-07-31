.class public Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;
.super Ljava/lang/Object;
.source "PhiroImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$StopPlayToneTask;
    }
.end annotation


# static fields
.field private static final MAX_PWM_PIN:I = 0xd

.field private static final MAX_SENSOR_PIN:I = 0x5

.field private static final MAX_VALUE:I = 0xff

.field private static final MIN_PWM_PIN:I = 0x2

.field private static final MIN_SENSOR_PIN:I = 0x0

.field private static final MIN_VALUE:I = 0x0

.field private static final PHIRO_UUID:Ljava/util/UUID;

.field private static final PIN_LEFT_MOTOR_FORWARD_BACKWARD:I = 0xb

.field private static final PIN_LEFT_MOTOR_SPEED:I = 0xa

.field private static final PIN_RGB_BLUE_LEFT:I = 0x9

.field private static final PIN_RGB_BLUE_RIGHT:I = 0x6

.field private static final PIN_RGB_GREEN_LEFT:I = 0x8

.field private static final PIN_RGB_GREEN_RIGHT:I = 0x5

.field private static final PIN_RGB_RED_LEFT:I = 0x7

.field private static final PIN_RGB_RED_RIGHT:I = 0x4

.field private static final PIN_RIGHT_MOTOR_FORWARD_BACKWARD:I = 0x2

.field private static final PIN_RIGHT_MOTOR_SPEED:I = 0xc

.field public static final PIN_SENSOR_BOTTOM_LEFT:I = 0x3

.field public static final PIN_SENSOR_BOTTOM_RIGHT:I = 0x2

.field public static final PIN_SENSOR_FRONT_LEFT:I = 0x4

.field public static final PIN_SENSOR_FRONT_RIGHT:I = 0x1

.field public static final PIN_SENSOR_SIDE_LEFT:I = 0x5

.field public static final PIN_SENSOR_SIDE_RIGHT:I = 0x0

.field private static final PIN_SPEAKER_OUT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

.field currentStopPlayToneTask:Ljava/util/TimerTask;

.field private firmata:Lname/antonsmirnov/firmata/Firmata;

.field private isInitialized:Z

.field private isReportingSensorData:Z

.field private phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->PHIRO_UUID:Ljava/util/UUID;

    .line 50
    const-class v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isInitialized:Z

    .line 86
    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isReportingSensorData:Z

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->timer:Ljava/util/Timer;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->currentStopPlayToneTask:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;II)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    return-void
.end method

.method private checkRBGValue(I)I
    .locals 1
    .param p1, "rgbValue"    # I

    .line 187
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 188
    return v0

    .line 191
    :cond_0
    if-gez p1, :cond_1

    .line 192
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_1
    return p1
.end method

.method private percentToSpeed(I)I
    .locals 4
    .param p1, "percent"    # I

    .line 176
    if-gtz p1, :cond_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 180
    const/16 v0, 0xff

    return v0

    .line 183
    :cond_1
    int-to-double v0, p1

    const-wide v2, 0x4004666666666666L    # 2.55

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private reportSensorData(Z)V
    .locals 2
    .param p1, "report"    # Z

    .line 317
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isReportingSensorData:Z

    if-ne v0, p1, :cond_0

    .line 318
    return-void

    .line 321
    :cond_0
    iput-boolean p1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isReportingSensorData:Z

    .line 323
    const/4 v0, 0x0

    .local v0, "pin":I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 325
    new-instance v1, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;

    invoke-direct {v1, v0, p1}, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;-><init>(IZ)V

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "pin":I
    :cond_1
    return-void
.end method

.method private resetPins()V
    .locals 1

    .line 330
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->stopAllMovements()V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->setLeftRGBLightColor(III)V

    .line 332
    invoke-virtual {p0, v0, v0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->setRightRGBLightColor(III)V

    .line 333
    invoke-virtual {p0, v0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->playTone(II)V

    .line 334
    return-void
.end method

.method private sendAnalogFirmataMessage(II)V
    .locals 1
    .param p1, "pin"    # I
    .param p2, "value"    # I

    .line 357
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    invoke-direct {v0, p1, p2}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 358
    return-void
.end method

.method private sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;

    .line 361
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lname/antonsmirnov/firmata/Firmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->TAG:Ljava/lang/String;

    const-string v2, "Firmata Serial error, cannot send message."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    return-void
.end method

.method private tryInitialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 300
    new-instance v0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    invoke-interface {v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 302
    .local v0, "serial":Lname/antonsmirnov/firmata/serial/ISerial;
    new-instance v1, Lname/antonsmirnov/firmata/Firmata;

    invoke-direct {v1, v0}, Lname/antonsmirnov/firmata/Firmata;-><init>(Lname/antonsmirnov/firmata/serial/ISerial;)V

    iput-object v1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    .line 304
    new-instance v1, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-direct {v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    .line 305
    iget-object v2, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v2, v1}, Lname/antonsmirnov/firmata/Firmata;->addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 307
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/Firmata;->getSerial()Lname/antonsmirnov/firmata/serial/ISerial;

    move-result-object v1

    invoke-interface {v1}, Lname/antonsmirnov/firmata/serial/ISerial;->start()V

    .line 309
    const/4 v1, 0x2

    .local v1, "pin":I
    :goto_0
    const/16 v2, 0xd

    if-gt v1, v2, :cond_0

    .line 310
    new-instance v2, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    sget-object v3, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->PWM:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v3}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->getMode()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;-><init>(II)V

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "pin":I
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->reportSensorData(Z)V

    .line 314
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->resetPins()V

    .line 354
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 216
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 221
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->resetPins()V

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->reportSensorData(Z)V

    .line 223
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/Firmata;->clearListeners()V

    .line 224
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/Firmata;->getSerial()Lname/antonsmirnov/firmata/serial/ISerial;

    move-result-object v1

    invoke-interface {v1}, Lname/antonsmirnov/firmata/serial/ISerial;->stop()V

    .line 225
    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isInitialized:Z

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error stop phiro pro serial"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    return-void
.end method

.method public getBluetoothDeviceUUID()Ljava/util/UUID;
    .locals 1

    .line 280
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->PHIRO_UUID:Ljava/util/UUID;

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

    .line 205
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->PHIRO:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 200
    const-string v0, "Phiro"

    return-object v0
.end method

.method public getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)I
    .locals 2
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 260
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    const/4 v0, 0x0

    return v0

    .line 272
    :pswitch_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->getSideRightSensor()I

    move-result v0

    return v0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->getSideLeftSensor()I

    move-result v0

    return v0

    .line 268
    :pswitch_2
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->getFrontRightSensor()I

    move-result v0

    return v0

    .line 266
    :pswitch_3
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->getFrontLeftSensor()I

    move-result v0

    return v0

    .line 264
    :pswitch_4
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->getBottomRightSensor()I

    move-result v0

    return v0

    .line 262
    :pswitch_5
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->phiroListener:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->getBottomLeftSensor()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialise()V
    .locals 3

    .line 285
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 286
    return-void

    .line 290
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->tryInitialize()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isInitialized:Z
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error opening streams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error starting firmata serials"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    nop

    .line 297
    :goto_1
    return-void
.end method

.method public isAlive()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 235
    return v1

    .line 239
    :cond_0
    :try_start_0
    new-instance v2, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;-><init>()V

    invoke-virtual {v0, v2}, Lname/antonsmirnov/firmata/Firmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v0, 0x1

    return v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    return v1
.end method

.method public moveLeftMotorBackward(I)V
    .locals 2
    .param p1, "speedInPercent"    # I

    .line 119
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->percentToSpeed(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 120
    const/16 v0, 0xb

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 121
    return-void
.end method

.method public moveLeftMotorForward(I)V
    .locals 2
    .param p1, "speedInPercent"    # I

    .line 113
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->percentToSpeed(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 114
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 115
    return-void
.end method

.method public moveRightMotorBackward(I)V
    .locals 2
    .param p1, "speedInPercent"    # I

    .line 132
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->percentToSpeed(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 133
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 134
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 135
    return-void
.end method

.method public moveRightMotorForward(I)V
    .locals 2
    .param p1, "speedInPercent"    # I

    .line 125
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->percentToSpeed(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 126
    const/4 v0, 0x2

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 127
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 128
    return-void
.end method

.method public pause()V
    .locals 1

    .line 347
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->stopAllMovements()V

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->reportSensorData(Z)V

    .line 349
    return-void
.end method

.method public declared-synchronized playTone(II)V
    .locals 4
    .param p1, "selectedTone"    # I
    .param p2, "durationInSeconds"    # I

    monitor-enter p0

    .line 92
    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendAnalogFirmataMessage(II)V

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->currentStopPlayToneTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->currentStopPlayToneTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 97
    .end local p0    # "this":Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$StopPlayToneTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$StopPlayToneTask;-><init>(Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;)V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->currentStopPlayToneTask:Ljava/util/TimerTask;

    .line 98
    iget-object v1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->timer:Ljava/util/Timer;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 91
    .end local p1    # "selectedTone":I
    .end local p2    # "durationInSeconds":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reportFirmwareVersion()V
    .locals 3

    .line 247
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->firmata:Lname/antonsmirnov/firmata/Firmata;

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 252
    :cond_0
    :try_start_0
    new-instance v1, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;-><init>()V

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/Firmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    sget-object v1, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->TAG:Ljava/lang/String;

    const-string v2, "Firmata Serial error, cannot send message."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    return-void
.end method

.method public setConnection(Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 210
    iput-object p1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->btConnection:Lorg/catrobat/catroid/bluetooth/base/BluetoothConnection;

    .line 211
    return-void
.end method

.method public setLeftRGBLightColor(III)V
    .locals 2
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 155
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->checkRBGValue(I)I

    move-result p1

    .line 156
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->checkRBGValue(I)I

    move-result p2

    .line 157
    invoke-direct {p0, p3}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->checkRBGValue(I)I

    move-result p3

    .line 159
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 160
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p2}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 161
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p3}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 162
    return-void
.end method

.method public setRightRGBLightColor(III)V
    .locals 2
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 166
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->checkRBGValue(I)I

    move-result p1

    .line 167
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->checkRBGValue(I)I

    move-result p2

    .line 168
    invoke-direct {p0, p3}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->checkRBGValue(I)I

    move-result p3

    .line 170
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 171
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 172
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p3}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->sendFirmataMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 173
    return-void
.end method

.method public start()V
    .locals 1

    .line 338
    iget-boolean v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->isInitialized:Z

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->initialise()V

    .line 342
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->reportSensorData(Z)V

    .line 343
    return-void
.end method

.method public stopAllMovements()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->stopLeftMotor()V

    .line 150
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->stopRightMotor()V

    .line 151
    return-void
.end method

.method public stopLeftMotor()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->moveLeftMotorForward(I)V

    .line 140
    return-void
.end method

.method public stopRightMotor()V
    .locals 1

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->moveRightMotorForward(I)V

    .line 145
    return-void
.end method
