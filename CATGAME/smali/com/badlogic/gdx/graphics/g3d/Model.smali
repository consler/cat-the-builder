.class public Lcom/badlogic/gdx/graphics/g3d/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final animations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;"
        }
    .end annotation
.end field

.field protected final disposables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final meshParts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field public final meshes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field private nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    .line 161
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;)V
    .locals 1
    .param p1, "modelData"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    .line 95
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .locals 1
    .param p1, "modelData"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    .line 161
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->load(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 103
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 380
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 381
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Model;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateTransforms()V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 368
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_0

    .line 369
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 372
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected convertMaterial(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 27
    .param p1, "mtl"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .line 276
    move-object/from16 v0, p1

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    .line 277
    .local v1, "result":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    .line 278
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 279
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 280
    :cond_1
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 281
    :cond_2
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 282
    :cond_3
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 283
    :cond_4
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    invoke-direct {v2, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 284
    :cond_5
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/16 v5, 0x302

    const/16 v6, 0x303

    iget v7, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    invoke-direct {v2, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 286
    :cond_6
    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 289
    .local v2, "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_14

    .line 290
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    .line 292
    .local v6, "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 293
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v9, p0

    move-object/from16 v8, p2

    .local v7, "texture":Lcom/badlogic/gdx/graphics/Texture;
    goto :goto_1

    .line 295
    .end local v7    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_7
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;->load(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    .line 296
    .restart local v7    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 300
    :goto_1
    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v10, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 301
    .local v10, "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 302
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 303
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 304
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 306
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_8

    move v15, v3

    goto :goto_2

    :cond_8
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    move v15, v11

    .line 307
    .local v15, "offsetU":F
    :goto_2
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_9

    move/from16 v16, v3

    goto :goto_3

    :cond_9
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v16, v11

    .line 308
    .local v16, "offsetV":F
    :goto_3
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_a

    move/from16 v17, v4

    goto :goto_4

    :cond_a
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v17, v11

    .line 309
    .local v17, "scaleU":F
    :goto_4
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    if-nez v11, :cond_b

    move/from16 v18, v4

    goto :goto_5

    :cond_b
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v18, v11

    .line 311
    .local v18, "scaleV":F
    :goto_5
    iget v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_12

    const/4 v12, 0x3

    if-eq v11, v12, :cond_11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_10

    const/4 v12, 0x5

    if-eq v11, v12, :cond_f

    const/4 v12, 0x7

    if-eq v11, v12, :cond_e

    const/16 v12, 0x8

    if-eq v11, v12, :cond_d

    const/16 v12, 0xa

    if-eq v11, v12, :cond_c

    goto/16 :goto_6

    .line 331
    :cond_c
    new-instance v14, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    move-object v11, v14

    move-object v3, v14

    move-object v14, v10

    invoke-direct/range {v11 .. v18}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_6

    .line 319
    :cond_d
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 320
    goto/16 :goto_6

    .line 322
    :cond_e
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 323
    goto :goto_6

    .line 316
    :cond_f
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 317
    goto :goto_6

    .line 325
    :cond_10
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 326
    goto :goto_6

    .line 328
    :cond_11
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 329
    goto :goto_6

    .line 313
    :cond_12
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v20, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    move-object/from16 v19, v3

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v25, v17

    move/from16 v26, v18

    invoke-direct/range {v19 .. v26}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 314
    nop

    .line 334
    .end local v6    # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .end local v7    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v10    # "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .end local v15    # "offsetU":F
    .end local v16    # "offsetV":F
    .end local v17    # "scaleU":F
    .end local v18    # "scaleV":F
    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 290
    :cond_13
    move-object/from16 v9, p0

    move-object/from16 v8, p2

    goto :goto_7

    .line 289
    :cond_14
    move-object/from16 v9, p0

    move-object/from16 v8, p2

    .line 337
    :goto_7
    return-object v1
.end method

.method protected convertMesh(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;)V
    .locals 14
    .param p1, "modelMesh"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "numIndices":I
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 238
    .local v5, "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    array-length v6, v6

    add-int/2addr v0, v6

    .line 237
    .end local v5    # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 241
    .local v2, "hasIndices":Z
    :goto_1
    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 242
    .local v4, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    array-length v5, v5

    iget v6, v4, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v6, v6, 0x4

    div-int/2addr v5, v6

    .line 244
    .local v5, "numVertices":I
    new-instance v6, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-direct {v6, v1, v5, v0, v4}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    move-object v1, v6

    .line 245
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 246
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 248
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iget-object v8, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    array-length v8, v8

    invoke-static {v6, v7, v8, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 249
    const/4 v6, 0x0

    .line 250
    .local v6, "offset":I
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 251
    iget-object v7, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    array-length v8, v7

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 252
    .local v10, "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    .line 253
    .local v11, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    iput-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 254
    iget v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    iput v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 255
    iput v6, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 256
    if-eqz v2, :cond_2

    iget-object v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    array-length v12, v12

    goto :goto_3

    :cond_2
    move v12, v5

    :goto_3
    iput v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 257
    iput-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 258
    if-eqz v2, :cond_3

    .line 259
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v12

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    invoke-virtual {v12, v13}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 261
    :cond_3
    iget v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    add-int/2addr v6, v12

    .line 262
    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 251
    .end local v10    # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v11    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 264
    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 266
    .local v7, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->update()V

    .end local v7    # "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    goto :goto_4

    .line 267
    :cond_5
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Disposable;

    .line 355
    .local v1, "disposable":Lcom/badlogic/gdx/utils/Disposable;
    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 356
    .end local v1    # "disposable":Lcom/badlogic/gdx/utils/Disposable;
    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 390
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 391
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "i":I
    :cond_0
    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 407
    .local v0, "n":I
    if-eqz p2, :cond_2

    .line 408
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 409
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .local v3, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 408
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_1
    goto :goto_2

    .line 411
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 412
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .restart local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v3

    .line 411
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    .end local v1    # "i":I
    .end local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getManagedDisposables()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 429
    .local v0, "n":I
    if-eqz p2, :cond_2

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 431
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .local v3, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 430
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_1
    goto :goto_2

    .line 433
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 434
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .restart local v3    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v3

    .line 433
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    .end local v1    # "i":I
    .end local v3    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .param p3, "ignoreCase"    # Z

    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method protected load(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .locals 1
    .param p1, "modelData"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .line 106
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadMeshes(Ljava/lang/Iterable;)V

    .line 107
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadMaterials(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNodes(Ljava/lang/Iterable;)V

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadAnimations(Ljava/lang/Iterable;)V

    .line 110
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Model;->calculateTransforms()V

    .line 111
    return-void
.end method

.method protected loadAnimations(Ljava/lang/Iterable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "modelAnimations":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;

    .line 115
    .local v1, "anim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Animation;-><init>()V

    .line 116
    .local v2, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->id:Ljava/lang/String;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    .line 117
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;

    .line 118
    .local v4, "nanim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->nodeId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    .line 119
    .local v5, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-nez v5, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;-><init>()V

    .line 121
    .local v6, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iput-object v5, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 123
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_3

    .line 124
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 125
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 126
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 127
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v10, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v9, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 128
    :cond_1
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v11, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v13, :cond_2

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_3

    :cond_2
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    :goto_3
    invoke-direct {v12, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 130
    .end local v8    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_2

    .line 133
    :cond_3
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_6

    .line 134
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 135
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 136
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 137
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v10, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v9, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 138
    :cond_4
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v11, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v12, Lcom/badlogic/gdx/math/Quaternion;

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v13, :cond_5

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    goto :goto_5

    :cond_5
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v13, Lcom/badlogic/gdx/math/Quaternion;

    :goto_5
    invoke-direct {v12, v13}, Lcom/badlogic/gdx/math/Quaternion;-><init>(Lcom/badlogic/gdx/math/Quaternion;)V

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 140
    .end local v8    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    goto :goto_4

    .line 143
    :cond_6
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_9

    .line 144
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 145
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 146
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 147
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v10, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    iget v9, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v9, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 148
    :cond_7
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v11, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v13, :cond_8

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_7

    :cond_8
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    :goto_7
    invoke-direct {v12, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 150
    .end local v8    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_6

    .line 153
    :cond_9
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_a

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gtz v7, :cond_c

    :cond_a
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_b

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gtz v7, :cond_c

    :cond_b
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v7, :cond_d

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v7, :cond_d

    .line 155
    :cond_c
    iget-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 156
    .end local v4    # "nanim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    .end local v5    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v6    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_d
    goto/16 :goto_1

    .line 157
    :cond_e
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v3, :cond_f

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 158
    .end local v1    # "anim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v2    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_f
    goto/16 :goto_0

    .line 159
    :cond_10
    return-void
.end method

.method protected loadMaterials(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .locals 4
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;",
            ")V"
        }
    .end annotation

    .line 270
    .local p1, "modelMaterials":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    .line 271
    .local v1, "mtl":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->convertMaterial(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 272
    .end local v1    # "mtl":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method protected loadMeshes(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "meshes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    .line 231
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Model;->convertMesh(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;)V

    .line 232
    .end local v1    # "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method protected loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 12
    .param p1, "modelNode"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 178
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 179
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 181
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 182
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 183
    :cond_1
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 185
    :cond_2
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 186
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v1, v4

    .line 187
    .local v5, "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    const/4 v6, 0x0

    .line 188
    .local v6, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    const/4 v7, 0x0

    .line 190
    .local v7, "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 191
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 192
    .local v9, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 193
    move-object v6, v9

    .line 194
    goto :goto_2

    .line 196
    .end local v9    # "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_3
    goto :goto_1

    .line 199
    :cond_4
    :goto_2
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 200
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 201
    .local v9, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 202
    move-object v7, v9

    .line 203
    goto :goto_4

    .line 205
    .end local v9    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_5
    goto :goto_3

    .line 208
    :cond_6
    :goto_4
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    .line 210
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 211
    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    .line 212
    .local v8, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iput-object v6, v8, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 213
    iput-object v7, v8, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 214
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 215
    iget-object v9, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v9, v8, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v5    # "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v6    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v7    # "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    .end local v8    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    .restart local v5    # "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .restart local v6    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .restart local v7    # "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_8
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v5    # "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v6    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v7    # "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_9
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    if-eqz v1, :cond_a

    .line 221
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    array-length v3, v1

    :goto_5
    if-ge v2, v3, :cond_a

    aget-object v4, v1, v2

    .line 222
    .local v4, "child":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    .line 221
    .end local v4    # "child":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 226
    :cond_a
    return-object v0
.end method

.method protected loadNodes(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "modelNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 165
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 166
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 167
    .end local v1    # "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 169
    .local v1, "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v2, :cond_1

    .line 170
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    new-instance v3, Lcom/badlogic/gdx/utils/ArrayMap;

    const-class v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const-class v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 171
    :cond_1
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 172
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 173
    .local v3, "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;"
    iget-object v4, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v7, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v7, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_2

    .line 174
    .end local v1    # "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    .end local v3    # "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;"
    :cond_2
    goto :goto_1

    .line 175
    :cond_3
    return-void
.end method

.method public manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V
    .locals 2
    .param p1, "disposable"    # Lcom/badlogic/gdx/utils/Disposable;

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 345
    :cond_0
    return-void
.end method
