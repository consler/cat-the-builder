.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;
.source "ModelInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Random"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;
    }
.end annotation


# instance fields
.field pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;-><init>()V

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;)V
    .locals 1
    .param p1, "influencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;

    .line 83
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;)V

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    .line 85
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 1
    .param p1, "models"    # [Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 88
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    .line 90
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .line 99
    move v0, p1

    .local v0, "i":I
    add-int v1, p1, p2

    .local v1, "c":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->modelChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    aput-object v3, v2, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    .end local v1    # "c":I
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;
    .locals 1

    .line 114
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;)V

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;->clear()V

    .line 95
    return-void
.end method

.method public killParticles(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .line 106
    move v0, p1

    .local v0, "i":I
    add-int v1, p1, p2

    .local v1, "c":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 107
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->pool:Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->modelChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random$ModelInstancePool;->free(Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;->modelChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    .end local v1    # "c":I
    :cond_0
    return-void
.end method
