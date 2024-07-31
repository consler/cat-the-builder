.class public final Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;
.super Ljava/lang/Object;
.source "LegoSensorFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;",
        "",
        "connection",
        "Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;",
        "(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V",
        "create",
        "Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;",
        "sensorType",
        "",
        "port",
        "",
        "createEv3Sensor",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;",
        "createNxtSensor",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    return-void
.end method

.method private final createEv3Sensor(Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 3
    .param p1, "sensorType"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .param p2, "port"    # I

    .line 50
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create Ev3Sensor with invalid sensorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 62
    :pswitch_0
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3UltrasonicSensorNXT;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE0:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3UltrasonicSensorNXT;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto/16 :goto_0

    .line 61
    :pswitch_1
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SoundSensorNXT;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE1:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SoundSensorNXT;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto/16 :goto_0

    .line 60
    :pswitch_2
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3LightSensorNXT;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE0:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3LightSensorNXT;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 59
    :pswitch_3
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3LightSensorNXT;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE1:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3LightSensorNXT;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 58
    :pswitch_4
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE1:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 57
    :pswitch_5
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE0:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/TemperatureSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 56
    :pswitch_6
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/HiTechnicColorSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE1:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/HiTechnicColorSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 55
    :pswitch_7
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3ColorSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE1:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3ColorSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 54
    :pswitch_8
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3ColorSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE0:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3ColorSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 53
    :pswitch_9
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3ColorSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;->MODE2:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;

    invoke-direct {v0, p2, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3ColorSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorMode;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 52
    :pswitch_a
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3TouchSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, p2, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3TouchSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 51
    :pswitch_b
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3InfraredSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, p2, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3InfraredSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 50
    :goto_0
    nop

    .line 64
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final createNxtSensor(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 3
    .param p1, "sensorType"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .param p2, "port"    # I

    .line 66
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 71
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;-><init>(Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create NxtSensor with invalid sensorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 70
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTLightSensorActive;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, p2, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTLightSensorActive;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTLightSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, p2, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTLightSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 68
    :cond_3
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSoundSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, p2, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSoundSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    goto :goto_0

    .line 67
    :cond_4
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTTouchSensor;

    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-direct {v0, p2, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTTouchSensor;-><init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    .line 66
    :goto_0
    nop

    .line 73
    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Enum;I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
    .locals 3
    .param p1, "sensorType"    # Ljava/lang/Enum;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;I)",
            "Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;"
        }
    .end annotation

    const-string v0, "sensorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    nop

    .line 45
    instance-of v0, p1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-direct {p0, v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->createEv3Sensor(Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-direct {p0, v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory;->createNxtSensor(Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;I)Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;

    move-result-object v0

    .line 44
    :goto_0
    nop

    .line 48
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create LegoSensor with invalid sensorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
