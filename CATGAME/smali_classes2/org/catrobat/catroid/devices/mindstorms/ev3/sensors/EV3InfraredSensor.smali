.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3InfraredSensor;
.super Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.source "EV3InfraredSensor.java"


# static fields
.field private static final DEFAULT_VALUE:I = 0x32

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3InfraredSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3InfraredSensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 35
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE0:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 36
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3InfraredSensor;->lastValidValue:F

    .line 37
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3InfraredSensor;->getPercentValue()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
