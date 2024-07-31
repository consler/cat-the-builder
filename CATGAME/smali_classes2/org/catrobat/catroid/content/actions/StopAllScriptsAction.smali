.class public Lorg/catrobat/catroid/content/actions/StopAllScriptsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "StopAllScriptsAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 5
    .param p1, "delta"    # F

    .line 37
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 38
    .local v0, "stageActors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 39
    .local v2, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v3, v2, Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_0

    .line 40
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/Look;

    .line 41
    .local v3, "look":Lorg/catrobat/catroid/content/Look;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->stopThreads(Lcom/badlogic/gdx/utils/Array;)V

    .line 43
    .end local v2    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v3    # "look":Lorg/catrobat/catroid/content/Look;
    :cond_0
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
