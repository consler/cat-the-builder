.class public Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;
.super Ljava/lang/Object;
.source "ModelCache.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleMeshPool"
.end annotation


# instance fields
.field private freeMeshes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field private usedMeshes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Mesh;

    .line 93
    .local v1, "m":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .end local v1    # "m":Lcom/badlogic/gdx/graphics/Mesh;
    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Mesh;

    .line 96
    .restart local v1    # "m":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .end local v1    # "m":Lcom/badlogic/gdx/graphics/Mesh;
    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 98
    return-void
.end method

.method public flush()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 70
    return-void
.end method

.method public obtain(Lcom/badlogic/gdx/graphics/VertexAttributes;II)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 4
    .param p1, "vertexAttributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;
    .param p2, "vertexCount"    # I
    .param p3, "indexCount"    # I

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    .line 76
    .local v2, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v3

    if-lt v3, p2, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v3

    if-lt v3, p3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->freeMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 80
    return-object v2

    .line 74
    .end local v2    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const p2, 0x8000

    .line 84
    const v0, 0x8000

    add-int/lit8 v1, p3, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, p1}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 86
    .local v0, "result":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;->usedMeshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 87
    return-object v0
.end method
