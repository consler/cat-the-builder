.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "ParticleControllerFinalizerInfluencer.java"


# instance fields
.field controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field

.field hasRotation:Z

.field hasScale:Z

.field positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 51
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;
    .locals 1

    .line 75
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;-><init>()V

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    .line 39
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasScale:Z

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasRotation:Z

    .line 46
    return-void

    .line 40
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "ParticleController channel not found, specify an influencer which will allocate it please."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update()V
    .locals 18

    .line 55
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "positionOffset":I
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v3, "c":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 56
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v4, v4, v1

    .line 57
    .local v4, "particleController":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasScale:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v5, v5, v1

    goto :goto_1

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    move v13, v5

    .line 58
    .local v13, "scale":F
    const/4 v5, 0x0

    .local v5, "qx":F
    const/4 v6, 0x0

    .local v6, "qy":F
    const/4 v7, 0x0

    .local v7, "qz":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 59
    .local v8, "qw":F
    iget-boolean v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasRotation:Z

    if-eqz v9, :cond_1

    .line 60
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v9, v1

    .line 61
    .local v9, "rotationOffset":I
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v11, v9, 0x0

    aget v5, v10, v11

    .line 62
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v11, v9, 0x1

    aget v6, v10, v11

    .line 63
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v11, v9, 0x2

    aget v7, v10, v11

    .line 64
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v11, v9, 0x3

    aget v8, v10, v11

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_2

    .line 59
    .end local v9    # "rotationOffset":I
    :cond_1
    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 66
    .end local v5    # "qx":F
    .end local v6    # "qy":F
    .end local v7    # "qz":F
    .end local v8    # "qw":F
    .local v14, "qx":F
    .local v15, "qy":F
    .local v16, "qz":F
    .local v17, "qw":F
    :goto_2
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v2, 0x0

    aget v6, v5, v6

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v2, 0x1

    aget v7, v5, v7

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v2, 0x2

    aget v8, v5, v8

    move-object v5, v4

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-virtual/range {v5 .. v13}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->setTransform(FFFFFFFF)V

    .line 69
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->update()V

    .line 55
    .end local v4    # "particleController":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .end local v13    # "scale":F
    .end local v14    # "qx":F
    .end local v15    # "qy":F
    .end local v16    # "qz":F
    .end local v17    # "qw":F
    add-int/lit8 v1, v1, 0x1

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    .end local v2    # "positionOffset":I
    .end local v3    # "c":I
    :cond_2
    return-void
.end method
