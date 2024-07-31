.class public final Lorg/catrobat/catroid/content/actions/BroadcastAction;
.super Lorg/catrobat/catroid/content/actions/MultiSpriteEventAction;
.source "BroadcastAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/BroadcastAction;",
        "Lorg/catrobat/catroid/content/actions/MultiSpriteEventAction;",
        "()V",
        "broadcastMessage",
        "",
        "getBroadcastMessage",
        "()Ljava/lang/String;",
        "setBroadcastMessage",
        "(Ljava/lang/String;)V",
        "getEventId",
        "Lorg/catrobat/catroid/content/eventids/BroadcastEventId;",
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
.field private broadcastMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/MultiSpriteEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBroadcastMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/BroadcastAction;->broadcastMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Lorg/catrobat/catroid/content/eventids/BroadcastEventId;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/BroadcastAction;->broadcastMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "$i$a$-let-BroadcastAction$getEventId$1":I
    new-instance v2, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;-><init>(Ljava/lang/String;)V

    .line 32
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "$i$a$-let-BroadcastAction$getEventId$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    return-object v2
.end method

.method public bridge synthetic getEventId()Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/BroadcastAction;->getEventId()Lorg/catrobat/catroid/content/eventids/BroadcastEventId;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/eventids/EventId;

    return-object v0
.end method

.method public final setBroadcastMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/BroadcastAction;->broadcastMessage:Ljava/lang/String;

    return-void
.end method
