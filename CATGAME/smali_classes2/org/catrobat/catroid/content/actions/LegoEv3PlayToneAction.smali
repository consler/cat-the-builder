.class public Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "LegoEv3PlayToneAction.java"


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private hertz:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private volumeInPercent:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 45
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setDurationInSeconds(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 89
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 90
    return-void
.end method

.method public setHertz(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "hertz"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 85
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->hertz:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 86
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 97
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 98
    return-void
.end method

.method public setVolumeInPercent(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "volumeInPercent"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 93
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->volumeInPercent:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 94
    return-void
.end method

.method protected update(F)V
    .locals 6
    .param p1, "percent"    # F

    .line 54
    const-string v0, "Formula interpretation for this specific Brick failed."

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->hertz:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v1, "hertzInterpretation":I
    goto :goto_0

    .line 55
    .end local v1    # "hertzInterpretation":I
    :catch_0
    move-exception v1

    .line 56
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v2, 0x0

    .line 57
    .local v2, "hertzInterpretation":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 61
    .end local v2    # "hertzInterpretation":I
    .local v1, "hertzInterpretation":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .local v2, "durationInterpretation":F
    goto :goto_1

    .line 62
    .end local v2    # "durationInterpretation":F
    :catch_1
    move-exception v2

    .line 63
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v3, 0x0

    .line 64
    .local v3, "durationInterpretation":F
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 68
    .end local v3    # "durationInterpretation":F
    .local v2, "durationInterpretation":F
    :goto_1
    :try_start_2
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->volumeInPercent:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    .local v0, "volumeInterpretation":I
    goto :goto_2

    .line 69
    .end local v0    # "volumeInterpretation":I
    :catch_2
    move-exception v3

    .line 70
    .local v3, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v4, 0x0

    .line 71
    .local v4, "volumeInterpretation":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 74
    .end local v3    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    .end local v4    # "volumeInterpretation":I
    .restart local v0    # "volumeInterpretation":I
    :goto_2
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v4, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;

    .line 75
    .local v3, "ev3":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
    if-nez v3, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 81
    .local v4, "durationInMs":I
    mul-int/lit8 v5, v1, 0x64

    invoke-interface {v3, v5, v4, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;->playTone(III)V

    .line 82
    return-void
.end method
