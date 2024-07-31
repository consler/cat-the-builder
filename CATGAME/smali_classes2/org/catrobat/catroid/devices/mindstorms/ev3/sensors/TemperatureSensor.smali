.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;
.super Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.source "TemperatureSensor.java"


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field private static final SENSOR_VALUE_READ_LENGTH:I = 0x4

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;
    .param p3, "mode"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    .line 38
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_TEMPERATURE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    invoke-direct {p0, p1, v0, p3, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;->lastValidValue:F

    .line 40
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;->getSiValue(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    .line 47
    .local v0, "temperature":F
    return v0
.end method
