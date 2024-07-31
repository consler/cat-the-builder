.class public Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;
.super Lorg/catrobat/catroid/content/actions/SetLookAction;
.source "SetLookByIndexAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00108V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;",
        "Lorg/catrobat/catroid/content/actions/SetLookAction;",
        "()V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "value",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sprite",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "getEventId",
        "Lorg/catrobat/catroid/content/eventids/EventId;",
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

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SetLookAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventId()Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 4

    .line 42
    nop

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->scope:Lorg/catrobat/catroid/content/Scope;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 45
    .local v0, "lookPosition":I
    :goto_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/LookData;

    :cond_3
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setLookData(Lorg/catrobat/catroid/common/LookData;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "lookPosition":I
    goto :goto_3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Formula Interpretation for look index failed"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_4
    :goto_3
    nop

    .line 50
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/SetLookAction;->getEventId()Lorg/catrobat/catroid/content/eventids/EventId;

    move-result-object v0

    return-object v0
.end method

.method public final getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 35
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/SetLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public final setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "value"    # Lorg/catrobat/catroid/content/Sprite;

    .line 37
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/actions/SetLookAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 38
    return-void
.end method
