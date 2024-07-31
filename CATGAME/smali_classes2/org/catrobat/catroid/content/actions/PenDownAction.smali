.class public Lorg/catrobat/catroid/content/actions/PenDownAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PenDownAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PenDownAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 52
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "delta"    # F

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PenDownAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/PenConfiguration;->isPenDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PenDownAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/PenConfiguration;->addQueue()V

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PenDownAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PenDownAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 44
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/PenDownAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 45
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 43
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/PenConfiguration;->addPosition(Landroid/graphics/PointF;)V

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PenDownAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/PenConfiguration;->setPenDown(Z)V

    .line 48
    return-void
.end method
