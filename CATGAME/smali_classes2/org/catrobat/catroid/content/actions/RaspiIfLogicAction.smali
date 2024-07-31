.class public Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RaspiIfLogicAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private isInitialized:Z

.field private pin:I

.field private pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->isInitialized:Z

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 67
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->isInitialized:Z

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->begin()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->isInitialized:Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->readIfConditionValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    return v0

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    return v0
.end method

.method protected begin()V
    .locals 4

    .line 55
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 56
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 61
    .local v0, "pinNumberInterpretation":Ljava/lang/Integer;
    goto :goto_1

    .line 57
    .end local v0    # "pinNumberInterpretation":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 59
    .restart local v0    # "pinNumberInterpretation":Ljava/lang/Integer;
    sget-object v2, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->TAG:Ljava/lang/String;

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->pin:I

    .line 63
    return-void
.end method

.method protected readIfConditionValue()Z
    .locals 5

    .line 80
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 82
    .local v0, "connection":Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPi get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->pin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->pin:I

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->getPin(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RPi: exception during getPin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public restart()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->isInitialized:Z

    .line 95
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 96
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 112
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 114
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 115
    return-void
.end method

.method public setElseAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .param p1, "elseAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 107
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 108
    return-void
.end method

.method public setIfAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .param p1, "ifAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 103
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 104
    return-void
.end method

.method public setPinNumber(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->pinNumber:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 49
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 99
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 100
    return-void
.end method
