.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;
.source "AfterAction.java"


# instance fields
.field private waitForActions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method protected delegate(F)Z
    .locals 6
    .param p1, "delta"    # F

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 40
    .local v0, "currentActions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 42
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 43
    .local v3, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v4

    .line 44
    .local v4, "index":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 41
    .end local v3    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v4    # "index":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_3

    const/4 v1, 0x0

    return v1

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v1

    return v1
.end method

.method public restart()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->restart()V

    .line 35
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 36
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 29
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->waitForActions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 31
    return-void
.end method
