.class public Lcom/badlogic/gdx/graphics/g3d/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;,
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$TightMeshPool;,
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;,
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;
    }
.end annotation


# instance fields
.field private building:Z

.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field private items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field private meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

.field private meshPartPool:Lcom/badlogic/gdx/utils/FlushablePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/FlushablePool<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field private meshPool:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

.field private renderables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field private renderablesPool:Lcom/badlogic/gdx/utils/FlushablePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/FlushablePool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field private sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

.field private tmp:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 191
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;)V
    .locals 1
    .param p1, "sorter"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
    .param p2, "meshPool"    # Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    .line 166
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelCache;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderablesPool:Lcom/badlogic/gdx/utils/FlushablePool;

    .line 172
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$2;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelCache;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPartPool:Lcom/badlogic/gdx/utils/FlushablePool;

    .line 179
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    .line 180
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->tmp:Lcom/badlogic/gdx/utils/Array;

    .line 199
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .line 200
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPool:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    .line 201
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 202
    return-void
.end method

.method private obtainRenderable(Lcom/badlogic/gdx/graphics/g3d/Material;I)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 4
    .param p1, "material"    # Lcom/badlogic/gdx/graphics/g3d/Material;
    .param p2, "primitiveType"    # I

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderablesPool:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 231
    .local v0, "result":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    .line 232
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 233
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 234
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 235
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const/4 v3, 0x0

    iput v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 236
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 237
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput p2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 238
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 239
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, v3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 240
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 241
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 242
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    .line 243
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 244
    return-object v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 2
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 320
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->building:Z

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 325
    :goto_0
    return-void

    .line 320
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can only add items to the ModelCache in between .begin() and .end()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V
    .locals 3
    .param p1, "renderableProvider"    # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->tmp:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderablesPool:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->tmp:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->tmp:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->add(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->tmp:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 333
    return-void
.end method

