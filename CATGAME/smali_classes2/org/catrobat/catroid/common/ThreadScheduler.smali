.class public Lorg/catrobat/catroid/common/ThreadScheduler;
.super Ljava/lang/Object;
.source "ThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/common/ThreadScheduler$SchedulerState;
    }
.end annotation


# static fields
.field public static final RUNNING:I = 0x0

.field public static final SUSPENDED:I = 0x1


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private startQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private stopQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->startQueue:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->stopQueue:Lcom/badlogic/gdx/utils/Array;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->state:I

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 57
    return-void
.end method

.method private removeThreadsWithEqualScriptFromStartQueue(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 4
    .param p1, "sequenceAction"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->startQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 102
    .local v1, "action":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 103
    instance-of v2, v1, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    if-eqz v2, :cond_0

    .line 104
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;->notifyWaiter()V

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 108
    .end local v1    # "action":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    :cond_1
    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method private runThreadsForOneTick(Lcom/badlogic/gdx/utils/Array;F)V
    .locals 3
    .param p2, "delta"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;F)V"
        }
    .end annotation

    .line 75
    .local p1, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 76
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 77
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget v2, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->state:I

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->stopQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private startThreadsInStartQueue()V
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->startQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 68
    .local v1, "thread":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->restart()V

    .line 69
    iget-object v2, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 70
    .end local v1    # "thread":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->startQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 72
    return-void
.end method

.method private stopThreadsInStopQueue(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->stopQueue:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->stopQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 86
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    instance-of v2, v1, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    if-eqz v2, :cond_0

    .line 87
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;->notifyWaiter()V

    .line 89
    .end local v1    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->stopQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 91
    return-void
.end method


# virtual methods
.method public haveAllThreadsFinished()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->startQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "schedulerState"    # I

    .line 128
    iput p1, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->state:I

    .line 129
    return-void
.end method

.method public startThread(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 1
    .param p1, "sequenceAction"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 94
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/common/ThreadScheduler;->removeThreadsWithEqualScriptFromStartQueue(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->startQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public stopThreads(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->stopQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 121
    return-void
.end method

.method public stopThreadsWithScript(Lorg/catrobat/catroid/content/Script;)V
    .locals 3
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 113
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    instance-of v2, v1, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 114
    iget-object v2, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->stopQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 116
    .end local v1    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public tick(F)V
    .locals 1
    .param p1, "delta"    # F

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/common/ThreadScheduler;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 61
    .local v0, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    invoke-direct {p0}, Lorg/catrobat/catroid/common/ThreadScheduler;->startThreadsInStartQueue()V

    .line 62
    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/common/ThreadScheduler;->runThreadsForOneTick(Lcom/badlogic/gdx/utils/Array;F)V

    .line 63
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/common/ThreadScheduler;->stopThreadsInStopQueue(Lcom/badlogic/gdx/utils/Array;)V

    .line 64
    return-void
.end method
