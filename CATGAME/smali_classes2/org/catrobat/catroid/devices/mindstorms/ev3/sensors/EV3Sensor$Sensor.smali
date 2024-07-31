.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
.super Ljava/lang/Enum;
.source "EV3Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum COLOR_AMBIENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum COLOR_REFLECT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum HT_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum NXT_LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum NXT_TEMPERATURE_C:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum NXT_TEMPERATURE_F:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

.field public static final enum TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 46
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "NO_SENSOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 47
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "COLOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "COLOR_AMBIENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_AMBIENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 50
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "COLOR_REFLECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_REFLECT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "INFRARED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 52
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "HT_NXT_COLOR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->HT_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "NXT_TEMPERATURE_C"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_C:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 54
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "NXT_TEMPERATURE_F"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_F:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 55
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "NXT_LIGHT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 56
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "NXT_LIGHT_ACTIVE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 57
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "NXT_SOUND"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 58
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    const-string v1, "NXT_ULTRASONIC"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 45
    const/16 v1, 0xd

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    sget-object v15, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v15, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_AMBIENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->COLOR_REFLECT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->HT_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_C:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_TEMPERATURE_F:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSensorCodes()[Ljava/lang/String;
    .locals 3

    .line 61
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    .local v0, "valueStrings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 64
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getSensorFromSensorCode(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .locals 2
    .param p0, "sensorCode"    # Ljava/lang/String;

    .line 75
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-static {v0, p0}, Lorg/catrobat/catroid/utils/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 76
    .local v0, "sensor":Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    :goto_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    return-object v0
.end method


# virtual methods
.method public getSensorCode()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