.method public add(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 337
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 338
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->add(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V

    .end local v1    # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public begin()V
    .locals 1

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->begin(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 210
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .line 218
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->building:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->building:Z

    .line 221
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderablesPool:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPartPool:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPool:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;->flush()V

    .line 227
    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call end() after calling begin()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->building:Z

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPool:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;->dispose()V

    .line 355
    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot dispose a ModelCache in between .begin() and .end()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 23

    .line 251
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->building:Z

    if-eqz v1, :cond_9

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->building:Z

    .line 254
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;->sort(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/utils/Array;)V

    .line 257
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 258
    .local v2, "itemCount":I
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 260
    .local v3, "initCount":I
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 261
    .local v4, "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v5

    .line 262
    .local v5, "vertexAttributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 263
    .local v6, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 264
    .local v7, "primitiveType":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 266
    .local v8, "offset":I
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 267
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPartPool:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const-string v11, ""

    invoke-virtual {v9, v11, v7, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v9

    .line 268
    .local v9, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->obtainRenderable(Lcom/badlogic/gdx/graphics/g3d/Material;I)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 270
    const/4 v10, 0x0

    .local v10, "i":I
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    iget v12, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v12, "n":I
    :goto_0
    if-ge v10, v12, :cond_7

    .line 271
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 272
    .local v14, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v15, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v15

    .line 273
    .local v15, "va":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v1, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 274
    .local v1, "mat":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v13, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v13, v13, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 276
    .local v13, "pt":I
    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v2

    .end local v2    # "itemCount":I
    .local v17, "itemCount":I
    iget-object v2, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    move/from16 v18, v3

    .end local v3    # "initCount":I
    .local v18, "initCount":I
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 277
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumVertices()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x7fff

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 276
    .end local v17    # "itemCount":I
    .end local v18    # "initCount":I
    .restart local v2    # "itemCount":I
    .restart local v3    # "initCount":I
    :cond_1
    move/from16 v17, v2

    move/from16 v18, v3

    .line 277
    .end local v2    # "itemCount":I
    .end local v3    # "initCount":I
    .restart local v17    # "itemCount":I
    .restart local v18    # "initCount":I
    :cond_2
    const/4 v2, 0x0

    .line 278
    .local v2, "sameMesh":Z
    :goto_1
    if-eqz v2, :cond_3

    if-ne v13, v7, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v1, v6, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->same(Lcom/badlogic/gdx/graphics/g3d/Attributes;Z)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 280
    .local v3, "samePart":Z
    :goto_2
    if-nez v3, :cond_6

    .line 281
    if-nez v2, :cond_5

    .line 282
    move/from16 v19, v2

    .end local v2    # "sameMesh":Z
    .local v19, "sameMesh":Z
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    move/from16 v20, v3

    .end local v3    # "samePart":Z
    .local v20, "samePart":Z
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPool:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    move-object/from16 v21, v4

    .end local v4    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .local v21, "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumVertices()I

    move-result v4

    move-object/from16 v22, v6

    .end local v6    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    .local v22, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 283
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumIndices()I

    move-result v6

    .line 282
    invoke-interface {v3, v5, v4, v6}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;->obtain(Lcom/badlogic/gdx/graphics/VertexAttributes;II)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v2

    .line 284
    .local v2, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    :goto_3
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v3, :cond_4

    .line 285
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v4, v8, 0x1

    .end local v8    # "offset":I
    .local v4, "offset":I
    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move v8, v4

    goto :goto_3

    .line 286
    .end local v4    # "offset":I
    .restart local v8    # "offset":I
    :cond_4
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    move-object v5, v15

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V

    goto :goto_4

    .line 281
    .end local v19    # "sameMesh":Z
    .end local v20    # "samePart":Z
    .end local v21    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v22    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    .local v2, "sameMesh":Z
    .restart local v3    # "samePart":Z
    .local v4, "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .restart local v6    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_5
    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    .line 289
    .end local v2    # "sameMesh":Z
    .end local v3    # "samePart":Z
    .end local v4    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v6    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    .restart local v19    # "sameMesh":Z
    .restart local v20    # "samePart":Z
    .restart local v21    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .restart local v22    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :goto_4
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPartPool:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v2, v11, v13, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v2

    .line 290
    .local v2, "newPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 291
    .local v3, "previous":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v6, v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iput v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 292
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v6, v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iput v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 293
    move-object v4, v2

    .line 295
    .end local v9    # "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .local v4, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    move-object v9, v1

    .end local v22    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    .local v9, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    move v7, v13

    move-object/from16 v16, v2

    .end local v2    # "newPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .local v16, "newPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    invoke-direct {v0, v1, v13}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->obtainRenderable(Lcom/badlogic/gdx/graphics/g3d/Material;I)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v6, v9

    move-object v9, v4

    goto :goto_5

    .line 280
    .end local v16    # "newPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v19    # "sameMesh":Z
    .end local v20    # "samePart":Z
    .end local v21    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .local v2, "sameMesh":Z
    .local v3, "samePart":Z
    .local v4, "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .restart local v6    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    .local v9, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_6
    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    .line 298
    .end local v2    # "sameMesh":Z
    .end local v3    # "samePart":Z
    .end local v4    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .restart local v19    # "sameMesh":Z
    .restart local v20    # "samePart":Z
    .restart local v21    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :goto_5
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v3, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 299
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v3, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    move-object/from16 v16, v1

    .end local v1    # "mat":Lcom/badlogic/gdx/graphics/g3d/Material;
    .local v16, "mat":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v1, v14, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    .line 270
    .end local v13    # "pt":I
    .end local v14    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v15    # "va":Lcom/badlogic/gdx/graphics/VertexAttributes;
    .end local v16    # "mat":Lcom/badlogic/gdx/graphics/g3d/Material;
    .end local v19    # "sameMesh":Z
    .end local v20    # "samePart":Z
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v21

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v17    # "itemCount":I
    .end local v18    # "initCount":I
    .end local v21    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .local v2, "itemCount":I
    .local v3, "initCount":I
    .restart local v4    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_7
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    .line 302
    .end local v2    # "itemCount":I
    .end local v3    # "initCount":I
    .end local v4    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v6    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    .end local v10    # "i":I
    .end local v12    # "n":I
    .restart local v17    # "itemCount":I
    .restart local v18    # "initCount":I
    .restart local v21    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .restart local v22    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshPool:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumVertices()I

    move-result v3

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->meshBuilder:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    .line 303
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumIndices()I

    move-result v4

    .line 302
    invoke-interface {v2, v5, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;->obtain(Lcom/badlogic/gdx/graphics/VertexAttributes;II)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v1

    .line 304
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    :goto_6
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v2, :cond_8

    .line 305
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v3, v8, 0x1

    .end local v8    # "offset":I
    .local v3, "offset":I
    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move v8, v3

    goto :goto_6

    .line 307
    .end local v3    # "offset":I
    .restart local v8    # "offset":I
    :cond_8
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 308
    .local v2, "previous":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v4, v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iput v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 309
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v4, v9, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iput v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 310
    return-void

    .line 251
    .end local v1    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    .end local v2    # "previous":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v5    # "vertexAttributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    .end local v7    # "primitiveType":I
    .end local v8    # "offset":I
    .end local v9    # "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v17    # "itemCount":I
    .end local v18    # "initCount":I
    .end local v21    # "first":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v22    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_9
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Call begin() prior to calling end()"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 343
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->building:Z

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 345
    .local v1, "r":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 346
    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 347
    .end local v1    # "r":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 349
    return-void

    .line 343
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot render a ModelCache in between .begin() and .end()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
