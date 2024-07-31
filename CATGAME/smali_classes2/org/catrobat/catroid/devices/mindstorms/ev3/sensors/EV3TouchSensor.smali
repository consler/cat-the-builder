.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3TouchSensor;
.super Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.source "EV3TouchSensor.java"


# static fields
.field private static final DEFAULT_VALUE:I

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3TouchSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3TouchSensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 34
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE0:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3TouchSensor;->lastValidValue:F

    .line 36
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 40
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3TouchSensor;->getPercentValue()I

    move-result v0

    .line 41
    .local v0, "percent":I
    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 44
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
