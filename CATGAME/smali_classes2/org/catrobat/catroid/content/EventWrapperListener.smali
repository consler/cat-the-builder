.class public final Lorg/catrobat/catroid/content/EventWrapperListener;
.super Ljava/lang/Object;
.source "EventWrapperListener.kt"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventWrapperListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventWrapperListener.kt\norg/catrobat/catroid/content/EventWrapperListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1819#2,2:70\n*E\n*S KotlinDebug\n*F\n+ 1 EventWrapperListener.kt\norg/catrobat/catroid/content/EventWrapperListener\n*L\n41#1,2:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000bH\u0002J\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/EventWrapperListener;",
        "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
        "look",
        "Lorg/catrobat/catroid/content/Look;",
        "(Lorg/catrobat/catroid/content/Look;)V",
        "handle",
        "",
        "event",
        "Lcom/badlogic/gdx/scenes/scene2d/Event;",
        "handleEvent",
        "",
        "Lorg/catrobat/catroid/content/EventWrapper;",
        "handleUserBrickEvent",
        "sequenceAction",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
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
.field private final look:Lorg/catrobat/catroid/content/Look;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Look;)V
    .locals 1
    .param p1, "look"    # Lorg/catrobat/catroid/content/Look;

    const-string v0, "look"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/EventWrapperListener;->look:Lorg/catrobat/catroid/content/Look;

    return-void
.end method

.method private final handleEvent(Lorg/catrobat/catroid/content/EventWrapper;)V
    .locals 11
    .param p1, "event"    # Lorg/catrobat/catroid/content/EventWrapper;

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapperListener;->look:Lorg/catrobat/catroid/content/Look;

    .local v0, "$this$with":Lorg/catrobat/catroid/content/Look;
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-with-EventWrapperListener$handleEvent$1":I
    iget-object v2, v0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    const-string v3, "sprite"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getIdToEventThreadMap()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/EventWrapper;->getEventId$catroid_catroidDebug()Lorg/catrobat/catroid/content/eventids/EventId;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    const-string v4, "sprite.idToEventThreadMap[event.eventId]"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 70
    .local v4, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .local v7, "sequenceAction":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    const/4 v8, 0x0

    .line 42
    .local v8, "$i$a$-forEach-EventWrapperListener$handleEvent$1$1":I
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/EventWrapper;->getEventId$catroid_catroidDebug()Lorg/catrobat/catroid/content/eventids/EventId;

    move-result-object v9

    instance-of v9, v9, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;

    const-string v10, "sequenceAction"

    if-eqz v9, :cond_0

    .line 43
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7, p1}, Lorg/catrobat/catroid/content/EventWrapperListener;->handleUserBrickEvent(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/catrobat/catroid/content/Look;->stopThreadWithScript(Lorg/catrobat/catroid/content/Script;)V

    .line 47
    iget-object v9, v0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lorg/catrobat/catroid/content/EventWrapper;->addSpriteToWaitList$catroid_catroidDebug(Lorg/catrobat/catroid/content/Sprite;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 48
    new-instance v9, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    iget-object v10, v0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, p1, v10}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;-><init>(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;Lorg/catrobat/catroid/content/EventWrapper;Lorg/catrobat/catroid/content/Sprite;)V

    check-cast v9, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    invoke-virtual {v0, v9}, Lorg/catrobat/catroid/content/Look;->startThread(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v0, v7}, Lorg/catrobat/catroid/content/Look;->startThread(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 51
    :goto_1
    nop

    .line 52
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "sequenceAction":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .end local v8    # "$i$a$-forEach-EventWrapperListener$handleEvent$1$1":I
    goto :goto_0

    .line 71
    :cond_2
    nop

    .line 53
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 40
    .end local v0    # "$this$with":Lorg/catrobat/catroid/content/Look;
    .end local v1    # "$i$a$-with-EventWrapperListener$handleEvent$1":I
    nop

    .line 54
    return-void
.end method

.method private final handleUserBrickEvent(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;Lorg/catrobat/catroid/content/EventWrapper;)V
    .locals 7
    .param p1, "sequenceAction"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .param p2, "event"    # Lorg/catrobat/catroid/content/EventWrapper;

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapperListener;->look:Lorg/catrobat/catroid/content/Look;

    .local v0, "$this$with":Lorg/catrobat/catroid/content/Look;
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-with-EventWrapperListener$handleUserBrickEvent$1":I
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.catrobat.catroid.content.UserDefinedScript"

    if-eqz v2, :cond_2

    check-cast v2, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/UserDefinedScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lorg/catrobat/catroid/content/UserDefinedScript;

    .line 60
    .local v2, "scriptClone":Lorg/catrobat/catroid/content/UserDefinedScript;
    nop

    .line 61
    nop

    .line 60
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/EventWrapper;->getEventId$catroid_catroidDebug()Lorg/catrobat/catroid/content/eventids/EventId;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;

    iget-object v3, v3, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;->userBrickParameters:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/UserDefinedScript;->setUserDefinedBrickInputs(Ljava/util/List;)V

    .line 62
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    invoke-virtual {p1, v3}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->cloneAndChangeScript(Lorg/catrobat/catroid/content/Script;)Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    move-result-object v3

    const-string v4, "sequenceAction.cloneAndChangeScript(scriptClone)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .local v3, "sequenceClone":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v4

    iget-object v5, v0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v4, v5, v3}, Lorg/catrobat/catroid/content/Script;->run(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 64
    iget-object v4, v0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    const-string v5, "sprite"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/catrobat/catroid/content/EventWrapper;->addSpriteToWaitList$catroid_catroidDebug(Lorg/catrobat/catroid/content/Sprite;)Z

    .line 65
    new-instance v4, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;

    iget-object v6, v0, Lorg/catrobat/catroid/content/Look;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3, p2, v6}, Lorg/catrobat/catroid/content/actions/ScriptSequenceActionWithWaiter;-><init>(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;Lorg/catrobat/catroid/content/EventWrapper;Lorg/catrobat/catroid/content/Sprite;)V

    check-cast v4, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    invoke-virtual {v0, v4}, Lorg/catrobat/catroid/content/Look;->startThread(Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 66
    .end local v2    # "scriptClone":Lorg/catrobat/catroid/content/UserDefinedScript;
    .end local v3    # "sequenceClone":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    nop

    .line 57
    .end local v0    # "$this$with":Lorg/catrobat/catroid/content/Look;
    .end local v1    # "$i$a$-with-EventWrapperListener$handleUserBrickEvent$1":I
    nop

    .line 67
    return-void

    .line 60
    .restart local v0    # "$this$with":Lorg/catrobat/catroid/content/Look;
    .restart local v1    # "$i$a$-with-EventWrapperListener$handleUserBrickEvent$1":I
    .restart local v2    # "scriptClone":Lorg/catrobat/catroid/content/UserDefinedScript;
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type org.catrobat.catroid.content.eventids.UserDefinedBrickEventId"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    .end local v2    # "scriptClone":Lorg/catrobat/catroid/content/UserDefinedScript;
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/Event;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p1, Lorg/catrobat/catroid/content/EventWrapper;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/EventWrapper;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/EventWrapperListener;->handleEvent(Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    nop

    .line 37
    return v0
.end method
