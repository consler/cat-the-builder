.class public Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ClearGraphicEffectAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 44
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->setBrightnessInUserInterfaceDimensionUnit(F)V

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->setTransparencyInUserInterfaceDimensionUnit(F)V

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->setColorInUserInterfaceDimensionUnit(F)V

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/catrobat/catroid/content/Look;->hasParticleEffect:Z

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->clearParticleEffect()V

    .line 40
    return-void
.end method
