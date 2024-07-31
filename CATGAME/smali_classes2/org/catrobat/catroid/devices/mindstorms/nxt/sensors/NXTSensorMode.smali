.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;
.super Ljava/lang/Enum;
.source "NXTSensorMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

.field public static final enum BOOL:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

.field public static final enum Percent:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

.field public static final enum RAW:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;


# instance fields
.field private sensorModeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    const-string v1, "RAW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->RAW:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    const-string v1, "BOOL"

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->BOOL:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    const-string v1, "Percent"

    const/4 v4, 0x2

    const/16 v5, 0x80

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->Percent:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    .line 25
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->RAW:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->BOOL:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "sensorModeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->sensorModeValue:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 35
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensorMode;->sensorModeValue:I

    int-to-byte v0, v0

    return v0
.end method
