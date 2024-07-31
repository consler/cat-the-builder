.class public Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "LegoEv3MotorMoveAction.java"


# static fields
.field private static final MAX_SPEED:I = 0x64

.field private static final MIN_SPEED:I = -0x64


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private motorEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private speed:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 44
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;)V
    .locals 0
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    .line 96
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    .line 97
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 104
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 105
    return-void
.end method

.method public setSpeed(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "speed"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 100
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->speed:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 101
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->speed:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, "speedValue":I
    goto :goto_0

    .line 56
    .end local v0    # "speedValue":I
    :catch_0
    move-exception v0

    .line 57
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v1, 0x0

    .line 58
    .local v1, "speedValue":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 61
    .end local v1    # "speedValue":I
    .local v0, "speedValue":I
    :goto_0
    const/16 v1, -0x64

    if-ge v0, v1, :cond_0

    .line 62
    const/16 v0, -0x64

    goto :goto_1

    .line 63
    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 64
    const/16 v0, 0x64

    .line 67
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;

    .line 68
    .local v1, "ev3":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
    if-nez v1, :cond_2

    .line 69
    return-void

    .line 72
    :cond_2
    const/4 v2, 0x0

    .line 74
    .local v2, "outputField":B
    sget-object v3, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$LegoEv3MotorMoveBrick$Motor:[I

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 88
    :cond_3
    const/4 v2, 0x6

    goto :goto_2

    .line 85
    :cond_4
    const/16 v2, 0x8

    .line 86
    goto :goto_2

    .line 82
    :cond_5
    const/4 v2, 0x4

    .line 83
    goto :goto_2

    .line 79
    :cond_6
    const/4 v2, 0x2

    .line 80
    goto :goto_2

    .line 76
    :cond_7
    const/4 v2, 0x1

    .line 77
    nop

    .line 92
    :goto_2
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;->moveMotorSpeed(BII)V

    .line 93
    return-void
.end method
