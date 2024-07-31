.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;
.super Ljava/lang/Enum;
.source "NXTSensorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum LOW_SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum LOW_SPEED_9V:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum SOUND_DB:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum SOUND_DBA:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum TEMPERATURE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

.field public static final enum TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;


# instance fields
.field private sensorTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 26
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "NO_SENSOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "TEMPERATURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->TEMPERATURE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    .line 27
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "LIGHT_ACTIVE"

    const/4 v5, 0x3

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "LIGHT_INACTIVE"

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    .line 28
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "SOUND_DB"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v6, v9}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->SOUND_DB:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "SOUND_DBA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v8, v10}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->SOUND_DBA:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "LOW_SPEED"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v9, v11}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LOW_SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    const-string v1, "LOW_SPEED_9V"

    const/16 v11, 0xb

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LOW_SPEED_9V:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    .line 25
    const/16 v1, 0x9

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    sget-object v11, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v11, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->TOUCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->TEMPERATURE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LIGHT_ACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LIGHT_INACTIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->SOUND_DB:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->SOUND_DBA:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->LOW_SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "sensorTypeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->sensorTypeValue:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 38
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorType;->sensorTypeValue:I

    int-to-byte v0, v0

    return v0
.end method
