.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;
.source "ColorInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Single"
.end annotation


# instance fields
.field alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

.field lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;-><init>()V

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setHigh(F)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V
    .locals 0
    .param p1, "billboardColorInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V

    .line 72
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 10
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v0, p1

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v1, p1

    .local v1, "a":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    .line 91
    .local v2, "l":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    .local v3, "c":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 92
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v4

    .line 93
    .local v4, "alphaStart":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v5

    sub-float/2addr v5, v4

    .line 94
    .local v5, "alphaDiff":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    invoke-virtual {v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    .line 95
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v0, 0x3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v9, v9, v2

    .line 96
    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v4

    aput v8, v6, v7

    .line 97
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x0

    aput v4, v6, v7

    .line 98
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x1

    aput v5, v6, v7

    .line 91
    .end local v4    # "alphaStart":F
    .end local v5    # "alphaDiff":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    .end local v1    # "a":I
    .end local v2    # "l":I
    .end local v3    # "c":I
    :cond_0
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->allocateChannels()V

    .line 83
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newId()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 86
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;
    .locals 1

    .line 117
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V

    return-object v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 128
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 129
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    const-string v1, "color"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    .line 130
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V
    .locals 2
    .param p1, "colorInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;)V

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 77
    return-void
.end method

.method public update()V
    .locals 10

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "a":I
    const/4 v2, 0x2

    .local v2, "l":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 105
    .local v3, "c":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 107
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v4, v4, v2

    .line 108
    .local v4, "lifePercent":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    invoke-virtual {v5, v4, v6, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    .line 109
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v1, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 111
    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 105
    .end local v4    # "lifePercent":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaInterpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    .end local v1    # "a":I
    .end local v2    # "l":I
    .end local v3    # "c":I
    :cond_0
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method
