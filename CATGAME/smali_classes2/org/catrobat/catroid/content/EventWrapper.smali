.class public final Lorg/catrobat/catroid/content/EventWrapper;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "EventWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/EventWrapper;",
        "Lcom/badlogic/gdx/scenes/scene2d/Event;",
        "eventId",
        "Lorg/catrobat/catroid/content/eventids/EventId;",
        "wait",
        "",
        "(Lorg/catrobat/catroid/content/eventids/EventId;Z)V",
        "getEventId$catroid_catroidDebug",
        "()Lorg/catrobat/catroid/content/eventids/EventId;",
        "spriteWaitList",
        "",
        "Lorg/catrobat/catroid/content/Sprite;",
        "",
        "addSpriteToWaitList",
        "sprite",
        "addSpriteToWaitList$catroid_catroidDebug",
        "isWaitingForSprite",
        "notify",
        "",
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
.field private final eventId:Lorg/catrobat/catroid/content/eventids/EventId;

.field private final spriteWaitList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wait:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V
    .locals 1
    .param p1, "eventId"    # Lorg/catrobat/catroid/content/eventids/EventId;
    .param p2, "wait"    # Z

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/EventWrapper;->eventId:Lorg/catrobat/catroid/content/eventids/EventId;

    iput-boolean p2, p0, Lorg/catrobat/catroid/content/EventWrapper;->wait:Z

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addSpriteToWaitList$catroid_catroidDebug(Lorg/catrobat/catroid/content/Sprite;)Z
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->wait:Z

    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-also-EventWrapper$addSpriteToWaitList$1":I
    if-eqz v1, :cond_2

    .line 43
    iget-object v3, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 44
    iget-object v3, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 46
    :cond_0
    iget-object v3, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    :goto_1
    nop

    .line 49
    nop

    .line 41
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-EventWrapper$addSpriteToWaitList$1":I
    nop

    .line 49
    return v0
.end method

.method public final getEventId$catroid_catroidDebug()Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->eventId:Lorg/catrobat/catroid/content/eventids/EventId;

    return-object v0
.end method

.method public final isWaitingForSprite()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final notify(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/EventWrapper;->spriteWaitList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_3
    :goto_1
    return-void
.end method
