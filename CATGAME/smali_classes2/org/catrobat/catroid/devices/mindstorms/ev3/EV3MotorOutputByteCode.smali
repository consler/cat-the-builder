.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;
.super Ljava/lang/Enum;
.source "EV3MotorOutputByteCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

.field public static final enum MOTOR_A_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

.field public static final enum MOTOR_B_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

.field public static final enum MOTOR_C_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

.field public static final enum MOTOR_D_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;


# instance fields
.field private ev3MotorOutputValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    const-string v1, "MOTOR_A_OUT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_A_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    const-string v1, "MOTOR_B_OUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_B_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    const-string v1, "MOTOR_C_OUT"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_C_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    const-string v1, "MOTOR_D_OUT"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_D_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    .line 26
    new-array v1, v5, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_A_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_B_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_C_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    aput-object v2, v1, v4

    aput-object v0, v1, v6

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ev3MotorOutputValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->ev3MotorOutputValue:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;
    .locals 1

    .line 26
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 36
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->ev3MotorOutputValue:I

    int-to-byte v0, v0

    return v0
.end method
