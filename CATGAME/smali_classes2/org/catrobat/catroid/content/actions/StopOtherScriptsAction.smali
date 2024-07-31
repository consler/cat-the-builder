.class public Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "StopOtherScriptsAction.java"


# instance fields
.field private currentScript:Lorg/catrobat/catroid/content/Script;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private getOtherThreads(Lorg/catrobat/catroid/content/Look;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .param p1, "look"    # Lorg/catrobat/catroid/content/Look;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Look;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Look;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 53
    .local v0, "otherThreads":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 56
    .local v2, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    instance-of v3, v2, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->currentScript:Lorg/catrobat/catroid/content/Script;

    if-ne v3, v4, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 59
    .end local v2    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    goto :goto_0

    .line 60
    :cond_1
    return-object v0
.end method


# virtual methods
.method public act(F)Z
    .locals 3
    .param p1, "delta"    # F

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lorg/catrobat/catroid/content/Look;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->releaseAllPointers()V

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lorg/catrobat/catroid/content/Look;

    .line 47
    .local v0, "look":Lorg/catrobat/catroid/content/Look;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->getOtherThreads(Lorg/catrobat/catroid/content/Look;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/Look;->stopThreads(Lcom/badlogic/gdx/utils/Array;)V

    .line 48
    return v1

    .line 43
    .end local v0    # "look":Lorg/catrobat/catroid/content/Look;
    :cond_1
    :goto_0
    return v1
.end method

.method public setCurrentScript(Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "currentScript"    # Lorg/catrobat/catroid/content/Script;

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->currentScript:Lorg/catrobat/catroid/content/Script;

    .line 65
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 68
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 69
    return-void
.end method
