.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.source "MeshSpawnShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;
    }
.end annotation


# instance fields
.field protected mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field protected model:Lcom/badlogic/gdx/graphics/g3d/Model;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;

    .line 67
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V

    .line 68
    return-void
.end method


# virtual methods
.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 102
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 103
    .local v0, "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v1

    .line 104
    .local v1, "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 106
    .local v2, "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    const-string v4, "index"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 108
    .end local v2    # "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 3
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .line 75
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;

    .line 77
    .local v0, "spawnShapeValue":Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 78
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 4
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 95
    .local v0, "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .end local v0    # "saveData":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    :cond_0
    return-void
.end method

.method public setMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 1
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 89
    return-void
.end method

.method public setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 2
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Mesh vertices must have Usage.Position"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
