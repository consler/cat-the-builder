.class public abstract Lorg/catrobat/catroid/content/actions/PocketPaintAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "PocketPaintAction.kt"

# interfaces
.implements Lorg/catrobat/catroid/stage/StageActivity$IntentListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020%2\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010&\u001a\u00020%H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/PocketPaintAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "Lorg/catrobat/catroid/stage/StageActivity$IntentListener;",
        "()V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "nextLookAction",
        "Lorg/catrobat/catroid/content/actions/SetNextLookAction;",
        "getNextLookAction",
        "()Lorg/catrobat/catroid/content/actions/SetNextLookAction;",
        "setNextLookAction",
        "(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V",
        "questionAsked",
        "",
        "getQuestionAsked",
        "()Z",
        "setQuestionAsked",
        "(Z)V",
        "responseReceived",
        "getResponseReceived",
        "setResponseReceived",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "xstreamSerializer",
        "Lorg/catrobat/catroid/io/XstreamSerializer;",
        "getXstreamSerializer",
        "()Lorg/catrobat/catroid/io/XstreamSerializer;",
        "setXstreamSerializer",
        "(Lorg/catrobat/catroid/io/XstreamSerializer;)V",
        "",
        "restart",
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
.field private formula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

.field private questionAsked:Z

.field private responseReceived:Z

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 38
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v0

    const-string v1, "XstreamSerializer.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    return-void
.end method


# virtual methods
.method public final getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method protected final getNextLookAction()Lorg/catrobat/catroid/content/actions/SetNextLookAction;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    return-object v0
.end method

.method protected final getQuestionAsked()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->questionAsked:Z

    return v0
.end method

.method protected final getResponseReceived()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->responseReceived:Z

    return v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method protected final getXstreamSerializer()Lorg/catrobat/catroid/io/XstreamSerializer;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    return-object v0
.end method

.method public final nextLookAction(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V
    .locals 1
    .param p1, "nextLookAction"    # Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    const-string v0, "nextLookAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 48
    return-void
.end method

.method public restart()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->questionAsked:Z

    .line 42
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->responseReceived:Z

    .line 43
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 44
    return-void
.end method

.method public final setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method protected final setNextLookAction(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    return-void
.end method

.method protected final setQuestionAsked(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 36
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->questionAsked:Z

    return-void
.end method

.method protected final setResponseReceived(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 35
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->responseReceived:Z

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method protected final setXstreamSerializer(Lorg/catrobat/catroid/io/XstreamSerializer;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/io/XstreamSerializer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PocketPaintAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    return-void
.end method
