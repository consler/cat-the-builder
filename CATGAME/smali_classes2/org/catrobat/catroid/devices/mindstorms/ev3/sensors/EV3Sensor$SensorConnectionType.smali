.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;
.super Ljava/lang/Enum;
.source "EV3Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_DAISYCHAIN:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_ERROR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_EV3_IN_DUMB:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_EV3_IN_UART:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_EV3_OUT_DUMB:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_EV3_OUT_INTELLIGENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_EV3_OUT_TACHO:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_NONE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_NXT_ANALOG:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_NXT_IIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field public static final enum CONN_UNKNOWN:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

.field private static final LOOKUP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sensorConnectionByteCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 81
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_UNKNOWN"

    const/4 v2, 0x0

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_UNKNOWN:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 83
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_DAISYCHAIN"

    const/4 v3, 0x1

    const/16 v4, 0x75

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_DAISYCHAIN:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 84
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_NXT_COLOR"

    const/4 v4, 0x2

    const/16 v5, 0x76

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 85
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_NXT_ANALOG"

    const/4 v5, 0x3

    const/16 v6, 0x77

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NXT_ANALOG:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 86
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_NXT_IIC"

    const/4 v6, 0x4

    const/16 v7, 0x78

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NXT_IIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 88
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_EV3_IN_DUMB"

    const/4 v7, 0x5

    const/16 v8, 0x79

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_IN_DUMB:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 89
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_EV3_IN_UART"

    const/4 v8, 0x6

    const/16 v9, 0x7a

    invoke-direct {v0, v1, v8, v9}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_IN_UART:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 90
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_EV3_OUT_DUMB"

    const/4 v9, 0x7

    const/16 v10, 0x7b

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_OUT_DUMB:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 91
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_EV3_OUT_INTELLIGENT"

    const/16 v10, 0x8

    const/16 v11, 0x7c

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_OUT_INTELLIGENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 92
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_EV3_OUT_TACHO"

    const/16 v11, 0x9

    const/16 v12, 0x7d

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_OUT_TACHO:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 94
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_NONE"

    const/16 v12, 0xa

    const/16 v13, 0x7e

    invoke-direct {v0, v1, v12, v13}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NONE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 95
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    const-string v1, "CONN_ERROR"

    const/16 v13, 0xb

    const/16 v14, 0x7f

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_ERROR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 80
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    sget-object v14, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_UNKNOWN:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v14, v1, v2

    sget-object v14, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_DAISYCHAIN:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v14, v1, v3

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NXT_COLOR:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NXT_ANALOG:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v5

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NXT_IIC:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v6

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_IN_DUMB:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v7

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_IN_UART:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v8

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_OUT_DUMB:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v9

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_OUT_INTELLIGENT:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v10

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_EV3_OUT_TACHO:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v11

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->CONN_NONE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    aput-object v3, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->LOOKUP:Landroid/util/SparseArray;

    .line 101
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 102
    .local v3, "c":Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->LOOKUP:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->sensorConnectionByteCode:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    .end local v3    # "c":Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "sensorConnectionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->sensorConnectionByteCode:I

    .line 116
    return-void
.end method

.method public static getSensorConnectionTypeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;
    .locals 2
    .param p0, "value"    # B

    .line 107
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->LOOKUP:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    return-object v0
.end method

.method public static isMember(B)Z
    .locals 2
    .param p0, "memberToTest"    # B

    .line 111
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->LOOKUP:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;
    .locals 1

    .line 80
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 119
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$SensorConnectionType;->sensorConnectionByteCode:I

    int-to-byte v0, v0

    return v0
.end method
