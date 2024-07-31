.class public Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "LegoNxtMotorStopAction.java"


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private motorEnum:Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;)V
    .locals 0
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;

    .line 68
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;

    .line 69
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;

    .line 43
    .local v0, "nxt":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;
    if-nez v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$LegoNxtMotorStopBrick$Motor:[I

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->stopAllMovements()V

    goto :goto_0

    .line 58
    :cond_2
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorB()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 59
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorC()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 60
    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorC()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 56
    goto :goto_0

    .line 52
    :cond_4
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorB()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 53
    goto :goto_0

    .line 49
    :cond_5
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getMotorA()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;->stop()V

    .line 50
    nop

    .line 65
    :goto_0
    return-void
.end method
