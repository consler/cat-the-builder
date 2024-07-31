.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.source "ParticleSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "None"
.end annotation


# instance fields
.field currentCapacity:I

.field indices:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->currentCapacity:I

    return-void
.end method


# virtual methods
.method public ensureCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 37
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->currentCapacity:I

    if-ge v0, p1, :cond_1

    .line 38
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->indices:[I

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->indices:[I

    aput v0, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->currentCapacity:I

    .line 43
    :cond_1
    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)[I"
        }
    .end annotation

    .line 47
    .local p1, "renderData":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->indices:[I

    return-object v0
.end method
