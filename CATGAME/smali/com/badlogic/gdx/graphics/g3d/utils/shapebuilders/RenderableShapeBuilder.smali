.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "RenderableShapeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;
    }
.end annotation


# static fields
.field private static final FLOAT_BYTES:I = 0x4

.field private static indices:[S

.field private static final renderables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field private static final renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

.field private static vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/Renderable;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 19
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "vectorSize"    # F
    .param p3, "normalColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "tangentColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "binormalColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 101
    .local v3, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    const/4 v4, -0x1

    .line 102
    .local v4, "positionOffset":I
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 103
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, v6, 0x4

    .line 106
    :cond_0
    const/4 v6, -0x1

    .line 107
    .local v6, "normalOffset":I
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 108
    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v6, v7, 0x4

    .line 111
    :cond_1
    const/4 v7, -0x1

    .line 112
    .local v7, "tangentOffset":I
    const/16 v8, 0x80

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 113
    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v7, v8, 0x4

    .line 116
    :cond_2
    const/4 v8, -0x1

    .line 117
    .local v8, "binormalOffset":I
    const/16 v9, 0x100

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 118
    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v8, v9, 0x4

    .line 120
    :cond_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    .line 121
    .local v9, "attributesSize":I
    const/4 v10, 0x0

    .line 122
    .local v10, "verticesOffset":I
    const/4 v11, 0x0

    .line 124
    .local v11, "verticesQuantity":I
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v12

    const/4 v13, 0x0

    if-lez v12, :cond_4

    .line 126
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v12

    invoke-static {v12}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->ensureIndicesCapacity(I)V

    .line 127
    iget-object v12, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    invoke-virtual {v3, v12, v14, v15, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 129
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->minVerticeInIndices()S

    move-result v12

    .line 130
    .local v12, "minVertice":S
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->maxVerticeInIndices()S

    move-result v14

    .line 132
    .local v14, "maxVertice":S
    move v10, v12

    .line 133
    sub-int/2addr v14, v12

    .line 134
    .end local v11    # "verticesQuantity":I
    .end local v12    # "minVertice":S
    .local v14, "verticesQuantity":I
    goto :goto_0

    .line 135
    .end local v14    # "verticesQuantity":I
    .restart local v11    # "verticesQuantity":I
    :cond_4
    iget-object v12, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v10, v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 136
    iget-object v12, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v14, v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 139
    .end local v11    # "verticesQuantity":I
    .restart local v14    # "verticesQuantity":I
    :goto_0
    mul-int v11, v14, v9

    invoke-static {v11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->ensureVerticesCapacity(I)V

    .line 140
    mul-int v11, v10, v9

    mul-int v12, v14, v9

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    invoke-virtual {v3, v11, v12, v15, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    .line 142
    move v11, v10

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_b

    .line 143
    mul-int v12, v11, v9

    .line 146
    .local v12, "id":I
    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int v16, v12, v4

    move-object/from16 v17, v3

    .end local v3    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    .local v17, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    aget v3, v15, v16

    add-int v16, v12, v4

    add-int/lit8 v16, v16, 0x1

    aget v5, v15, v16

    add-int v16, v12, v4

    add-int/lit8 v16, v16, 0x2

    aget v15, v15, v16

    invoke-virtual {v13, v3, v5, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 149
    const/4 v3, -0x1

    if-eq v6, v3, :cond_5

    .line 150
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int v15, v12, v6

    aget v15, v13, v15

    add-int v16, v12, v6

    const/16 v18, 0x1

    add-int/lit8 v16, v16, 0x1

    aget v3, v13, v16

    add-int v16, v12, v6

    add-int/lit8 v16, v16, 0x2

    aget v13, v13, v16

    invoke-virtual {v5, v15, v3, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 151
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 154
    :cond_5
    const/4 v3, -0x1

    if-eq v7, v3, :cond_6

    .line 155
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int v13, v12, v7

    aget v13, v5, v13

    add-int v15, v12, v7

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v15, v5, v15

    add-int v16, v12, v7

    add-int/lit8 v16, v16, 0x2

    aget v5, v5, v16

    invoke-virtual {v3, v13, v15, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 156
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV4:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 159
    :cond_6
    const/4 v3, -0x1

    if-eq v8, v3, :cond_7

    .line 160
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV5:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int v13, v12, v8

    aget v13, v5, v13

    add-int v15, v12, v8

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v15, v5, v15

    add-int v18, v12, v8

    add-int/lit8 v18, v18, 0x2

    aget v5, v5, v18

    invoke-virtual {v3, v13, v15, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 161
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV5:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_2

    .line 159
    :cond_7
    const/16 v16, 0x1

    .line 165
    :goto_2
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 166
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 167
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV4:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 168
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV6:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 171
    const/4 v3, -0x1

    if-eq v6, v3, :cond_8

    .line 172
    move-object/from16 v5, p3

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 173
    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v0, v13, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    goto :goto_3

    .line 171
    :cond_8
    move-object/from16 v5, p3

    .line 176
    :goto_3
    if-eq v7, v3, :cond_9

    .line 177
    move-object/from16 v13, p4

    invoke-interface {v0, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 178
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV4:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v0, v15, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    goto :goto_4

    .line 176
    :cond_9
    move-object/from16 v13, p4

    .line 181
    :goto_4
    const/4 v3, -0x1

    if-eq v8, v3, :cond_a

    .line 182
    move-object/from16 v3, p5

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 183
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV6:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v0, v15, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    goto :goto_5

    .line 181
    :cond_a
    move-object/from16 v3, p5

    .line 142
    .end local v12    # "id":I
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v5, v16

    move-object/from16 v3, v17

    goto/16 :goto_1

    .line 186
    .end local v11    # "i":I
    .end local v17    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    .restart local v3    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_b
    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;F)V
    .locals 9
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "renderableProvider"    # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "vectorSize"    # F

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpColor0:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpColor1:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 66
    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    .line 65
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 67
    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 8
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "renderableProvider"    # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "vectorSize"    # F
    .param p3, "normalColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "tangentColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "binormalColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 79
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 81
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 82
    .local v1, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    move-object v2, p0

    move-object v3, v1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/Renderable;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 83
    .end local v1    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;->flush()V

    .line 86
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 87
    return-void
.end method

.method private static ensureIndicesCapacity(I)V
    .locals 1
    .param p0, "capacity"    # I

    .line 193
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p0, :cond_1

    :cond_0
    new-array v0, p0, [S

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    .line 194
    :cond_1
    return-void
.end method

.method private static ensureVerticesCapacity(I)V
    .locals 1
    .param p0, "capacity"    # I

    .line 189
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p0, :cond_1

    :cond_0
    new-array v0, p0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    .line 190
    :cond_1
    return-void
.end method

.method private static maxVerticeInIndices()S
    .locals 4

    .line 204
    const/16 v0, -0x8000

    .line 205
    .local v0, "max":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 206
    aget-short v3, v2, v1

    if-le v3, v0, :cond_0

    aget-short v0, v2, v1

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static minVerticeInIndices()S
    .locals 4

    .line 197
    const/16 v0, 0x7fff

    .line 198
    .local v0, "min":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 199
    aget-short v3, v2, v1

    if-ge v3, v0, :cond_0

    aget-short v0, v2, v1

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
