.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTTouchSensor;
.super Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;
.source "NXTTouchSensor.java"


# static fields
.field private static final DEFAULT_VALUE:I

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTLightSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTTouchSensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 34
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->BOOL:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTTouchSensor;->lastValidValue:F

    .line 36
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTTouchSensor;->getScaledValue()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
