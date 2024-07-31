.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
.super Ljava/lang/Enum;
.source "NXTSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

.field public static final enum LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

.field public static final enum LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

.field public static final enum NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

.field public static final enum SOUND:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

.field public static final enum TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

.field public static final enum ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const-string v1, "NO_SENSOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 45
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const-string v1, "TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 46
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const-string v1, "SOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->SOUND:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 47
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const-string v1, "LIGHT_INACTIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const-string v1, "LIGHT_ACTIVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    const-string v1, "ULTRASONIC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 43
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    sget-object v8, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    aput-object v8, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->SOUND:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSensorCodes()[Ljava/lang/String;
    .locals 3

    .line 52
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    .local v0, "valueStrings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 55
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getSensorFromSensorCode(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .locals 2
    .param p0, "sensorCode"    # Ljava/lang/String;

    .line 66
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-static {v0, p0}, Lorg/catrobat/catroid/utils/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 67
    .local v0, "sensor":Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    :goto_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .locals 1

    .line 43
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    return-object v0
.end method


# virtual methods
.method public getSensorCode()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
