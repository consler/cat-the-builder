.class public Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;
.super Ljava/lang/Object;
.source "ModelBuilder.java"


# instance fields
.field private builders:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/badlogic/gdx/graphics/g3d/Model;

.field private node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

.field private tmpTransform:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->tmpTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method private endnode()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 88
    :cond_0
    return-void
.end method

.method private getBuilder(Lcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    .locals 4
    .param p1, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 53
    .local v1, "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex()S

    move-result v2

    const/16 v3, 0x3fff

    if-ge v2, v3, :cond_0

    return-object v1

    .line 54
    .end local v1    # "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;-><init>()V

    .line 55
    .local v0, "result":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 56
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 57
    return-object v0
.end method

.method public static rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 2
    .param p0, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 366
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-static {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    .end local v1    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method private static rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .locals 5
    .param p0, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 370
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 371
    .local v1, "mpm":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 374
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 375
    :cond_1
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Model;->manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V

    .line 377
    .end local v1    # "mpm":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_2
    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 379
    .local v1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-static {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    .end local v1    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_1

    .line 380
    :cond_4
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 66
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call end() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArrow(FFFFFFFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 12
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "capLength"    # F
    .param p8, "stemThickness"    # F
    .param p9, "divisions"    # I
    .param p10, "primitiveType"    # I
    .param p11, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p12, "attributes"    # J

    .line 417
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 418
    const-string v1, "arrow"

    move-object v0, p0

    move/from16 v2, p10

    move-wide/from16 v3, p12

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 419
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createArrow(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 16
    .param p1, "from"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "to"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p4, "attributes"    # J

    .line 425
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v11, 0x5

    const/4 v12, 0x4

    move-object/from16 v2, p0

    move-object/from16 v13, p3

    move-wide/from16 v14, p4

    invoke-virtual/range {v2 .. v15}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createArrow(FFFFFFFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v2

    return-object v2
.end method

.method public createBox(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "primitiveType"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .line 197
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 198
    const-string v1, "box"

    move-object v0, p0

    move v2, p4

    move-wide v3, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->box(FFF)V

    .line 199
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createBox(FFFLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 8
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p5, "attributes"    # J

    .line 188
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createBox(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCapsule(FFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 6
    .param p1, "radius"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "primitiveType"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .line 354
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 355
    const-string v1, "capsule"

    move-object v0, p0

    move v2, p4

    move-wide v3, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->capsule(FFI)V

    .line 356
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCapsule(FFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 8
    .param p1, "radius"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p5, "attributes"    # J

    .line 345
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCapsule(FFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .line 277
    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J
    .param p9, "angleFrom"    # F
    .param p10, "angleTo"    # F

    .line 295
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 296
    const-string v1, "cone"

    move-object v0, p0

    move v2, p5

    move-wide/from16 v3, p7

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-interface/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->cone(FFFIFF)V

    .line 297
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .line 268
    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCone(FFFILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J
    .param p8, "angleFrom"    # F
    .param p9, "angleTo"    # F

    .line 286
    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCone(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .line 240
    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J
    .param p9, "angleFrom"    # F
    .param p10, "angleTo"    # F

    .line 258
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 259
    const-string v1, "cylinder"

    move-object v0, p0

    move v2, p5

    move-wide/from16 v3, p7

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-interface/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->cylinder(FFFIFF)V

    .line 260
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .line 231
    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createCylinder(FFFILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J
    .param p8, "angleFrom"    # F
    .param p9, "angleTo"    # F

    .line 249
    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createCylinder(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createLineGrid(IIFFLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 20
    .param p1, "xDivisions"    # I
    .param p2, "zDivisions"    # I
    .param p3, "xSize"    # F
    .param p4, "zSize"    # F
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p6, "attributes"    # J

    .line 435
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 436
    const-string v3, "lines"

    const/4 v4, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v5, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v2

    .line 437
    .local v2, "partBuilder":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    int-to-float v3, v0

    mul-float v3, v3, p3

    .local v3, "xlength":F
    int-to-float v4, v1

    mul-float v4, v4, p4

    .local v4, "zlength":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v12, v3, v5

    .local v12, "hxlength":F
    div-float v13, v4, v5

    .line 438
    .local v13, "hzlength":F
    neg-float v5, v12

    .local v5, "x1":F
    const/4 v14, 0x0

    .local v14, "y1":F
    move v8, v13

    .local v8, "z1":F
    neg-float v6, v12

    .local v6, "x2":F
    const/4 v15, 0x0

    .local v15, "y2":F
    neg-float v11, v13

    .line 439
    .local v11, "z2":F
    const/4 v7, 0x0

    move/from16 v16, v5

    move/from16 v17, v6

    move v10, v7

    .end local v5    # "x1":F
    .end local v6    # "x2":F
    .local v10, "i":I
    .local v16, "x1":F
    .local v17, "x2":F
    :goto_0
    if-gt v10, v0, :cond_0

    .line 440
    move-object v5, v2

    move/from16 v6, v16

    move v7, v14

    move/from16 v9, v17

    move/from16 v18, v10

    .end local v10    # "i":I
    .local v18, "i":I
    move v10, v15

    move/from16 v19, v11

    .end local v11    # "z2":F
    .local v19, "z2":F
    invoke-interface/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(FFFFFF)V

    .line 441
    add-float v16, v16, p3

    .line 442
    add-float v17, v17, p3

    .line 439
    add-int/lit8 v10, v18, 0x1

    .end local v18    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .end local v19    # "z2":F
    .restart local v11    # "z2":F
    :cond_0
    move/from16 v18, v10

    move/from16 v19, v11

    .line 445
    .end local v10    # "i":I
    .end local v11    # "z2":F
    .restart local v19    # "z2":F
    neg-float v11, v12

    .line 446
    .end local v16    # "x1":F
    .local v11, "x1":F
    const/4 v14, 0x0

    .line 447
    neg-float v5, v13

    .line 448
    .end local v8    # "z1":F
    .local v5, "z1":F
    move v9, v12

    .line 449
    .end local v17    # "x2":F
    .local v9, "x2":F
    const/4 v15, 0x0

    .line 450
    neg-float v6, v13

    .line 451
    .end local v19    # "z2":F
    .local v6, "z2":F
    const/4 v7, 0x0

    move/from16 v16, v5

    move/from16 v17, v6

    move v10, v7

    .end local v5    # "z1":F
    .end local v6    # "z2":F
    .local v10, "j":I
    .local v16, "z1":F
    .local v17, "z2":F
    :goto_1
    if-gt v10, v1, :cond_1

    .line 452
    move-object v5, v2

    move v6, v11

    move v7, v14

    move/from16 v8, v16

    move/from16 v18, v10

    .end local v10    # "j":I
    .local v18, "j":I
    move v10, v15

    move/from16 v19, v11

    .end local v11    # "x1":F
    .local v19, "x1":F
    move/from16 v11, v17

    invoke-interface/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(FFFFFF)V

    .line 453
    add-float v16, v16, p4

    .line 454
    add-float v17, v17, p4

    .line 451
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v19

    .end local v18    # "j":I
    .restart local v10    # "j":I
    goto :goto_1

    .line 457
    .end local v10    # "j":I
    .end local v19    # "x1":F
    .restart local v11    # "x1":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v5

    return-object v5
.end method

.method public createRect(FFFFFFFFFFFFFFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 18
    .param p1, "x00"    # F
    .param p2, "y00"    # F
    .param p3, "z00"    # F
    .param p4, "x10"    # F
    .param p5, "y10"    # F
    .param p6, "z10"    # F
    .param p7, "x11"    # F
    .param p8, "y11"    # F
    .param p9, "z11"    # F
    .param p10, "x01"    # F
    .param p11, "y01"    # F
    .param p12, "z01"    # F
    .param p13, "normalX"    # F
    .param p14, "normalY"    # F
    .param p15, "normalZ"    # F
    .param p16, "primitiveType"    # I
    .param p17, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p18, "attributes"    # J

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 220
    const-string v1, "rect"

    move-object/from16 v0, p0

    move/from16 v2, p16

    move-wide/from16 v3, p18

    move-object/from16 v5, p17

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-interface/range {v2 .. v17}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(FFFFFFFFFFFFFFF)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createRect(FFFFFFFFFFFFFFFLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 20
    .param p1, "x00"    # F
    .param p2, "y00"    # F
    .param p3, "z00"    # F
    .param p4, "x10"    # F
    .param p5, "y10"    # F
    .param p6, "z10"    # F
    .param p7, "x11"    # F
    .param p8, "y11"    # F
    .param p9, "z11"    # F
    .param p10, "x01"    # F
    .param p11, "y01"    # F
    .param p12, "z01"    # F
    .param p13, "normalX"    # F
    .param p14, "normalY"    # F
    .param p15, "normalZ"    # F
    .param p16, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p17, "attributes"    # J

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v17, p16

    move-wide/from16 v18, p17

    .line 208
    const/16 v16, 0x4

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createRect(FFFFFFFFFFFFFFFILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 14
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "primitiveType"    # I
    .param p7, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p8, "attributes"    # J

    .line 315
    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 12
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "primitiveType"    # I
    .param p7, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p8, "attributes"    # J
    .param p10, "angleUFrom"    # F
    .param p11, "angleUTo"    # F
    .param p12, "angleVFrom"    # F
    .param p13, "angleVTo"    # F

    .line 334
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 335
    const-string v1, "cylinder"

    move-object v0, p0

    move/from16 v2, p6

    move-wide/from16 v3, p8

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->sphere(FFFIIFFFF)V

    .line 337
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 10
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .line 306
    const/4 v6, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createSphere(FFFIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 14
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J
    .param p9, "angleUFrom"    # F
    .param p10, "angleUTo"    # F
    .param p11, "angleVFrom"    # F
    .param p12, "angleVTo"    # F

    .line 324
    const/4 v6, 0x4

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createSphere(FFFIIILcom/badlogic/gdx/graphics/g3d/Material;JFFFF)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public createXYZCoordinates(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 13
    .param p1, "axisLength"    # F
    .param p2, "capLength"    # F
    .param p3, "stemThickness"    # F
    .param p4, "divisions"    # I
    .param p5, "primitiveType"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p7, "attributes"    # J

    .line 390
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    .line 392
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    .line 394
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const-string/jumbo v2, "xyz"

    move-object v1, p0

    move/from16 v3, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v1

    .line 395
    .local v1, "partBuilder":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 396
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    move v7, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v3 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 397
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 398
    const/4 v7, 0x0

    move v8, p1

    invoke-interface/range {v3 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 399
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 400
    const/4 v8, 0x0

    move v9, p1

    invoke-interface/range {v3 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->arrow(FFFFFFFFI)V

    .line 402
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v2

    return-object v2
.end method

.method public createXYZCoordinates(FLcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 9
    .param p1, "axisLength"    # F
    .param p2, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p3, "attributes"    # J

    .line 406
    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x5

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->createXYZCoordinates(FFFIILcom/badlogic/gdx/graphics/g3d/Material;J)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public end()Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 73
    .local v0, "result":Lcom/badlogic/gdx/graphics/g3d/Model;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->endnode()V

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 76
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 77
    .local v2, "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end()Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_0

    .line 78
    .end local v2    # "mb":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->builders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 80
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->rebuildReferences(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 81
    return-object v0

    .line 71
    .end local v0    # "result":Lcom/badlogic/gdx/graphics/g3d/Model;
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public manage(Lcom/badlogic/gdx/utils/Disposable;)V
    .locals 2
    .param p1, "disposable"    # Lcom/badlogic/gdx/utils/Disposable;

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/Model;->manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V

    .line 128
    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public node()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 3

    .line 105
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 106
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 108
    return-object v0
.end method

.method protected node(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 2
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->endnode()V

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 97
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 99
    return-object p1

    .line 92
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public node(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Model;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 115
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 116
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 117
    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChildren(Ljava/lang/Iterable;)I

    .line 118
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 119
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->getManagedDisposables()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Disposable;

    .line 120
    .local v2, "disposable":Lcom/badlogic/gdx/utils/Disposable;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->manage(Lcom/badlogic/gdx/utils/Disposable;)V

    .end local v2    # "disposable":Lcom/badlogic/gdx/utils/Disposable;
    goto :goto_0

    .line 121
    :cond_0
    return-object v0
.end method

.method public part(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;IIILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p3, "primitiveType"    # I
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .param p6, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 143
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    .line 144
    .local v0, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 145
    iput p3, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 146
    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 147
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 148
    iput p5, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 149
    invoke-virtual {p0, v0, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    .line 150
    return-object v0
.end method

.method public part(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;ILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p3, "primitiveType"    # I
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 158
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;IIILcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;IJLcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "primitiveType"    # I
    .param p3, "attributes"    # J
    .param p5, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 180
    invoke-static {p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/VertexAttributes;Lcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/VertexAttributes;Lcom/badlogic/gdx/graphics/g3d/Material;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "primitiveType"    # I
    .param p3, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;
    .param p4, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 167
    invoke-direct {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->getBuilder(Lcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    move-result-object v0

    .line 168
    .local v0, "builder":Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->part(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    .line 169
    return-object v0
.end method

.method public part(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 2
    .param p1, "meshpart"    # Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .param p2, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
