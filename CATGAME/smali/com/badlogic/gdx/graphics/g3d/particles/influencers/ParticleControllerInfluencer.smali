.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "ParticleControllerInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Random;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;
    }
.end annotation


# instance fields
.field particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field

.field public templates:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 165
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 166
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;)V
    .locals 1
    .param p1, "influencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;

    .line 174
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 175
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 1
    .param p1, "templates"    # [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 169
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 170
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    .line 171
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    .line 180
    return-void
.end method

.method public dispose()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v0, v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v1, v1, v0

    .line 194
    .local v1, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->dispose()V

    .line 196
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 192
    .end local v1    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public end()V
    .locals 2

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 11
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 237
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 238
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    const-string v1, "indices"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 240
    .local v1, "effectsIndices":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/IntArray;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/utils/IntArray;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v3

    move-object v4, v3

    .local v4, "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 243
    .local v3, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->getControllers()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    .line 245
    .local v5, "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/IntArray;

    .line 247
    .local v6, "effectIndices":Lcom/badlogic/gdx/utils/IntArray;
    const/4 v7, 0x0

    .local v7, "i":I
    iget v8, v6, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v8, "n":I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 248
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 250
    .end local v3    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .end local v5    # "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    .end local v6    # "effectIndices":Lcom/badlogic/gdx/utils/IntArray;
    .end local v7    # "i":I
    .end local v8    # "n":I
    :cond_0
    goto :goto_0

    .line 243
    .restart local v3    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Template is null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    .end local v3    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    :cond_2
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 13
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 204
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 205
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->getAll(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 207
    .local v1, "effects":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;>;"
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;->templates:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 208
    .local v2, "controllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 210
    .local v3, "effectsIndices":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/IntArray;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_4

    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v5, :cond_4

    .line 211
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 212
    .local v5, "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->getControllers()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    .line 213
    .local v6, "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 214
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    const/4 v8, 0x0

    .line 215
    .local v8, "indices":Lcom/badlogic/gdx/utils/IntArray;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 216
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 217
    .local v9, "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    const/4 v10, -0x1

    .line 218
    .local v10, "index":I
    const/4 v11, 0x1

    invoke-virtual {v6, v9, v11}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v11

    move v10, v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_1

    .line 219
    if-nez v8, :cond_0

    .line 220
    new-instance v11, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    move-object v8, v11

    .line 222
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 223
    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 225
    .end local v9    # "controller":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .end local v10    # "index":I
    :cond_1
    goto :goto_1

    .line 227
    :cond_2
    if-eqz v8, :cond_3

    .line 228
    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    invoke-virtual {v0, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    .line 229
    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 210
    .end local v5    # "effect":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;
    .end local v6    # "effectControllers":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;>;"
    .end local v8    # "indices":Lcom/badlogic/gdx/utils/IntArray;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    .end local v4    # "i":I
    :cond_4
    const-string v4, "indices"

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-void
.end method
