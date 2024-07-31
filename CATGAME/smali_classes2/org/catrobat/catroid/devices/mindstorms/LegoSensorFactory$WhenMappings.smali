.class public final synthetic Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_AMBIENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_REFLECT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->HT_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_C:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/4 v7, 0x7

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_F:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/16 v7, 0x8

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/16 v7, 0x9

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/16 v7, 0xa

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/16 v7, 0xb

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->ordinal()I

    move-result v1

    const/16 v7, 0xc

    aput v7, v0, v1

    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->SOUND:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/LegoSensorFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ordinal()I

    move-result v1

    aput v6, v0, v1

    return-void
.end method
