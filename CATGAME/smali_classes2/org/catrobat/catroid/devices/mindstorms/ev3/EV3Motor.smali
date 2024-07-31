.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;
.super Ljava/lang/Object;
.source "EV3Motor.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/MindstormsMotor;


# instance fields
.field private outputField:B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_D_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->getByte()B

    move-result v0

    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;->outputField:B

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_C_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->getByte()B

    move-result v0

    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;->outputField:B

    .line 42
    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_B_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->getByte()B

    move-result v0

    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;->outputField:B

    .line 39
    goto :goto_0

    .line 35
    :cond_3
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->MOTOR_A_OUT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3MotorOutputByteCode;->getByte()B

    move-result v0

    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;->outputField:B

    .line 36
    nop

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method public getOutputField()B
    .locals 1

    .line 67
    iget-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;->outputField:B

    return v0
.end method

.method public move(I)V
    .locals 1
    .param p1, "speed"    # I

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Motor;->move(IIZ)V

    .line 56
    return-void
.end method

.method public move(II)V
    .locals 0
    .param p1, "speed"    # I
    .param p2, "degrees"    # I

    .line 60
    return-void
.end method

.method public move(IIZ)V
    .locals 0
    .param p1, "speed"    # I
    .param p2, "degrees"    # I
    .param p3, "reply"    # Z

    .line 64
    return-void
.end method

.method public stop()V
    .locals 0

    .line 51
    return-void
.end method
