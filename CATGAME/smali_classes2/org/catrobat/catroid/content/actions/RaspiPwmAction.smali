.class public Lorg/catrobat/catroid/content/actions/RaspiPwmAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "RaspiPwmAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private frequencyInterpretation:D

.field private percentageInterpretation:D

.field private pinInterpretation:I

.field private pinNumberFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private pwmFrequencyFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private pwmPercentageFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->TAG:Ljava/lang/String;

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

    .line 53
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pinNumberFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pinNumberFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 54
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pinInterpretation:I
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    iput v0, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pinInterpretation:I

    .line 57
    sget-object v0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->TAG:Ljava/lang/String;

    const-string v2, "Formula interpretation for this specific Brick failed. (pin)"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    const-wide/16 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pwmFrequencyFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pwmFrequencyFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 63
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v2

    .line 62
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->frequencyInterpretation:D
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    goto :goto_3

    .line 64
    :catch_1
    move-exception v2

    .line 65
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    iput-wide v0, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->frequencyInterpretation:D

    .line 66
    sget-object v3, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->TAG:Ljava/lang/String;

    const-string v4, "Formula interpretation for this specific Brick failed. (frequency)"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v2    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_3
    :try_start_2
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pwmPercentageFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pwmPercentageFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 72
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v2

    .line 71
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->percentageInterpretation:D
    :try_end_2
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    goto :goto_5

    .line 73
    :catch_2
    move-exception v2

    .line 74
    .restart local v2    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    iput-wide v0, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->percentageInterpretation:D

    .line 75
    sget-object v0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->TAG:Ljava/lang/String;

    const-string v1, "Formula interpretation for this specific Brick failed. (percentage)"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v2    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_5
    return-void
.end method

.method public setPinNumberFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "pinNumberFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 98
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pinNumberFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 99
    return-void
.end method

.method public setPwmFrequencyFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "pwmFrequencyFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 102
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pwmFrequencyFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 103
    return-void
.end method

.method public setPwmPercentageFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "pwmPercentageFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 106
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pwmPercentageFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 107
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 94
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 95
    return-void
.end method

.method protected update(F)V
    .locals 7
    .param p1, "percent"    # F

    .line 83
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 85
    .local v0, "connection":Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPi pwm pin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pinInterpretation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->percentageInterpretation:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "%, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->frequencyInterpretation:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v2, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->pinInterpretation:I

    iget-wide v3, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->frequencyInterpretation:D

    iget-wide v5, p0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->percentageInterpretation:D

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->setPWM(IDD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RPi: exception during setPwm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
