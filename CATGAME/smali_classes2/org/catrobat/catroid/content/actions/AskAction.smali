.class public final Lorg/catrobat/catroid/content/actions/AskAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "AskAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020 H\u0016J\u000e\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006%"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AskAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "answerReceived",
        "",
        "answerVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "getAnswerVariable",
        "()Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "setAnswerVariable",
        "(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V",
        "questionAsked",
        "getQuestionAsked",
        "()Z",
        "setQuestionAsked",
        "(Z)V",
        "questionFormula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getQuestionFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setQuestionFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "act",
        "delta",
        "",
        "askQuestion",
        "",
        "restart",
        "setAnswerText",
        "answer",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private answerReceived:Z

.field private answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

.field private questionAsked:Z

.field private questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final askQuestion()V
    .locals 5

    .line 41
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 42
    const-string v0, ""

    .line 43
    .local v0, "question":Ljava/lang/String;
    nop

    .line 44
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/AskAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    nop

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 48
    nop

    .line 46
    const-string v3, "formula interpretation in ask brick failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v1    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    nop

    .line 52
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;->ASK_DIALOG:Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v3, 0x2

    aput-object v0, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    .local v1, "params":Ljava/util/ArrayList;
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 54
    iput-boolean v2, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionAsked:Z

    .line 55
    return-void

    .line 41
    .end local v0    # "question":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/ArrayList;
    :cond_1
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 64
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionAsked:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AskAction;->askQuestion()V

    .line 67
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->answerReceived:Z

    return v0
.end method

.method public final getAnswerVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public final getQuestionAsked()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionAsked:Z

    return v0
.end method

.method public final getQuestionFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public restart()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionAsked:Z

    .line 72
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->answerReceived:Z

    .line 73
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 74
    return-void
.end method

.method public final setAnswerText(Ljava/lang/String;)V
    .locals 1
    .param p1, "answer"    # Ljava/lang/String;

    const-string v0, "answer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskAction;->answerReceived:Z

    .line 61
    return-void

    .line 58
    :cond_0
    return-void
.end method

.method public final setAnswerVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AskAction;->answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method

.method public final setQuestionAsked(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 38
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionAsked:Z

    return-void
.end method

.method public final setQuestionFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AskAction;->questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AskAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method
