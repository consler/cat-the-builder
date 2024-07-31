.class public final Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
.super Ljava/lang/Object;
.source "ParticleSystem.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;


# instance fields
.field private batches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;>;"
        }
    .end annotation
.end field

.field private effects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    .line 43
    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
    .locals 1

    .line 33
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    .line 34
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .locals 1
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;)V"
        }
    .end annotation

    .line 46
    .local p1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public begin()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 91
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->begin()V

    .end local v1    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 97
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    .line 98
    .end local v1    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 104
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->end()V

    .end local v1    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public getBatches()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 110
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .end local v1    # "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .locals 2
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 55
    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 60
    return-void
.end method

.method public update()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 65
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    .line 66
    .end local v1    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 78
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update(F)V

    .line 79
    .end local v1    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public updateAndDraw()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 71
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    .line 72
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    .line 73
    .end local v1    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public updateAndDraw(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 83
    .local v1, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update(F)V

    .line 84
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    .line 85
    .end local v1    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method
