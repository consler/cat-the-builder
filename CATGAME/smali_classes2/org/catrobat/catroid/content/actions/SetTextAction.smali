.class public Lorg/catrobat/catroid/content/actions/SetTextAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetTextAction.java"


# instance fields
.field private actor:Lorg/catrobat/catroid/stage/TextActor;

.field private endX:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private endY:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private text:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 5

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->endX:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    .local v1, "posX":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->endY:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 50
    .local v2, "posY":I
    new-instance v3, Lorg/catrobat/catroid/stage/TextActor;

    invoke-direct {v3, v0, v1, v2}, Lorg/catrobat/catroid/stage/TextActor;-><init>(Ljava/lang/String;II)V

    iput-object v3, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->actor:Lorg/catrobat/catroid/stage/TextActor;

    .line 51
    sget-object v3, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->actor:Lorg/catrobat/catroid/stage/TextActor;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/stage/StageListener;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "string":Ljava/lang/String;
    .end local v1    # "posX":I
    .end local v2    # "posY":I
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    return-void
.end method

.method public setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 73
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->endX:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 74
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->endY:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 75
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 83
    return-void
.end method

.method public setText(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 78
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 79
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "percent"    # F

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->endX:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 62
    .local v1, "posX":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->endY:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 64
    .local v2, "posY":I
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->actor:Lorg/catrobat/catroid/stage/TextActor;

    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/stage/TextActor;->setText(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->actor:Lorg/catrobat/catroid/stage/TextActor;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/stage/TextActor;->setPosX(I)V

    .line 66
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetTextAction;->actor:Lorg/catrobat/catroid/stage/TextActor;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/stage/TextActor;->setPosY(I)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "posX":I
    .end local v2    # "posY":I
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    return-void
.end method
