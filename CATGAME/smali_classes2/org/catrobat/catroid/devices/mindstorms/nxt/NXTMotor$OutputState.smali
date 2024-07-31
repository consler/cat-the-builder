.class Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;
.super Ljava/lang/Object;
.source "NXTMotor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputState"
.end annotation


# instance fields
.field public mode:B

.field public regulation:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

.field public runState:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

.field private speed:B

.field public tachoLimit:I

.field public turnRatio:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$1;

    .line 103
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed()B
    .locals 1

    .line 127
    iget-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->speed:B

    return v0
.end method

.method public setSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    .line 113
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 114
    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->speed:B

    goto :goto_0

    .line 115
    :cond_0
    const/16 v1, -0x64

    if-ge p1, v1, :cond_1

    .line 116
    iput-byte v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->speed:B

    goto :goto_0

    .line 117
    :cond_1
    iget-byte v2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->turnRatio:B

    if-le v2, v0, :cond_2

    .line 118
    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->turnRatio:B

    goto :goto_0

    .line 119
    :cond_2
    if-ge v2, v1, :cond_3

    .line 120
    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->turnRatio:B

    goto :goto_0

    .line 122
    :cond_3
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->speed:B

    .line 124
    :goto_0
    return-void
.end method
