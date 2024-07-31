.class public Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PhiroMotorStopAction.java"


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private motorEnum:Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setMotorEnum(Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;)V
    .locals 0
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;

    .line 62
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;

    .line 63
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;

    .line 44
    .local v0, "phiro":Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;
    if-nez v0, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$PhiroMotorStopBrick$Motor:[I

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->stopAllMovements()V

    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->stopRightMotor()V

    .line 54
    goto :goto_0

    .line 50
    :cond_3
    invoke-interface {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->stopLeftMotor()V

    .line 51
    nop

    .line 59
    :goto_0
    return-void
.end method
