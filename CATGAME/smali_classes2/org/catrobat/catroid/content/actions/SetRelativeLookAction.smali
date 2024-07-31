.class public abstract Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;
.super Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;
.source "SetRelativeLookAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0018\u0010\u0003\u001a\u00020\u0004X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;",
        "Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;",
        "()V",
        "change",
        "",
        "getChange",
        "()I",
        "setChange",
        "(I)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChange()I
.end method

.method public getEventId()Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 7

    .line 32
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 33
    .local v0, "lookList":Ljava/util/List;
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 34
    .local v2, "look":Lorg/catrobat/catroid/content/Look;
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    .line 35
    .local v1, "currentLookData":Lorg/catrobat/catroid/common/LookData;
    :cond_2
    nop

    .line 36
    const/4 v3, -0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookListIndexBeforeLookRequest()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 37
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookListIndexBeforeLookRequest()I

    move-result v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;->getChange()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    goto :goto_2

    .line 38
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;->getChange()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    goto :goto_2

    .line 40
    :cond_4
    const/4 v4, 0x0

    .line 38
    :goto_2
    nop

    .line 36
    nop

    .line 35
    nop

    .line 41
    .local v4, "newIndex":I
    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 42
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setLookListIndexBeforeLookRequest(I)V

    .line 43
    :cond_5
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->getEventId()Lorg/catrobat/catroid/content/eventids/EventId;

    move-result-object v3

    return-object v3
.end method

.method public abstract setChange(I)V
.end method
