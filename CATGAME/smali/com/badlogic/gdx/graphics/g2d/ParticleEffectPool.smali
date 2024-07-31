.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "ParticleEffectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;",
        ">;"
    }
.end annotation


# instance fields
.field private final effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V
    .locals 0
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    .param p2, "initialCapacity"    # I
    .param p3, "max"    # I

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 28
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .line 29
    return-void
.end method


# virtual methods
.method public free(Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;)V
    .locals 5
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    .line 38
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->reset(Z)V

    .line 41
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->xSizeScale:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->xSizeScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->ySizeScale:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->ySizeScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->motionScale:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->motionScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 43
    .local v0, "emitters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 44
    .local v1, "templateEmitters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 46
    .local v3, "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .line 47
    .local v4, "templateEmitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->matchSize(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    .line 48
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->matchMotion(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    .line 44
    .end local v3    # "emitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    .end local v4    # "templateEmitter":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->xSizeScale:F

    iput v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->xSizeScale:F

    .line 51
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->ySizeScale:F

    iput v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->ySizeScale:F

    .line 52
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->motionScale:F

    iput v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->motionScale:F

    .line 54
    .end local v0    # "emitters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;>;"
    .end local v1    # "templateEmitters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;>;"
    :cond_2
    return-void
.end method

.method public bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->free(Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;)V

    return-void
.end method

.method protected newObject()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .locals 2

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    .line 33
    .local v0, "pooledEffect":Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->start()V

    .line 34
    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->newObject()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    return-object v0
.end method
