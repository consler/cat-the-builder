.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;
.super Ljava/lang/Enum;
.source "EV3SensorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum ENERGY_METER:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum EV3_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum EV3_GYRO:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum EV3_INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum EV3_LARGE_MOTOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum EV3_MEDIUM_MOTOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum EV3_TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum EV3_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum IIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum NXT_TEMPERATURE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum NXT_TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

.field public static final enum NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;


# instance fields
.field private sensorTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "NO_SENSOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "NXT_TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "NXT_LIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 28
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "NXT_SOUND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "NXT_COLOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "NXT_ULTRASONIC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "NXT_TEMPERATURE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_TEMPERATURE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 31
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "EV3_LARGE_MOTOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_LARGE_MOTOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "EV3_MEDIUM_MOTOR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_MEDIUM_MOTOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 32
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "EV3_TOUCH"

    const/16 v11, 0x9

    const/16 v12, 0x10

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "EV3_COLOR"

    const/16 v13, 0xa

    const/16 v14, 0x1d

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "EV3_ULTRASONIC"

    const/16 v14, 0xb

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 33
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "EV3_GYRO"

    const/16 v15, 0xc

    const/16 v14, 0x20

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_GYRO:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "EV3_INFRARED"

    const/16 v14, 0xd

    const/16 v15, 0x21

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "ENERGY_METER"

    const/16 v15, 0xe

    const/16 v14, 0x63

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->ENERGY_METER:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const-string v1, "IIC"

    const/16 v14, 0xf

    const/16 v15, 0x64

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->IIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    .line 26
    new-array v1, v12, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    sget-object v12, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NO_SENSOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v12, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_LIGHT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->NXT_TEMPERATURE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_LARGE_MOTOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_MEDIUM_MOTOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_TOUCH:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    aput-object v2, v1, v13

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_ULTRASONIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_GYRO:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->EV3_INFRARED:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->ENERGY_METER:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->sensorTypeValue:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;
    .locals 1

    .line 26
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 44
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3SensorType;->sensorTypeValue:I

    int-to-byte v0, v0

    return v0
.end method
