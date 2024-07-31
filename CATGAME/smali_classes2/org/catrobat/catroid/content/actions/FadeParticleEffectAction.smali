.class public final Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "FadeParticleEffectAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "backgroundSprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "fadeIn",
        "",
        "sprite",
        "setBackgroundSprite",
        "",
        "setFadeIn",
        "setSprite",
        "update",
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
.field private backgroundSprite:Lorg/catrobat/catroid/content/Sprite;

.field private fadeIn:Z

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final setBackgroundSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "backgroundSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->backgroundSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 44
    return-void
.end method

.method public final setFadeIn(Z)V
    .locals 0
    .param p1, "fadeIn"    # Z

    .line 35
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->fadeIn:Z

    .line 36
    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 40
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->fadeIn:Z

    iput-boolean v1, v0, Lorg/catrobat/catroid/content/Look;->hasParticleEffect:Z

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->backgroundSprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/catrobat/catroid/content/Look;->isAdditive:Z

    .line 51
    :cond_1
    return-void
.end method
