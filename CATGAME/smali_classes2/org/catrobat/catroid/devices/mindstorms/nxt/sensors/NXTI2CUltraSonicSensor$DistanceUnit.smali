.class final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;
.super Ljava/lang/Enum;
.source "NXTI2CUltraSonicSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DistanceUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

.field public static final enum CENTIMETER:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

.field public static final enum DUMMY:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

.field public static final enum INCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    const-string v1, "DUMMY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->DUMMY:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    const-string v1, "CENTIMETER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->CENTIMETER:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    const-string v1, "INCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->INCH:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    .line 41
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->DUMMY:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->CENTIMETER:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;
    .locals 1

    .line 41
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$DistanceUnit;

    return-object v0
.end method
