.class public final Lorg/catrobat/catroid/content/actions/AskSpeechAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "AskSpeechAction.kt"

# interfaces
.implements Lorg/catrobat/catroid/stage/StageActivity$IntentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/AskSpeechAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 *2\u00020\u00012\u00020\u0002:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0008\u0010\"\u001a\u00020\u001fH\u0016J\u0018\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001fH\u0016J\u0008\u0010\'\u001a\u00020\u001dH\u0016J\u000e\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020!R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006+"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AskSpeechAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "Lorg/catrobat/catroid/stage/StageActivity$IntentListener;",
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
        "createRecognitionIntent",
        "Landroid/content/Intent;",
        "question",
        "",
        "getTargetIntent",
        "onIntentResult",
        "resultCode",
        "",
        "data",
        "restart",
        "setAnswerText",
        "answer",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/content/actions/AskSpeechAction$Companion;

.field private static final TAG:Ljava/lang/String; = "AskSpeechAction"


# instance fields
.field private answerReceived:Z

.field private answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

.field private questionAsked:Z

.field private questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/AskSpeechAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/AskSpeechAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->Companion:Lorg/catrobat/catroid/content/actions/AskSpeechAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final askQuestion()V
    .locals 5

    .line 46
    nop

    .line 49
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 47
    nop

    .line 48
    new-array v2, v1, [Lorg/catrobat/catroid/content/actions/AskSpeechAction;

    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/content/actions/AskSpeechAction;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    nop

    .line 50
    :goto_0
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->questionAsked:Z

    .line 51
    return-void
.end method

.method private final createRecognitionIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "question"    # Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$a$-also-AskSpeechAction$createRecognitionIntent$1":I
    nop

    .line 56
    nop

    .line 57
    nop

    .line 55
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "free_form"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    nop

    .line 60
    nop

    .line 61
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getListeningLanguageSensor()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v4, "android.speech.extra.LANGUAGE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 64
    const-string v3, "android.speech.extra.PROMPT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :cond_0
    nop

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "$i$a$-also-AskSpeechAction$createRecognitionIntent$1":I
    nop

    .line 66
    return-object v0
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 76
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->questionAsked:Z

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->askQuestion()V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->answerReceived:Z

    return v0
.end method

.method public final getAnswerVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public final getQuestionFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 4

    .line 89
    const-string v0, ""

    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const-string v2, "AskSpeechAction"

    const-string v3, "Formula interpretation in ask brick failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    nop

    .line 89
    .end local v1    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_0
    :goto_0
    nop

    .line 95
    .local v0, "question":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->createRecognitionIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public onIntentResult(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const/4 v0, -0x1

    const-string v1, ""

    const-string v2, "AskSpeechAction"

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled speech recognizer resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->setAnswerText(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "matches":Ljava/util/ArrayList;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Speech recognition results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->setAnswerText(Ljava/lang/String;)V

    .line 107
    .end local v0    # "matches":Ljava/util/ArrayList;
    :goto_0
    nop

    .line 108
    return-void
.end method

.method public restart()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->questionAsked:Z

    .line 84
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->answerReceived:Z

    .line 85
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 86
    return-void
.end method

.method public final setAnswerText(Ljava/lang/String;)V
    .locals 2
    .param p1, "answer"    # Ljava/lang/String;

    const-string v0, "answer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    .local v0, "$this$apply":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    const/4 v1, 0x0

    .line 70
    .local v1, "$i$a$-apply-AskSpeechAction$setAnswerText$1":I
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 71
    nop

    .line 69
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v1    # "$i$a$-apply-AskSpeechAction$setAnswerText$1":I
    nop

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->answerReceived:Z

    .line 73
    return-void
.end method

.method public final setAnswerVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->answerVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method

.method public final setQuestionFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->questionFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method
