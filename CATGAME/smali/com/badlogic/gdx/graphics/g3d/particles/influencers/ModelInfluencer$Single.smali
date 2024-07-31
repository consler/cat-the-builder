.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;
.source "ModelInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Single"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;)V
    .locals 0
    .param p1, "influencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;

    .line 42
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;)V

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 0
    .param p1, "models"    # [Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 46
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;
    .locals 1

    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;)V

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;->models:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 52
    .local v0, "first":Lcom/badlogic/gdx/graphics/g3d/Model;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .local v2, "c":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 53
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;->modelChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    aput-object v4, v3, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    .end local v2    # "c":I
    :cond_0
    return-void
.end method
