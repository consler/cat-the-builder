.class final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;
.super Ljava/lang/Enum;
.source "NXTI2CUltraSonicSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UltrasonicCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

.field public static final enum Continuous:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

.field public static final enum EventCapture:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

.field public static final enum Off:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

.field public static final enum RequestWarmReset:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

.field public static final enum SingleShot:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;


# instance fields
.field private command:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 63
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Off:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const-string v1, "SingleShot"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->SingleShot:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const-string v1, "Continuous"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Continuous:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const-string v1, "EventCapture"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->EventCapture:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    const-string v1, "RequestWarmReset"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->RequestWarmReset:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    .line 62
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    sget-object v7, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Off:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    aput-object v7, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->SingleShot:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->Continuous:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->EventCapture:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->command:I

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;
    .locals 1

    .line 62
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 72
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$UltrasonicCommand;->command:I

    int-to-byte v0, v0

    return v0
.end method
