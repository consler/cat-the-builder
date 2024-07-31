.class public final Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "AdditiveParticleEffectAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "isAdditive",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "setFadeIn",
        "",
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
.field private isAdditive:Z

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final setFadeIn(Z)V
    .locals 0
    .param p1, "isAdditive"    # Z

    .line 34
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;->isAdditive:Z

    .line 35
    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 39
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;->isAdditive:Z

    iput-boolean v1, v0, Lorg/catrobat/catroid/content/Look;->isAdditive:Z

    .line 43
    :cond_0
    return-void
.end method
