.class public final Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;
.super Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
.source "ScriptSequenceActionWithWaiter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScriptSequenceActionWithWaiter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScriptSequenceActionWithWaiter.kt\norg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1819#2,2:47\n*E\n*S KotlinDebug\n*F\n+ 1 ScriptSequenceActionWithWaiter.kt\norg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter\n*L\n39#1,2:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "thread",
        "event",
        "Lorg/catrobat/catroid/content/EventWrapper;",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;Lorg/catrobat/catroid/content/EventWrapper;Lorg/catrobat/catroid/content/Sprite;)V",
        "waiter",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;",
        "notifyWaiter",
        "",
        "Waiter",
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
.field private final waiter:Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;Lorg/catrobat/catroid/content/EventWrapper;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 6
    .param p1, "thread"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .param p2, "event"    # Lorg/catrobat/catroid/content/EventWrapper;
    .param p3, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sprite"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    nop

    .line 33
    iget-object v0, p1, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;-><init>(Lorg/catrobat/catroid/content/Script;)V

    .line 36
    new-instance v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;

    invoke-direct {v0, p2, p3}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;-><init>(Lorg/catrobat/catroid/content/EventWrapper;Lorg/catrobat/catroid/content/Sprite;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;->waiter:Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;

    .line 38
    nop

    .line 39
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const-string v1, "thread.actions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 47
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .local v4, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    const/4 v5, 0x0

    .line 40
    .local v5, "$i$a$-forEach-ScriptSequenceActionWithWaiter$1":I
    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 41
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v5    # "$i$a$-forEach-ScriptSequenceActionWithWaiter$1":I
    goto :goto_0

    .line 48
    :cond_0
    nop

    .line 42
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final notifyWaiter()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;->waiter:Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;->getEvent()Lorg/catrobat/catroid/content/EventWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;->waiter:Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter$Waiter;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/EventWrapper;->notify(Lorg/catrobat/catroid/content/Sprite;)V

    return-void
.end method
