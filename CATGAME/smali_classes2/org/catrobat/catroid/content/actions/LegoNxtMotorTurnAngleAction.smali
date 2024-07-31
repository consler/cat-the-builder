.class public Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "LegoNxtMotorTurnAngleAction.java"


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private degrees:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private motorEnum:Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 45
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setDegrees(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "degrees"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 91
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->degrees:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 92
    return-void
.end method

.method public setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;)V
    .locals 0
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;

    .line 87
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;

    .line 88
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 95
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 96
    return-void
.end method

.method protected update(F)V
    .locals 6
    .param p1, "percent"    # F

    .line 51
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->degrees:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, "degreesValue":I
    goto :goto_0

    .line 52
    .end local v0    # "degreesValue":I
    :catch_0
    move-exception v0

    .line 53
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v1, 0x0

    .line 54
    .local v1, "degreesValue":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 57
    .end local v1    # "degreesValue":I
    .local v0, "degreesValue":I
    :goto_0
    move v1, v0

    .line 58
    .local v1, "tmpAngle":I
    const/4 v2, 0x1

    .line 59
    .local v2, "direction":I
    if-gez v0, :cond_0

    .line 60
    const/4 v2, -0x1

    .line 61
    mul-int/lit8 v3, v0, -0x2

    add-int v1, v0, v3

    .line 64
    :cond_0
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v4, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;

    .line 65
    .local v3, "nxt":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;
    if-nez v3, :cond_1

    .line 66
    return-void

    .line 69
    :cond_1
    sget-object v4, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$LegoNxtMotorTurnAngleBrick$Motor:[I

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    invoke-interface {v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorB()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x1e

    invoke-virtual {v4, v5, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->move(II)V

    .line 81
    invoke-interface {v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorC()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x1e

    invoke-virtual {v4, v5, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->move(II)V

    goto :goto_1

    .line 77
    :cond_3
    invoke-interface {v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorC()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x1e

    invoke-virtual {v4, v5, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->move(II)V

    .line 78
    goto :goto_1

    .line 74
    :cond_4
    invoke-interface {v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorB()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x1e

    invoke-virtual {v4, v5, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->move(II)V

    .line 75
    goto :goto_1

    .line 71
    :cond_5
    invoke-interface {v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorA()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x1e

    invoke-virtual {v4, v5, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->move(II)V

    .line 72
    nop

    .line 84
    :goto_1
    return-void
.end method
