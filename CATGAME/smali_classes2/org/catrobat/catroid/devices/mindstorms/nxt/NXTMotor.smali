.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
.super Ljava/lang/Object;
.source "NXTMotor.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/MindstormsMotor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;,
        Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;,
        Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorMode;,
        Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "connection"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->port:I

    .line 40
    iput-object p2, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    .line 41
    return-void
.end method

.method private setOutputState(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;Z)V
    .locals 3
    .param p1, "state"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;
    .param p2, "reply"    # Z

    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->trySetOutputState(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;Z)V
    :try_end_0
    .catch Lorg/catrobat/catroid/devices/mindstorms/MindstormsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "e":Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
    :goto_0
    return-void
.end method

.method private trySetOutputState(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;Z)V
    .locals 4
    .param p1, "state"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;
    .param p2, "reply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->SET_OUTPUT_STATE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V

    .line 65
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->port:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 66
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->getSpeed()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 67
    iget-byte v1, p1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->mode:B

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 68
    iget-object v1, p1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->regulation:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 69
    iget-byte v1, p1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->turnRatio:B

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 70
    iget-object v1, p1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->runState:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 71
    iget v1, p1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->tachoLimit:I

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(I)V

    .line 72
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->connection:Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;->send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V

    .line 79
    :goto_0
    return-void
.end method


# virtual methods
.method public move(I)V
    .locals 1
    .param p1, "speed"    # I

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->move(IIZ)V

    .line 84
    return-void
.end method

.method public move(II)V
    .locals 1
    .param p1, "speed"    # I
    .param p2, "degrees"    # I

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->move(IIZ)V

    .line 89
    return-void
.end method

.method public move(IIZ)V
    .locals 2
    .param p1, "speed"    # I
    .param p2, "degrees"    # I
    .param p3, "reply"    # Z

    .line 93
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$1;)V

    .line 94
    .local v0, "state":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->setSpeed(I)V

    .line 95
    const/4 v1, 0x7

    iput-byte v1, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->mode:B

    .line 96
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    iput-object v1, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->regulation:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    .line 97
    const/16 v1, 0x64

    iput-byte v1, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->turnRatio:B

    .line 98
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->RUNNING:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    iput-object v1, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->runState:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    .line 99
    iput p2, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->tachoLimit:I

    .line 100
    invoke-direct {p0, v0, p3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->setOutputState(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;Z)V

    .line 101
    return-void
.end method

.method public stop()V
    .locals 3

    .line 45
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$1;)V

    .line 46
    .local v0, "state":Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->setSpeed(I)V

    .line 47
    const/4 v2, 0x7

    iput-byte v2, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->mode:B

    .line 48
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    iput-object v2, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->regulation:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    .line 49
    const/16 v2, 0x64

    iput-byte v2, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->turnRatio:B

    .line 50
    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;->RUNNING:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    iput-object v2, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->runState:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRunState;

    .line 51
    iput v1, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;->tachoLimit:I

    .line 52
    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->setOutputState(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$OutputState;Z)V

    .line 53
    return-void
.end method
