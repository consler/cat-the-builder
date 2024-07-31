.class public Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PhiroMotorMoveBackwardAction.java"


# static fields
.field private static final MAX_SPEED:I = 0x64

.field private static final MIN_SPEED:I


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private motorEnum:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private speed:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setMotorEnum(Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;)V
    .locals 0
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    .line 85
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    .line 86
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 93
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 94
    return-void
.end method

.method public setSpeed(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "speed"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 89
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->speed:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 90
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "percent"    # F

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->speed:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "speedValue":I
    goto :goto_0

    .line 54
    .end local v0    # "speedValue":I
    :catch_0
    move-exception v0

    .line 55
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v1, 0x0

    .line 56
    .local v1, "speedValue":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 59
    .end local v1    # "speedValue":I
    .local v0, "speedValue":I
    :goto_0
    if-gez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    goto :goto_1

    .line 61
    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 62
    const/16 v0, 0x64

    .line 65
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;

    .line 66
    .local v1, "phiro":Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;
    if-nez v1, :cond_2

    .line 67
    return-void

    .line 70
    :cond_2
    sget-object v2, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$PhiroMotorMoveBackwardBrick$Motor:[I

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->motorEnum:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    goto :goto_2

    .line 78
    :cond_3
    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->moveRightMotorBackward(I)V

    .line 79
    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->moveLeftMotorBackward(I)V

    goto :goto_2

    .line 75
    :cond_4
    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->moveRightMotorBackward(I)V

    .line 76
    goto :goto_2

    .line 72
    :cond_5
    invoke-interface {v1, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->moveLeftMotorBackward(I)V

    .line 73
    nop

    .line 82
    :goto_2
    return-void
.end method
