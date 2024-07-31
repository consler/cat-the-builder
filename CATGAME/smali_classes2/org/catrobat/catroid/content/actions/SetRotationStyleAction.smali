.class public Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetRotationStyleAction.java"


# instance fields
.field private mode:I

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setRotationStyle(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 55
    iput p1, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->mode:I

    .line 56
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 52
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "delta"    # F

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget v1, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->mode:I

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->setRotationMode(I)V

    .line 39
    iget v0, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 43
    .local v0, "orientedLeft":Z
    :goto_0
    iget v3, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->mode:I

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 44
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 47
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 48
    return-void
.end method
