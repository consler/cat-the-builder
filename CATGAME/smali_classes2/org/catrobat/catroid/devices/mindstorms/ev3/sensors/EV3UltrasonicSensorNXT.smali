.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3UltrasonicSensorNXT;
.super Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.source "EV3UltrasonicSensorNXT.java"


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field private static final SENSOR_VALUE_READ_LENGTH:I = 0x1


# direct methods
.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;
    .param p3, "mode"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    .line 34
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    invoke-direct {p0, p1, v0, p3, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3UltrasonicSensorNXT;->lastValidValue:F

    .line 36
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3UltrasonicSensorNXT;->getRawValue(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    return v0
.end method
