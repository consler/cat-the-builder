.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;
.source "ScaleInfluencer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>()V

    .line 28
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannelDescriptor:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;)V
    .locals 0
    .param p1, "scaleInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;

    .line 55
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V

    .line 56
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 8
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v0, p1

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v2, p1

    .local v2, "a":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    .line 35
    .local v3, "c":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 36
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v5

    .line 37
    .local v4, "start":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v6

    .line 38
    .local v5, "diff":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v2, 0x0

    aput v4, v6, v7

    .line 39
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v2, 0x1

    aput v5, v6, v7

    .line 40
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v4

    aput v7, v6, v0

    .line 35
    .end local v4    # "start":F
    .end local v5    # "diff":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "a":I
    .end local v3    # "c":I
    :cond_0
    goto :goto_2

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v0, p1

    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v2, p1

    .restart local v2    # "a":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    .line 44
    .restart local v3    # "c":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 45
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v5

    .line 46
    .restart local v4    # "start":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v5, v4

    .line 47
    .restart local v5    # "diff":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v2, 0x0

    aput v4, v6, v7

    .line 48
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v2, 0x1

    aput v5, v6, v7

    .line 49
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v4

    aput v7, v6, v0

    .line 44
    .end local v4    # "start":F
    .end local v5    # "diff":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    .end local v2    # "a":I
    .end local v3    # "c":I
    :cond_2
    :goto_2
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;)V

    return-object v0
.end method
