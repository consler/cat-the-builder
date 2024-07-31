.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.source "ParticleSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Distance"
.end annotation


# instance fields
.field private currentSize:I

.field private distances:[F

.field private particleIndices:[I

.field private particleOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->currentSize:I

    return-void
.end method


# virtual methods
.method public ensureCapacity(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 59
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->currentSize:I

    if-ge v0, p1, :cond_0

    .line 60
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    .line 61
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    .line 62
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleOffsets:[I

    .line 63
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->currentSize:I

    .line 65
    :cond_0
    return-void
.end method

.method public qsort(II)V
    .locals 8
    .param p1, "si"    # I
    .param p2, "ei"    # I

    .line 92
    if-ge p1, p2, :cond_6

    .line 96
    sub-int v0, p2, p1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 97
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 98
    move v1, v0

    .local v1, "j":I
    :goto_1
    if-le v1, p1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    aget v4, v2, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 99
    aget v3, v2, v1

    .line 100
    .local v3, "tmp":F
    add-int/lit8 v4, v1, -0x1

    aget v4, v2, v4

    aput v4, v2, v1

    .line 101
    add-int/lit8 v4, v1, -0x1

    aput v3, v2, v4

    .line 104
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v4, v2, v1

    .line 105
    .local v4, "tmpIndex":I
    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    aput v5, v2, v1

    .line 106
    add-int/lit8 v5, v1, -0x1

    aput v4, v2, v5

    .line 98
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 97
    .end local v1    # "j":I
    .end local v3    # "tmp":F
    .end local v4    # "tmpIndex":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v0, v0, p1

    .line 113
    .local v0, "pivot":F
    add-int/lit8 v1, p1, 0x1

    .line 114
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v2, v2, p1

    .line 117
    .local v2, "particlesPivotIndex":I
    add-int/lit8 v3, p1, 0x1

    .local v3, "j":I
    :goto_2
    if-gt v3, p2, :cond_5

    .line 118
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v5, v4, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    .line 119
    if-le v3, v1, :cond_3

    .line 121
    aget v5, v4, v3

    .line 122
    .local v5, "tmp":F
    aget v6, v4, v1

    aput v6, v4, v3

    .line 123
    aput v5, v4, v1

    .line 126
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v6, v4, v3

    .line 127
    .local v6, "tmpIndex":I
    aget v7, v4, v1

    aput v7, v4, v3

    .line 128
    aput v6, v4, v1

    .line 130
    .end local v5    # "tmp":F
    .end local v6    # "tmpIndex":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 117
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 135
    .end local v3    # "j":I
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    aput v4, v3, p1

    .line 136
    add-int/lit8 v4, v1, -0x1

    aput v0, v3, v4

    .line 137
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    aput v4, v3, p1

    .line 138
    add-int/lit8 v4, v1, -0x1

    aput v2, v3, v4

    .line 141
    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->qsort(II)V

    .line 142
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->qsort(II)V

    .line 144
    .end local v0    # "pivot":F
    .end local v1    # "i":I
    .end local v2    # "particlesPivotIndex":I
    :cond_6
    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)[I"
        }
    .end annotation

    .line 69
    .local p1, "renderData":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 70
    .local v0, "val":[F
    const/4 v1, 0x2

    aget v1, v0, v1

    .local v1, "cx":F
    const/4 v2, 0x6

    aget v2, v0, v2

    .local v2, "cy":F
    const/16 v3, 0xa

    aget v3, v0, v3

    .line 71
    .local v3, "cz":F
    const/4 v4, 0x0

    .local v4, "count":I
    const/4 v5, 0x0

    .line 72
    .local v5, "i":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    .line 73
    .local v7, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;
    const/4 v8, 0x0

    .local v8, "k":I
    iget-object v9, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v9, v5

    .local v9, "c":I
    :goto_1
    if-ge v5, v9, :cond_0

    .line 74
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    iget-object v11, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v12, v8, 0x0

    aget v11, v11, v12

    mul-float/2addr v11, v1

    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v8, 0x1

    aget v12, v12, v13

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v8, 0x2

    aget v12, v12, v13

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    aput v11, v10, v5

    .line 77
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aput v5, v10, v5

    .line 73
    add-int/lit8 v5, v5, 0x1

    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v8, v10

    goto :goto_1

    .line 79
    .end local v8    # "k":I
    .end local v9    # "c":I
    :cond_0
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v4, v8

    .line 80
    .end local v7    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;
    goto :goto_0

    .line 82
    :cond_1
    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->qsort(II)V

    .line 84
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    .line 85
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleOffsets:[I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v7, v7, v5

    aput v5, v6, v7

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 87
    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleOffsets:[I

    return-object v6
.end method
