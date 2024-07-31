.class public abstract Lorg/catrobat/catroid/content/actions/EventAction;
.super Lorg/catrobat/catroid/content/actions/AsynchronousAction;
.source "EventAction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventAction.kt\norg/catrobat/catroid/content/actions/EventAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1#2:49\n1819#3,2:50\n*E\n*S KotlinDebug\n*F\n+ 1 EventAction.kt\norg/catrobat/catroid/content/actions/EventAction\n*L\n38#1,2:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/EventAction;",
        "Lorg/catrobat/catroid/content/actions/AsynchronousAction;",
        "()V",
        "event",
        "Lorg/catrobat/catroid/content/EventWrapper;",
        "receivingSprites",
        "",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getReceivingSprites",
        "()Ljava/util/List;",
        "wait",
        "",
        "getWait",
        "()Z",
        "setWait",
        "(Z)V",
        "getEventId",
        "Lorg/catrobat/catroid/content/eventids/EventId;",
        "initialize",
        "",
        "isFinished",
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
.field private event:Lorg/catrobat/catroid/content/EventWrapper;

.field private wait:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEventId()Lorg/catrobat/catroid/content/eventids/EventId;
.end method

.method protected abstract getReceivingSprites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end method

.method public final getWait()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/EventAction;->wait:Z

    return v0
.end method

.method public initialize()V
    .locals 8

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EventAction;->getEventId()Lorg/catrobat/catroid/content/eventids/EventId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    nop

    .local v0, "it":Lorg/catrobat/catroid/content/eventids/EventId;
    const/4 v1, 0x0

    .line 36
    .local v1, "$i$a$-let-EventAction$initialize$1":I
    new-instance v2, Lorg/catrobat/catroid/content/EventWrapper;

    iget-boolean v3, p0, Lorg/catrobat/catroid/content/actions/EventAction;->wait:Z

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    .end local v0    # "it":Lorg/catrobat/catroid/content/eventids/EventId;
    .end local v1    # "$i$a$-let-EventAction$initialize$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/catrobat/catroid/content/actions/EventAction;->event:Lorg/catrobat/catroid/content/EventWrapper;

    .line 37
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EventAction;->getReceivingSprites()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 50
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/content/Sprite;

    .local v4, "sprite":Lorg/catrobat/catroid/content/Sprite;
    const/4 v5, 0x0

    .line 39
    .local v5, "$i$a$-forEach-EventAction$initialize$2":I
    iget-object v6, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/EventAction;->event:Lorg/catrobat/catroid/content/EventWrapper;

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/Event;

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/Look;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 40
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v5    # "$i$a$-forEach-EventAction$initialize$2":I
    goto :goto_1

    .line 42
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_1
    return-void
.end method

.method public isFinished()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/EventAction;->event:Lorg/catrobat/catroid/content/EventWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/EventWrapper;->isWaitingForSprite()Z

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final setWait(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/EventAction;->wait:Z

    return-void
.end method
