.class public Lorg/catrobat/catroid/content/actions/SetLookAction;
.super Lorg/catrobat/catroid/content/actions/MultiSpriteEventAction;
.source "SetLookAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SetLookAction;",
        "Lorg/catrobat/catroid/content/actions/MultiSpriteEventAction;",
        "()V",
        "lookData",
        "Lorg/catrobat/catroid/common/LookData;",
        "getLookData",
        "()Lorg/catrobat/catroid/common/LookData;",
        "setLookData",
        "(Lorg/catrobat/catroid/common/LookData;)V",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "getEventId",
        "Lorg/catrobat/catroid/content/eventids/EventId;",
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
.field private lookData:Lorg/catrobat/catroid/common/LookData;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/MultiSpriteEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventId()Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->lookData:Lorg/catrobat/catroid/common/LookData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const-string v1, "sprite!!.look"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 37
    new-instance v0, Lorg/catrobat/catroid/content/eventids/SetLookEventId;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/eventids/SetLookEventId;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;)V

    check-cast v0, Lorg/catrobat/catroid/content/eventids/EventId;

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0
.end method

.method public final getLookData()Lorg/catrobat/catroid/common/LookData;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->lookData:Lorg/catrobat/catroid/common/LookData;

    return-object v0
.end method

.method public getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final setLookData(Lorg/catrobat/catroid/common/LookData;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/LookData;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->lookData:Lorg/catrobat/catroid/common/LookData;

    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetLookAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method
