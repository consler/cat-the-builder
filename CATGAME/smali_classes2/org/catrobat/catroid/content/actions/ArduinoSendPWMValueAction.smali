.class public Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ArduinoSendPWMValueAction.java"


# instance fields
.field private pin:I

.field private pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private restart:Z

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->restart:Z

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 6

    .line 55
    const-string v0, "Formula interpretation for this specific Brick failed."

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 56
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 61
    .local v2, "pinNumberInterpretation":Ljava/lang/Integer;
    goto :goto_1

    .line 57
    .end local v2    # "pinNumberInterpretation":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 58
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 59
    .local v3, "pinNumberInterpretation":Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 64
    .end local v3    # "pinNumberInterpretation":Ljava/lang/Integer;
    .local v2, "pinNumberInterpretation":Ljava/lang/Integer;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 65
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    nop

    .line 70
    .local v0, "pinValueInterpretation":Ljava/lang/Integer;
    goto :goto_3

    .line 66
    .end local v0    # "pinValueInterpretation":Ljava/lang/Integer;
    :catch_1
    move-exception v3

    .line 67
    .local v3, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 68
    .local v4, "pinValueInterpretation":Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 72
    .end local v3    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    .end local v4    # "pinValueInterpretation":Ljava/lang/Integer;
    .restart local v0    # "pinValueInterpretation":Ljava/lang/Integer;
    :goto_3
    iget-boolean v3, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->restart:Z

    if-nez v3, :cond_2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pin:I

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->value:I

    .line 78
    :cond_2
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->restart:Z

    .line 79
    return-void
.end method

.method public setPinNumber(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "newPinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 94
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 95
    return-void
.end method

.method public setPinValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "newpinValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 98
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 99
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 90
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 91
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 83
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->ARDUINO:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/arduino/Arduino;

    .line 84
    .local v0, "arduino":Lorg/catrobat/catroid/devices/arduino/Arduino;
    if-eqz v0, :cond_0

    .line 85
    iget v1, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->pin:I

    iget v2, p0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->value:I

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/devices/arduino/Arduino;->setAnalogArduinoPin(II)V

    .line 87
    :cond_0
    return-void
.end method
