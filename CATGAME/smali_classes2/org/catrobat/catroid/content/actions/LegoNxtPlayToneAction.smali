.class public Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "LegoNxtPlayToneAction.java"


# instance fields
.field private btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private hertz:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 44
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    return-void
.end method


# virtual methods
.method public setDurationInSeconds(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 80
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 81
    return-void
.end method

.method public setHertz(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "hertz"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->hertz:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 77
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 84
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 85
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 52
    const-string v0, "Formula interpretation for this specific Brick failed."

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->hertz:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v1, "hertzInterpretation":I
    goto :goto_0

    .line 53
    .end local v1    # "hertzInterpretation":I
    :catch_0
    move-exception v1

    .line 54
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v2, 0x0

    .line 55
    .local v2, "hertzInterpretation":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 59
    .end local v2    # "hertzInterpretation":I
    .local v1, "hertzInterpretation":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->durationInSeconds:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .local v0, "durationInterpretation":F
    goto :goto_1

    .line 60
    .end local v0    # "durationInterpretation":F
    :catch_1
    move-exception v2

    .line 61
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v3, 0x0

    .line 62
    .local v3, "durationInterpretation":F
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 65
    .end local v2    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    .end local v3    # "durationInterpretation":F
    .restart local v0    # "durationInterpretation":F
    :goto_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->btService:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v3, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;

    .line 66
    .local v2, "nxt":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;
    if-nez v2, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 72
    .local v3, "durationInMs":I
    mul-int/lit8 v4, v1, 0x64

    invoke-interface {v2, v4, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->playTone(II)V

    .line 73
    return-void
.end method
