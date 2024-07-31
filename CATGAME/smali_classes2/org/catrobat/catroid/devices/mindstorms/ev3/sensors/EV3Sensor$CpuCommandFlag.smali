.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;
.super Ljava/lang/Enum;
.source "EV3Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CpuCommandFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

.field public static final enum INCLUDE_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

.field public static final enum INCLUDE_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

.field public static final enum NO_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

.field public static final enum NO_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 124
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    const-string v1, "INCLUDE_TYPE_AND_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    .line 125
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    const-string v1, "NO_TYPE_AND_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->NO_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    .line 126
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    const-string v1, "INCLUDE_RETURN_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    .line 127
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    const-string v1, "NO_RETURN_VALUE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->NO_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    .line 123
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->NO_TYPE_AND_MODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->INCLUDE_RETURN_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;
    .locals 1

    .line 123
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$CpuCommandFlag;

    return-object v0
.end method
