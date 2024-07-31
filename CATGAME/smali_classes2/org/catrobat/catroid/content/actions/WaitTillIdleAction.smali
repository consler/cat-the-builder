.class public Lorg/catrobat/catroid/content/actions/WaitTillIdleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "WaitTillIdleAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private allActorsIdle()Z
    .locals 10

    .line 40
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 41
    .local v0, "numberOfActors":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    return v1

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    .local v2, "actorsWithNoEventThreads":I
    const/4 v3, 0x0

    .line 48
    .local v3, "actorWithOnlyThisEventThread":I
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 49
    .local v5, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    .line 50
    .local v7, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v8, :cond_1

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 53
    :cond_1
    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v8, v6, :cond_2

    .line 54
    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 55
    .local v8, "sequenceAction":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v9, p0, v6}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 59
    .end local v5    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v7    # "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    .end local v8    # "sequenceAction":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    :cond_2
    goto :goto_0

    .line 60
    :cond_3
    add-int v4, v2, v3

    if-ne v0, v4, :cond_4

    move v1, v6

    :cond_4
    return v1
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WaitTillIdleAction;->allActorsIdle()Z

    move-result v0

    return v0
.end method
