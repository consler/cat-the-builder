.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;
.super Ljava/lang/Enum;
.source "NXTMotor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotorRunState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

.field public static final enum IDLE:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

.field public static final enum RAMP_DOWN:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

.field public static final enum RAMP_UP:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

.field public static final enum RUNNING:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;


# instance fields
.field private motorRunStateValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 152
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->IDLE:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    const-string v1, "RAMP_UP"

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->RAMP_UP:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    const/16 v5, 0x20

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->RUNNING:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    const-string v1, "RAMP_DOWN"

    const/4 v5, 0x3

    const/16 v6, 0x40

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->RAMP_DOWN:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    .line 151
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->IDLE:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->RAMP_UP:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->RUNNING:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "motorRunStateValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->motorRunStateValue:I

    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 151
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;
    .locals 1

    .line 151
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 161
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->motorRunStateValue:I

    int-to-byte v0, v0

    return v0
.end method
