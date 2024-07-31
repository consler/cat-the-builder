.class public final Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "GoToOtherSpritePositionAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "destinationSprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getDestinationSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setDestinationSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "sprite",
        "getSprite",
        "setSprite",
        "update",
        "",
        "percent",
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
.field private destinationSprite:Lorg/catrobat/catroid/content/Sprite;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDestinationSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->destinationSprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final setDestinationSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 30
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->destinationSprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 29
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_1

    .line 34
    .local v0, "look":Lorg/catrobat/catroid/content/Look;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->destinationSprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v1, :cond_0

    .line 35
    .local v1, "destinationLook":Lorg/catrobat/catroid/content/Look;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/Look;->setXInUserInterfaceDimensionUnit(F)V

    .line 36
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/Look;->setYInUserInterfaceDimensionUnit(F)V

    .line 37
    return-void

    .line 34
    .end local v1    # "destinationLook":Lorg/catrobat/catroid/content/Look;
    :cond_0
    return-void

    .line 33
    .end local v0    # "look":Lorg/catrobat/catroid/content/Look;
    :cond_1
    return-void
.end method
