.class public Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "RaspiSendDigitalValueAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pin:I

.field private pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 5

    .line 52
    const-string v0, "Formula interpretation for this specific Brick failed."

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 53
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 58
    .local v2, "pinNumberInterpretation":Ljava/lang/Integer;
    goto :goto_1

    .line 54
    .end local v2    # "pinNumberInterpretation":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 56
    .local v3, "pinNumberInterpretation":Ljava/lang/Integer;
    sget-object v4, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 61
    .end local v3    # "pinNumberInterpretation":Ljava/lang/Integer;
    .local v2, "pinNumberInterpretation":Ljava/lang/Integer;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v0
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 66
    .local v0, "pinValueInterpretation":Z
    goto :goto_2

    .line 62
    .end local v0    # "pinValueInterpretation":Z
    :catch_1
    move-exception v1

    .line 63
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v3, 0x0

    .line 64
    .local v3, "pinValueInterpretation":Z
    sget-object v4, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 68
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    .end local v3    # "pinValueInterpretation":Z
    .restart local v0    # "pinValueInterpretation":Z
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pin:I

    .line 69
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->value:Z

    .line 70
    return-void
.end method

.method public setPinNumber(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "newPinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 88
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 89
    return-void
.end method

.method public setPinValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "newpinValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pinValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 93
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 84
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 85
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 74
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 76
    .local v0, "connection":Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPi set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v1, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->pin:I

    iget-boolean v2, p0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->value:Z

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->setPin(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RPi: exception during setPin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
