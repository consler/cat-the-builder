.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;
.super Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;
.source "NXTI2CUltraSonicSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;,
        Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;,
        Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0xff

.field private static final TAG:Ljava/lang/String;

.field public static final ULTRASONIC_ADDRESS:B = 0x2t


# instance fields
.field private distanceUnit:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 77
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LOW_SPEED_9V:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;-><init>(BLorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 78
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->CENTIMETER:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->distanceUnit:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    .line 79
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->lastValidValue:F

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 2
    .param p1, "distanceUnit"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 83
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LOW_SPEED_9V:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;-><init>(BLorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 84
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->distanceUnit:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    .line 85
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->lastValidValue:F

    .line 86
    return-void
.end method

.method private getMode()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 118
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Continuous:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Command:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->getByte()B

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->readRegister(II)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getValueInDefinedUnitSystem(I)I
    .locals 2
    .param p1, "value"    # I

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->distanceUnit:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->INCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    if-ne v0, v1, :cond_0

    .line 134
    const v0, 0x99ca

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 136
    :cond_0
    return p1
.end method

.method private setMode(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;Z)V
    .locals 2
    .param p1, "command"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;
    .param p2, "reply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 122
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Command:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->getByte()B

    move-result v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->getByte()B

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->writeRegister(BBZ)V

    .line 123
    const/16 v0, 0x3c

    invoke-super {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->wait(I)V

    .line 124
    return-void
.end method


# virtual methods
.method public continuous()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 97
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Continuous:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->setMode(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;Z)V

    .line 98
    return-void
.end method

.method public getContinuousInterval()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 109
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Interval:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->getByte()B

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->readRegister(II)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "ULTRASONIC"

    aput-object v3, v1, v2

    iget v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s_%s_%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 128
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result1:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->getByte()B

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->readRegister(II)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 129
    .local v0, "sensorValue":I
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->getValueInDefinedUnitSystem(I)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public isSensorOff()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->getMode()Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Off:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 105
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->RequestWarmReset:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->setMode(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;Z)V

    .line 106
    return-void
.end method

.method public setContinuousInterval(B)V
    .locals 2
    .param p1, "interval"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 113
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Interval:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->getByte()B

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->writeRegister(BBZ)V

    .line 114
    const/16 v0, 0x3c

    invoke-super {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CSensor;->wait(I)V

    .line 115
    return-void
.end method

.method public singleShot(Z)V
    .locals 1
    .param p1, "reply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 89
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->SingleShot:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->setMode(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;Z)V

    .line 90
    return-void
.end method

.method public turnOffSonar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 93
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Off:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;->setMode(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;Z)V

    .line 94
    return-void
.end method
