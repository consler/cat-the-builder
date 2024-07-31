.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
.super Ljava/lang/Object;
.source "ParticleController.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# static fields
.field protected static final DEFAULT_TIME_STEP:F = 0.016666668f


# instance fields
.field protected boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field public deltaTime:F

.field public deltaTimeSqr:F

.field public emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

.field public influencers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

.field public particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

.field public renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<",
            "**>;"
        }
    .end annotation
.end field

.field public scale:Lcom/badlogic/gdx/math/Vector3;

.field public transform:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    .line 74
    const v0, 0x3c888889

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->setTimeStep(F)V

    .line 75
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "emitter"    # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
    .param p4, "influencers"    # [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<",
            "**>;[",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ")V"
        }
    .end annotation

    .line 78
    .local p3, "renderer":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;, "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<**>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 81
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    .line 84
    return-void
.end method

.method private findIndex(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)I"
        }
    .end annotation

    .line 278
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 280
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    return v0

    .line 278
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private setTimeStep(F)V
    .locals 1
    .param p1, "timeStep"    # F

    .line 88
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    .line 89
    mul-float v0, p1, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTimeSqr:F

    .line 90
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->activateParticles(II)V

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 210
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->activateParticles(II)V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method protected allocateChannels(I)V
    .locals 2
    .param p1, "maxParticleCount"    # I

    .line 169
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->allocateChannels()V

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 173
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->allocateChannels()V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->allocateChannels()V

    .line 175
    return-void
.end method

.method protected bind()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 181
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 183
    return-void
.end method

.method protected calculateBoundingBox()V
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 270
    .local v0, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/4 v1, 0x0

    .local v1, "pos":I
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int/2addr v2, v3

    .local v2, "c":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 271
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x0

    aget v4, v4, v5

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 270
    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 274
    .end local v1    # "pos":I
    .end local v2    # "c":I
    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .locals 7

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 244
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 245
    .local v1, "influencers":[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    const/4 v2, 0x0

    .line 246
    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 247
    .local v4, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    aput-object v6, v1, v2

    .line 248
    .end local v4    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    move v2, v5

    goto :goto_0

    .line 249
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)V

    return-object v3
.end method

.method public dispose()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->dispose()V

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 256
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->dispose()V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->update()V

    .line 239
    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 201
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->end()V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->end()V

    .line 203
    return-void
.end method

.method public findInfluencer(Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)TK;"
        }
    .end annotation

    .line 289
    .local p1, "influencerClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->findIndex(Ljava/lang/Class;)I

    move-result v0

    .line 290
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->calculateBoundingBox()V

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-object v0
.end method

.method public getTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 146
    return-void
.end method

.method public init()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->bind()V

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->resetIds()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->allocateChannels(I)V

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->init()V

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 164
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->init()V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->init()V

    .line 166
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->isComplete()Z

    move-result v0

    return v0
.end method

.method public killParticles(II)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->killParticles(II)V

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 218
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->killParticles(II)V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 338
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 340
    return-void
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 141
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 320
    const-class v0, Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    .line 321
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    const-string v1, "emitter"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    const-string v3, "influencers"

    invoke-virtual {p1, v3, v1, v2, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 323
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    const-string v1, "renderer"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    .line 324
    return-void
.end method

.method public removeInfluencer(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    .line 295
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->findIndex(Ljava/lang/Class;)I

    move-result v0

    .line 296
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 297
    :cond_0
    return-void
.end method

.method public replaceInfluencer(Ljava/lang/Class;Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;TK;)Z"
        }
    .end annotation

    .line 301
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "newInfluencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;, "TK;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->findIndex(Ljava/lang/Class;)I

    move-result v0

    .line 302
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 305
    const/4 v1, 0x1

    return v1

    .line 307
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public reset()V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 195
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    .line 196
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1
    .param p1, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 108
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 115
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 330
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 332
    return-void
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 130
    return-void
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .line 134
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale(FFF)V

    .line 135
    return-void
.end method

.method public setTransform(FFFFFFFF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "qx"    # F
    .param p5, "qy"    # F
    .param p6, "qz"    # F
    .param p7, "qw"    # F
    .param p8, "scale"    # F

    .line 101
    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p8

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 102
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v2, p8

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 103
    return-void
.end method

.method public setTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 97
    return-void
.end method

.method public setTranslation(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 124
    return-void
.end method

.method public start()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->start()V

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 189
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->start()V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 120
    return-void
.end method

.method public update()V
    .locals 1

    .line 223
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->update(F)V

    .line 224
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .line 228
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->setTimeStep(F)V

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->update()V

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 231
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->update()V

    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    const-string v2, "emitter"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    const-string v3, "influencers"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    const-string v2, "renderer"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 316
    return-void
.end method
