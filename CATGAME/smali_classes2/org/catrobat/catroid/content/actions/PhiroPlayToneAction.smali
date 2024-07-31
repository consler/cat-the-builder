.class public Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PhiroPlayToneAction.java"


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private toneEnum:Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;


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

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setDurationInSeconds(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 93
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 94
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 97
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 98
    return-void
.end method

.method public setSelectedTone(Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;)V
    .locals 0
    .param p1, "toneEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;

    .line 89
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->toneEnum:Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;

    .line 90
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "percent"    # F

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v0, "durationInterpretation":I
    goto :goto_0

    .line 53
    .end local v0    # "durationInterpretation":I
    :catch_0
    move-exception v0

    .line 54
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v1, 0x0

    .line 55
    .local v1, "durationInterpretation":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 58
    .end local v1    # "durationInterpretation":I
    .local v0, "durationInterpretation":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;

    .line 59
    .local v1, "phiro":Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;
    if-nez v1, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    sget-object v2, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction$1;->$SwitchMap$org$catrobat$catroid$content$bricks$PhiroPlayToneBrick$Tone:[I

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->toneEnum:Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 83
    :pswitch_0
    const/16 v2, 0x1ee

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->playTone(II)V

    goto :goto_1

    .line 80
    :pswitch_1
    const/16 v2, 0x1b8

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->playTone(II)V

    .line 81
    goto :goto_1

    .line 77
    :pswitch_2
    const/16 v2, 0x188

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->playTone(II)V

    .line 78
    goto :goto_1

    .line 74
    :pswitch_3
    const/16 v2, 0x15d

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->playTone(II)V

    .line 75
    goto :goto_1

    .line 71
    :pswitch_4
    const/16 v2, 0x14a

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->playTone(II)V

    .line 72
    goto :goto_1

    .line 68
    :pswitch_5
    const/16 v2, 0x126

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->playTone(II)V

    .line 69
    goto :goto_1

    .line 65
    :pswitch_6
    const/16 v2, 0x106

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->playTone(II)V

    .line 66
    nop

    .line 86
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
