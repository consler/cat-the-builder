.class public Lcom/badlogic/gdx/graphics/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    }
.end annotation


# static fields
.field static final meshes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field autoBind:Z

.field final indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

.field instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

.field isInstanced:Z

.field final isVertexArray:Z

.field private final tmpV:Lcom/badlogic/gdx/math/Vector3;

.field final vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 4
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .param p2, "isStatic"    # Z
    .param p3, "maxVertices"    # I
    .param p4, "maxIndices"    # I
    .param p5, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 754
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 169
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$1;->$SwitchMap$com$badlogic$gdx$graphics$Mesh$VertexDataType:[I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 187
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/VertexArray;

    invoke-direct {v1, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 188
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexArray;

    invoke-direct {v1, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexArray;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 189
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 182
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 183
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 184
    goto :goto_0

    .line 176
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 177
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 178
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 179
    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 172
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 173
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 174
    nop

    .line 193
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 194
    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 6
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .param p2, "isStatic"    # Z
    .param p3, "maxVertices"    # I
    .param p4, "maxIndices"    # I
    .param p5, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 158
    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v5, p5}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/glutils/VertexData;Lcom/badlogic/gdx/graphics/glutils/IndexData;Z)V
    .locals 1
    .param p1, "vertices"    # Lcom/badlogic/gdx/graphics/glutils/VertexData;
    .param p2, "indices"    # Lcom/badlogic/gdx/graphics/glutils/IndexData;
    .param p3, "isVertexArray"    # Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 754
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 87
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 88
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 90
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 91
    return-void
.end method

.method public constructor <init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "maxVertices"    # I
    .param p3, "maxIndices"    # I
    .param p4, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 754
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 116
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Mesh;->makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 117
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v1, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 118
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 120
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 121
    return-void
.end method

.method public varargs constructor <init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "maxVertices"    # I
    .param p3, "maxIndices"    # I
    .param p4, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 754
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 101
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v1, p4}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 102
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v1, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 103
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 105
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 106
    return-void
.end method

.method public constructor <init>(ZZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2
    .param p1, "staticVertices"    # Z
    .param p2, "staticIndices"    # Z
    .param p3, "maxVertices"    # I
    .param p4, "maxIndices"    # I
    .param p5, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 754
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 134
    invoke-direct {p0, p1, p3, p5}, Lcom/badlogic/gdx/graphics/Mesh;->makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 135
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v1, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 136
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 138
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 139
    return-void
.end method

.method private static addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;

    .line 947
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 948
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 949
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 950
    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    return-void
.end method

.method public static clearAllMeshes(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .line 966
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 5

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 972
    .local v1, "i":I
    const-string v2, "Managed meshes/app: { "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/Application;

    .line 974
    .local v3, "app":Lcom/badlogic/gdx/Application;
    sget-object v4, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 975
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .end local v3    # "app":Lcom/badlogic/gdx/Application;
    goto :goto_0

    .line 977
    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .line 956
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 957
    .local v0, "meshesArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Mesh;>;"
    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    .line 959
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->invalidate()V

    .line 960
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->invalidate()V

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private makeVertexBuffer(ZILcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/glutils/VertexData;
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "maxVertices"    # I
    .param p3, "vertexAttributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 142
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-object v0
.end method

.method public static transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V
    .locals 6
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p1, "vertices"    # [F
    .param p2, "vertexSize"    # I
    .param p3, "offset"    # I
    .param p4, "dimensions"    # I
    .param p5, "start"    # I
    .param p6, "count"    # I

    .line 1060
    if-ltz p3, :cond_7

    const/4 v0, 0x1

    if-lt p4, v0, :cond_7

    add-int v1, p3, p4

    if-gt v1, p2, :cond_7

    .line 1061
    if-ltz p5, :cond_6

    if-lt p6, v0, :cond_6

    add-int v1, p5, p6

    mul-int/2addr v1, p2

    array-length v2, p1

    if-gt v1, v2, :cond_6

    .line 1065
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 1067
    .local v1, "tmp":Lcom/badlogic/gdx/math/Vector3;
    mul-int v2, p5, p2

    add-int/2addr v2, p3

    .line 1068
    .local v2, "idx":I
    const/4 v3, 0x0

    if-eq p4, v0, :cond_3

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    goto :goto_3

    .line 1085
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_5

    .line 1086
    aget v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, v2, 0x2

    aget v5, p1, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 1087
    iget v3, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v2

    .line 1088
    add-int/lit8 v3, v2, 0x1

    iget v4, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v4, p1, v3

    .line 1089
    add-int/lit8 v3, v2, 0x2

    iget v4, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, p1, v3

    .line 1090
    add-int/2addr v2, p2

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p6, :cond_2

    .line 1078
    aget v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 1079
    iget v4, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v4, p1, v2

    .line 1080
    add-int/lit8 v4, v2, 0x1

    iget v5, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v5, p1, v4

    .line 1081
    add-int/2addr v2, p2

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1083
    .end local v0    # "i":I
    :cond_2
    goto :goto_3

    .line 1070
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p6, :cond_4

    .line 1071
    aget v4, p1, v2

    invoke-virtual {v1, v4, v3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 1072
    iget v4, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v4, p1, v2

    .line 1073
    add-int/2addr v2, p2

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1075
    .end local v0    # "i":I
    :cond_4
    nop

    .line 1094
    :cond_5
    :goto_3
    return-void

    .line 1062
    .end local v1    # "tmp":Lcom/badlogic/gdx/math/Vector3;
    .end local v2    # "idx":I
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vertexSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static transformUV(Lcom/badlogic/gdx/math/Matrix3;[FIIII)V
    .locals 5
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p1, "vertices"    # [F
    .param p2, "vertexSize"    # I
    .param p3, "offset"    # I
    .param p4, "start"    # I
    .param p5, "count"    # I

    .line 1127
    if-ltz p4, :cond_1

    const/4 v0, 0x1

    if-lt p5, v0, :cond_1

    add-int v0, p4, p5

    mul-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 1131
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 1133
    .local v0, "tmp":Lcom/badlogic/gdx/math/Vector2;
    mul-int v1, p4, p2

    add-int/2addr v1, p3

    .line 1134
    .local v1, "idx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_0

    .line 1135
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector2;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;

    .line 1136
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, p1, v1

    .line 1137
    add-int/lit8 v3, v1, 0x1

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, p1, v3

    .line 1138
    add-int/2addr v1, p2

    .line 1134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1140
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 1128
    .end local v0    # "tmp":Lcom/badlogic/gdx/math/Vector2;
    .end local v1    # "idx":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vertexSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 498
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 507
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->getNumInstances()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->bind()V

    .line 509
    :cond_1
    return-void
.end method

.method public calculateBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    .line 685
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    .line 686
    .local v0, "bbox":Lcom/badlogic/gdx/math/collision/BoundingBox;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 687
    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 733
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 742
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 10
    .param p1, "bbox"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 695
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    .line 696
    .local v0, "numVertices":I
    if-eqz v0, :cond_6

    .line 698
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 699
    .local v1, "verts":Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 700
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 701
    .local v3, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v4, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, v4, 0x4

    .line 702
    .local v4, "offset":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v5, v5, 0x4

    .line 703
    .local v5, "vertexSize":I
    move v6, v4

    .line 705
    .local v6, "idx":I
    iget v7, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    const/4 v8, 0x0

    if-eq v7, v2, :cond_3

    const/4 v2, 0x2

    if-eq v7, v2, :cond_1

    const/4 v2, 0x3

    if-eq v7, v2, :cond_0

    goto :goto_3

    .line 719
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 720
    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 721
    add-int/2addr v6, v5

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 714
    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {p1, v7, v9, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 715
    add-int/2addr v6, v5

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 717
    .end local v2    # "i":I
    :cond_2
    goto :goto_3

    .line 707
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 708
    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {p1, v7, v8, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 709
    add-int/2addr v6, v5

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 711
    .end local v2    # "i":I
    :cond_4
    nop

    .line 725
    :cond_5
    :goto_3
    return-void

    .line 696
    .end local v1    # "verts":Ljava/nio/FloatBuffer;
    .end local v3    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4    # "offset":I
    .end local v5    # "vertexSize":I
    .end local v6    # "idx":I
    :cond_6
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "No vertices defined"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public calculateRadius(FFF)F
    .locals 7
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F

    .line 931
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(FFFII)F
    .locals 7
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .line 913
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .param p6, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 893
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadiusSquared(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 7
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;

    .line 938
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;II)F
    .locals 7
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 922
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadius(Lcom/badlogic/gdx/math/Vector3;IILcom/badlogic/gdx/math/Matrix4;)F
    .locals 7
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 902
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->calculateRadius(FFFIILcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    return v0
.end method

.method public calculateRadiusSquared(FFFIILcom/badlogic/gdx/math/Matrix4;)F
    .locals 19
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "centerZ"    # F
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .param p6, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 840
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    .line 841
    .local v6, "numIndices":I
    if-ltz p4, :cond_c

    const/4 v7, 0x1

    if-lt v4, v7, :cond_c

    add-int v8, p4, v4

    if-gt v8, v6, :cond_c

    .line 843
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v8}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 844
    .local v8, "verts":Ljava/nio/FloatBuffer;
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v9}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v9

    .line 845
    .local v9, "index":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v10

    .line 846
    .local v10, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v11, v10, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v11, v11, 0x4

    .line 847
    .local v11, "posoff":I
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v12}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v12

    iget v12, v12, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v12, v12, 0x4

    .line 848
    .local v12, "vertexSize":I
    add-int v13, p4, v4

    .line 850
    .local v13, "end":I
    const/4 v14, 0x0

    .line 852
    .local v14, "result":F
    iget v15, v10, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    const/4 v4, 0x0

    if-eq v15, v7, :cond_8

    const/4 v7, 0x2

    if-eq v15, v7, :cond_4

    const/4 v4, 0x3

    if-eq v15, v4, :cond_0

    move/from16 v16, v6

    move-object/from16 v17, v10

    move/from16 v18, v11

    goto/16 :goto_3

    .line 872
    :cond_0
    move/from16 v4, p4

    .local v4, "i":I
    :goto_0
    if-ge v4, v13, :cond_3

    .line 873
    invoke-virtual {v9, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    mul-int/2addr v7, v12

    add-int/2addr v7, v11

    .line 874
    .local v7, "idx":I
    iget-object v15, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v16, v6

    .end local v6    # "numIndices":I
    .local v16, "numIndices":I
    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    move-object/from16 v17, v10

    .end local v10    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .local v17, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v8, v10}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    move/from16 v18, v11

    .end local v11    # "posoff":I
    .local v18, "posoff":I
    add-int/lit8 v11, v7, 0x2

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    invoke-virtual {v15, v6, v10, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 875
    if-eqz v5, :cond_1

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 876
    :cond_1
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v6

    .line 877
    .local v6, "r":F
    cmpl-float v10, v6, v14

    if-lez v10, :cond_2

    move v14, v6

    .line 872
    .end local v6    # "r":F
    .end local v7    # "idx":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v16

    move-object/from16 v10, v17

    move/from16 v11, v18

    goto :goto_0

    .end local v16    # "numIndices":I
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "posoff":I
    .local v6, "numIndices":I
    .restart local v10    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v11    # "posoff":I
    :cond_3
    move/from16 v16, v6

    move-object/from16 v17, v10

    move/from16 v18, v11

    .end local v6    # "numIndices":I
    .end local v10    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v11    # "posoff":I
    .restart local v16    # "numIndices":I
    .restart local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18    # "posoff":I
    goto/16 :goto_3

    .line 863
    .end local v4    # "i":I
    .end local v16    # "numIndices":I
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "posoff":I
    .restart local v6    # "numIndices":I
    .restart local v10    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v11    # "posoff":I
    :cond_4
    move/from16 v16, v6

    move-object/from16 v17, v10

    move/from16 v18, v11

    .end local v6    # "numIndices":I
    .end local v10    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v11    # "posoff":I
    .restart local v16    # "numIndices":I
    .restart local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18    # "posoff":I
    move/from16 v6, p4

    .local v6, "i":I
    :goto_1
    if-ge v6, v13, :cond_7

    .line 864
    invoke-virtual {v9, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    mul-int/2addr v7, v12

    add-int v7, v7, v18

    .line 865
    .restart local v7    # "idx":I
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v8, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    invoke-virtual {v10, v11, v15, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 866
    if-eqz v5, :cond_5

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 867
    :cond_5
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v10

    .line 868
    .local v10, "r":F
    cmpl-float v11, v10, v14

    if-lez v11, :cond_6

    move v14, v10

    .line 863
    .end local v7    # "idx":I
    .end local v10    # "r":F
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 870
    .end local v6    # "i":I
    :cond_7
    goto :goto_3

    .line 854
    .end local v16    # "numIndices":I
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "posoff":I
    .local v6, "numIndices":I
    .local v10, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v11    # "posoff":I
    :cond_8
    move/from16 v16, v6

    move-object/from16 v17, v10

    move/from16 v18, v11

    .end local v6    # "numIndices":I
    .end local v10    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v11    # "posoff":I
    .restart local v16    # "numIndices":I
    .restart local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18    # "posoff":I
    move/from16 v6, p4

    .local v6, "i":I
    :goto_2
    if-ge v6, v13, :cond_b

    .line 855
    invoke-virtual {v9, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    mul-int/2addr v7, v12

    add-int v7, v7, v18

    .line 856
    .restart local v7    # "idx":I
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    invoke-virtual {v10, v11, v4, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 857
    if-eqz v5, :cond_9

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 858
    :cond_9
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v10

    .line 859
    .local v10, "r":F
    cmpl-float v11, v10, v14

    if-lez v11, :cond_a

    move v14, v10

    .line 854
    .end local v7    # "idx":I
    .end local v10    # "r":F
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 861
    .end local v6    # "i":I
    :cond_b
    nop

    .line 881
    :goto_3
    return v14

    .line 841
    .end local v8    # "verts":Ljava/nio/FloatBuffer;
    .end local v9    # "index":Ljava/nio/ShortBuffer;
    .end local v12    # "vertexSize":I
    .end local v13    # "end":I
    .end local v14    # "result":F
    .end local v16    # "numIndices":I
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "posoff":I
    .local v6, "numIndices":I
    :cond_c
    move/from16 v16, v6

    .end local v6    # "numIndices":I
    .restart local v16    # "numIndices":I
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Not enough indices"

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public copy(Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "isStatic"    # Z

    .line 1238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->copy(ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public copy(ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 21
    .param p1, "isStatic"    # Z
    .param p2, "removeDuplicates"    # Z
    .param p3, "usage"    # [I

    .line 1151
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    .line 1152
    .local v3, "vertexSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v4

    .line 1153
    .local v4, "numVertices":I
    mul-int v5, v4, v3

    new-array v5, v5, [F

    .line 1154
    .local v5, "vertices":[F
    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 1155
    const/4 v6, 0x0

    .line 1156
    .local v6, "checks":[S
    const/4 v8, 0x0

    .line 1157
    .local v8, "attrs":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v9, 0x0

    .line 1158
    .local v9, "newVertexSize":I
    if-eqz v2, :cond_4

    .line 1159
    const/4 v10, 0x0

    .line 1160
    .local v10, "size":I
    const/4 v11, 0x0

    .line 1161
    .local v11, "as":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v2

    if-ge v12, v13, :cond_1

    .line 1162
    aget v13, v2, v12

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1163
    aget v13, v2, v12

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    iget v13, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v10, v13

    .line 1164
    add-int/lit8 v11, v11, 0x1

    .line 1161
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1166
    .end local v12    # "i":I
    :cond_1
    if-lez v10, :cond_4

    .line 1167
    new-array v8, v11, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 1168
    new-array v6, v10, [S

    .line 1169
    const/4 v12, -0x1

    .line 1170
    .local v12, "idx":I
    const/4 v13, -0x1

    .line 1171
    .local v13, "ai":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v2

    if-ge v14, v15, :cond_4

    .line 1172
    aget v15, v2, v14

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v15

    .line 1173
    .local v15, "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v15, :cond_2

    goto :goto_3

    .line 1174
    :cond_2
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "j":I
    :goto_2
    iget v2, v15, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-ge v7, v2, :cond_3

    .line 1175
    add-int/lit8 v12, v12, 0x1

    iget v2, v15, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    add-int/2addr v2, v7

    int-to-short v2, v2

    aput-short v2, v6, v12

    .line 1174
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    goto :goto_2

    .line 1176
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/VertexAttribute;->copy()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    aput-object v2, v8, v13

    .line 1177
    iget v2, v15, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v9, v2

    .line 1171
    .end local v15    # "a":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p3

    const/4 v7, 0x0

    goto :goto_1

    .line 1181
    .end local v10    # "size":I
    .end local v11    # "as":I
    .end local v12    # "idx":I
    .end local v13    # "ai":I
    .end local v14    # "i":I
    :cond_4
    if-nez v6, :cond_6

    .line 1182
    new-array v6, v3, [S

    .line 1183
    const/4 v2, 0x0

    .local v2, "i":S
    :goto_4
    if-ge v2, v3, :cond_5

    .line 1184
    aput-short v2, v6, v2

    .line 1183
    add-int/lit8 v7, v2, 0x1

    int-to-short v2, v7

    goto :goto_4

    .line 1185
    .end local v2    # "i":S
    :cond_5
    move v9, v3

    .line 1188
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    .line 1189
    .local v2, "numIndices":I
    const/4 v7, 0x0

    .line 1190
    .local v7, "indices":[S
    if-lez v2, :cond_11

    .line 1191
    new-array v7, v2, [S

    .line 1192
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 1193
    if-nez p2, :cond_8

    if-eq v9, v3, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v19, v2

    goto/16 :goto_c

    .line 1194
    :cond_8
    :goto_5
    array-length v10, v5

    new-array v10, v10, [F

    .line 1195
    .local v10, "tmp":[F
    const/4 v11, 0x0

    .line 1196
    .local v11, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    if-ge v12, v2, :cond_10

    .line 1197
    aget-short v13, v7, v12

    mul-int/2addr v13, v3

    .line 1198
    .local v13, "idx1":I
    const/4 v14, -0x1

    .line 1199
    .local v14, "newIndex":S
    if-eqz p2, :cond_d

    .line 1200
    const/4 v15, 0x0

    .local v15, "j":S
    :goto_7
    if-ge v15, v11, :cond_c

    if-gez v14, :cond_c

    .line 1201
    mul-int v17, v15, v9

    .line 1202
    .local v17, "idx2":I
    const/16 v18, 0x1

    .line 1203
    .local v18, "found":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    .local v0, "k":I
    :goto_8
    move/from16 v19, v2

    .end local v2    # "numIndices":I
    .local v19, "numIndices":I
    array-length v2, v6

    if-ge v0, v2, :cond_a

    if-eqz v18, :cond_a

    .line 1204
    add-int v2, v17, v0

    aget v2, v10, v2

    aget-short v20, v6, v0

    add-int v20, v13, v20

    aget v20, v5, v20

    cmpl-float v2, v2, v20

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move/from16 v18, v2

    .line 1203
    :cond_9
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v19

    goto :goto_8

    .line 1206
    .end local v0    # "k":I
    :cond_a
    if-eqz v18, :cond_b

    move v14, v15

    .line 1200
    .end local v17    # "idx2":I
    .end local v18    # "found":Z
    :cond_b
    add-int/lit8 v0, v15, 0x1

    int-to-short v15, v0

    move-object/from16 v0, p0

    move/from16 v2, v19

    goto :goto_7

    .end local v19    # "numIndices":I
    .restart local v2    # "numIndices":I
    :cond_c
    move/from16 v19, v2

    .end local v2    # "numIndices":I
    .restart local v19    # "numIndices":I
    goto :goto_9

    .line 1199
    .end local v15    # "j":S
    .end local v19    # "numIndices":I
    .restart local v2    # "numIndices":I
    :cond_d
    move/from16 v19, v2

    .line 1209
    .end local v2    # "numIndices":I
    .restart local v19    # "numIndices":I
    :goto_9
    if-lez v14, :cond_e

    .line 1210
    aput-short v14, v7, v12

    goto :goto_b

    .line 1212
    :cond_e
    mul-int v0, v11, v9

    .line 1213
    .local v0, "idx":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a
    array-length v15, v6

    if-ge v2, v15, :cond_f

    .line 1214
    add-int v15, v0, v2

    aget-short v17, v6, v2

    add-int v17, v13, v17

    aget v17, v5, v17

    aput v17, v10, v15

    .line 1213
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1215
    .end local v2    # "j":I
    :cond_f
    int-to-short v2, v11

    aput-short v2, v7, v12

    .line 1216
    add-int/lit8 v11, v11, 0x1

    .line 1196
    .end local v0    # "idx":I
    .end local v13    # "idx1":I
    .end local v14    # "newIndex":S
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    goto :goto_6

    .end local v19    # "numIndices":I
    .local v2, "numIndices":I
    :cond_10
    move/from16 v19, v2

    .line 1219
    .end local v2    # "numIndices":I
    .end local v12    # "i":I
    .restart local v19    # "numIndices":I
    move-object v5, v10

    .line 1220
    move v4, v11

    goto :goto_c

    .line 1190
    .end local v10    # "tmp":[F
    .end local v11    # "size":I
    .end local v19    # "numIndices":I
    .restart local v2    # "numIndices":I
    :cond_11
    move/from16 v19, v2

    .line 1225
    .end local v2    # "numIndices":I
    .restart local v19    # "numIndices":I
    :goto_c
    if-nez v8, :cond_13

    .line 1226
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v7, :cond_12

    const/4 v2, 0x0

    goto :goto_d

    :cond_12
    array-length v2, v7

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v10

    invoke-direct {v0, v1, v4, v2, v10}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .local v0, "result":Lcom/badlogic/gdx/graphics/Mesh;
    goto :goto_f

    .line 1228
    .end local v0    # "result":Lcom/badlogic/gdx/graphics/Mesh;
    :cond_13
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v7, :cond_14

    const/4 v2, 0x0

    goto :goto_e

    :cond_14
    array-length v2, v7

    :goto_e
    invoke-direct {v0, v1, v4, v2, v8}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 1229
    .restart local v0    # "result":Lcom/badlogic/gdx/graphics/Mesh;
    :goto_f
    mul-int v2, v4, v9

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1230
    if-eqz v7, :cond_15

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1231
    :cond_15
    return-object v0
.end method

.method public disableInstancedRendering()Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->dispose()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    .line 213
    :cond_0
    return-object p0
.end method

.method public dispose()V
    .locals 2

    .line 651
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->dispose()V

    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->dispose()V

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->dispose()V

    .line 655
    return-void
.end method

.method public varargs enableInstancedRendering(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "maxInstances"    # I
    .param p3, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 197
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    .line 199
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    .line 204
    return-object p0

    .line 201
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Trying to enable InstancedRendering on same Mesh instance twice. Use disableInstancedRendering to clean up old InstanceData first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 19
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 762
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v5

    .line 763
    .local v5, "numIndices":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v6

    .line 764
    .local v6, "numVertices":I
    if-nez v5, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    .line 765
    .local v7, "max":I
    :goto_0
    if-ltz v2, :cond_13

    const/4 v8, 0x1

    if-lt v3, v8, :cond_13

    add-int v9, v2, v3

    if-gt v9, v7, :cond_13

    .line 768
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v9}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 769
    .local v9, "verts":Ljava/nio/FloatBuffer;
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v10}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 770
    .local v10, "index":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v11

    .line 771
    .local v11, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v12, v11, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v12, v12, 0x4

    .line 772
    .local v12, "posoff":I
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v13}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v13

    iget v13, v13, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v13, v13, 0x4

    .line 773
    .local v13, "vertexSize":I
    add-int v14, v2, v3

    .line 775
    .local v14, "end":I
    iget v15, v11, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    move/from16 v16, v6

    .end local v6    # "numVertices":I
    .local v16, "numVertices":I
    const/4 v6, 0x0

    if-eq v15, v8, :cond_c

    const/4 v8, 0x2

    if-eq v15, v8, :cond_6

    const/4 v6, 0x3

    if-eq v15, v6, :cond_1

    move/from16 v18, v7

    move-object/from16 v17, v11

    goto/16 :goto_7

    .line 811
    :cond_1
    if-lez v5, :cond_4

    .line 812
    move/from16 v6, p2

    .local v6, "i":I
    :goto_1
    if-ge v6, v14, :cond_3

    .line 813
    invoke-virtual {v10, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v8

    mul-int/2addr v8, v13

    add-int/2addr v8, v12

    .line 814
    .local v8, "idx":I
    iget-object v15, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v17, v11

    .end local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .local v17, "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    move/from16 v18, v7

    .end local v7    # "max":I
    .local v18, "max":I
    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v3, v8, 0x2

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v15, v11, v7, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 815
    if-eqz v4, :cond_2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 816
    :cond_2
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 812
    .end local v8    # "idx":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, p3

    move-object/from16 v11, v17

    move/from16 v7, v18

    goto :goto_1

    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "max":I
    .restart local v7    # "max":I
    .restart local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_3
    move/from16 v18, v7

    move-object/from16 v17, v11

    .end local v6    # "i":I
    .end local v7    # "max":I
    .end local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18    # "max":I
    goto/16 :goto_7

    .line 819
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "max":I
    .restart local v7    # "max":I
    .restart local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_4
    move/from16 v18, v7

    move-object/from16 v17, v11

    .end local v7    # "max":I
    .end local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18    # "max":I
    move/from16 v3, p2

    .local v3, "i":I
    :goto_2
    if-ge v3, v14, :cond_12

    .line 820
    mul-int v6, v3, v13

    add-int/2addr v6, v12

    .line 821
    .local v6, "idx":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    add-int/lit8 v15, v6, 0x2

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    invoke-virtual {v7, v8, v11, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 822
    if-eqz v4, :cond_5

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 823
    :cond_5
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 819
    .end local v6    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 794
    .end local v3    # "i":I
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "max":I
    .restart local v7    # "max":I
    .restart local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_6
    move/from16 v18, v7

    move-object/from16 v17, v11

    .end local v7    # "max":I
    .end local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18    # "max":I
    if-lez v5, :cond_9

    .line 795
    move/from16 v3, p2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v14, :cond_8

    .line 796
    invoke-virtual {v10, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    mul-int/2addr v7, v13

    add-int/2addr v7, v12

    .line 797
    .local v7, "idx":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    invoke-virtual {v8, v11, v15, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 798
    if-eqz v4, :cond_7

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 799
    :cond_7
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 795
    .end local v7    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    :cond_8
    goto/16 :goto_7

    .line 802
    :cond_9
    move/from16 v3, p2

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v14, :cond_b

    .line 803
    mul-int v7, v3, v13

    add-int/2addr v7, v12

    .line 804
    .restart local v7    # "idx":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v15

    invoke-virtual {v8, v11, v15, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 805
    if-eqz v4, :cond_a

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 806
    :cond_a
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 802
    .end local v7    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 809
    .end local v3    # "i":I
    :cond_b
    goto :goto_7

    .line 777
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "max":I
    .local v7, "max":I
    .restart local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_c
    move/from16 v18, v7

    move-object/from16 v17, v11

    .end local v7    # "max":I
    .end local v11    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .restart local v18    # "max":I
    if-lez v5, :cond_f

    .line 778
    move/from16 v3, p2

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v14, :cond_e

    .line 779
    invoke-virtual {v10, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    mul-int/2addr v7, v13

    add-int/2addr v7, v12

    .line 780
    .local v7, "idx":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    invoke-virtual {v8, v11, v6, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 781
    if-eqz v4, :cond_d

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 782
    :cond_d
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 778
    .end local v7    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v3    # "i":I
    :cond_e
    goto :goto_7

    .line 785
    :cond_f
    move/from16 v3, p2

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v14, :cond_11

    .line 786
    mul-int v7, v3, v13

    add-int/2addr v7, v12

    .line 787
    .restart local v7    # "idx":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    invoke-virtual {v8, v11, v6, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 788
    if-eqz v4, :cond_10

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 789
    :cond_10
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/Mesh;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 785
    .end local v7    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 792
    .end local v3    # "i":I
    :cond_11
    nop

    .line 828
    :cond_12
    :goto_7
    return-object v1

    .line 765
    .end local v9    # "verts":Ljava/nio/FloatBuffer;
    .end local v10    # "index":Ljava/nio/ShortBuffer;
    .end local v12    # "posoff":I
    .end local v13    # "vertexSize":I
    .end local v14    # "end":I
    .end local v16    # "numVertices":I
    .end local v17    # "posAttrib":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v18    # "max":I
    .local v6, "numVertices":I
    .local v7, "max":I
    :cond_13
    move/from16 v16, v6

    move/from16 v18, v7

    .line 766
    .end local v6    # "numVertices":I
    .end local v7    # "max":I
    .restart local v16    # "numVertices":I
    .restart local v18    # "max":I
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid part specified ( offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", max="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v18

    .end local v18    # "max":I
    .local v8, "max":I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " )"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getIndices(II[SI)V
    .locals 4
    .param p1, "srcOffset"    # I
    .param p2, "count"    # I
    .param p3, "indices"    # [S
    .param p4, "destOffset"    # I

    .line 444
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    .line 445
    .local v0, "max":I
    if-gez p2, :cond_0

    sub-int p2, v0, p1

    .line 446
    :cond_0
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    add-int v1, p1, p2

    if-gt v1, v0, :cond_2

    .line 449
    array-length v1, p3

    sub-int/2addr v1, p4

    if-lt v1, p2, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 452
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 453
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 454
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 455
    return-void

    .line 450
    .end local v1    # "pos":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not enough room in indices array, has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shorts, needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid range specified, offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIndices(I[SI)V
    .locals 1
    .param p1, "srcOffset"    # I
    .param p2, "indices"    # [S
    .param p3, "destOffset"    # I

    .line 434
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 435
    return-void
.end method

.method public getIndices([S)V
    .locals 1
    .param p1, "indices"    # [S

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([SI)V

    .line 418
    return-void
.end method

.method public getIndices([SI)V
    .locals 1
    .param p1, "indices"    # [S
    .param p2, "destOffset"    # I

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(I[SI)V

    .line 426
    return-void
.end method

.method public getIndicesBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIndices()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    return v0
.end method

.method public getMaxVertices()I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumMaxVertices()I

    move-result v0

    return v0
.end method

.method public getNumIndices()I
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumVertices()I

    move-result v0

    return v0
.end method

.method public getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4
    .param p1, "usage"    # I

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    .line 663
    .local v0, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 664
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 665
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    return-object v3

    .line 664
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getVertexSize()I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    return v0
.end method

.method public getVertices(II[F)[F
    .locals 1
    .param p1, "srcOffset"    # I
    .param p2, "count"    # I
    .param p3, "vertices"    # [F

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices(II[FI)[F
    .locals 4
    .param p1, "srcOffset"    # I
    .param p2, "count"    # I
    .param p3, "vertices"    # [F
    .param p4, "destOffset"    # I

    .line 375
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 376
    .local v0, "max":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 377
    sub-int p2, v0, p1

    .line 378
    array-length v1, p3

    sub-int/2addr v1, p4

    if-le p2, v1, :cond_0

    array-length v1, p3

    sub-int p2, v1, p4

    .line 380
    :cond_0
    if-ltz p1, :cond_2

    if-lez p2, :cond_2

    add-int v1, p1, p2

    if-gt v1, v0, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p3

    if-ge p4, v1, :cond_2

    .line 382
    array-length v1, p3

    sub-int/2addr v1, p4

    if-lt v1, p2, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .line 386
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 387
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 388
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 389
    return-object p3

    .line 383
    .end local v1    # "pos":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not enough room in vertices array, has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " floats, needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getVertices(I[F)[F
    .locals 1
    .param p1, "srcOffset"    # I
    .param p2, "vertices"    # [F

    .line 356
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices([F)[F
    .locals 2
    .param p1, "vertices"    # [F

    .line 348
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .locals 7
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"    # I

    .line 550
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    :goto_0
    move v5, v0

    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V

    .line 551
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .line 577
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V

    .line 578
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;IIIZ)V
    .locals 8
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "primitiveType"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "autoBind"    # Z

    .line 605
    if-nez p4, :cond_0

    return-void

    .line 607
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 609
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    const/16 v1, 0x1403

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 612
    .local v0, "buffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 613
    .local v2, "oldPosition":I
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v3

    .line 614
    .local v3, "oldLimit":I
    invoke-virtual {v0, p3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 615
    add-int v4, p3, p4

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 616
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, p2, p4, v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 617
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 618
    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 619
    .end local v0    # "buffer":Ljava/nio/ShortBuffer;
    .end local v2    # "oldPosition":I
    .end local v3    # "oldLimit":I
    goto/16 :goto_0

    .line 620
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    goto/16 :goto_0

    .line 623
    :cond_3
    const/4 v0, 0x0

    .line 624
    .local v0, "numInstances":I
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->getNumInstances()I

    move-result v0

    .line 626
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v2

    if-lez v2, :cond_7

    .line 627
    add-int v2, p4, p3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 632
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v2, :cond_5

    if-lez v0, :cond_5

    .line 633
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/16 v5, 0x1403

    mul-int/lit8 v6, p3, 0x2

    move v3, p2

    move v4, p4

    move v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElementsInstanced(IIIII)V

    goto :goto_0

    .line 635
    :cond_5
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    mul-int/lit8 v3, p3, 0x2

    invoke-interface {v2, p2, p4, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    goto :goto_0

    .line 628
    :cond_6
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh attempting to access memory outside of the index buffer (count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 629
    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    :cond_7
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isInstanced:Z

    if-eqz v1, :cond_8

    if-lez v0, :cond_8

    .line 639
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v1, p2, p3, p4, v0}, Lcom/badlogic/gdx/graphics/GL30;->glDrawArraysInstanced(IIII)V

    goto :goto_0

    .line 641
    :cond_8
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    .line 646
    .end local v0    # "numInstances":I
    :goto_0
    if-eqz p5, :cond_9

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 647
    :cond_9
    return-void
.end method

.method public scale(FFF)V
    .locals 10
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .line 988
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v1

    .line 989
    .local v1, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v2, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v2, v2, 0x4

    .line 990
    .local v2, "offset":I
    iget v3, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 991
    .local v3, "numComponents":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v4

    .line 992
    .local v4, "numVertices":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    .line 994
    .local v5, "vertexSize":I
    mul-int v6, v4, v5

    new-array v6, v6, [F

    .line 995
    .local v6, "vertices":[F
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 997
    move v7, v2

    .line 998
    .local v7, "idx":I
    if-eq v3, v0, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    goto :goto_3

    .line 1013
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_5

    .line 1014
    aget v8, v6, v7

    mul-float/2addr v8, p1

    aput v8, v6, v7

    .line 1015
    add-int/lit8 v8, v7, 0x1

    aget v9, v6, v8

    mul-float/2addr v9, p2

    aput v9, v6, v8

    .line 1016
    add-int/lit8 v8, v7, 0x2

    aget v9, v6, v8

    mul-float/2addr v9, p3

    aput v9, v6, v8

    .line 1017
    add-int/2addr v7, v5

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 1007
    aget v8, v6, v7

    mul-float/2addr v8, p1

    aput v8, v6, v7

    .line 1008
    add-int/lit8 v8, v7, 0x1

    aget v9, v6, v8

    mul-float/2addr v9, p2

    aput v9, v6, v8

    .line 1009
    add-int/2addr v7, v5

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1011
    .end local v0    # "i":I
    :cond_2
    goto :goto_3

    .line 1000
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_4

    .line 1001
    aget v8, v6, v7

    mul-float/2addr v8, p1

    aput v8, v6, v7

    .line 1002
    add-int/2addr v7, v5

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1004
    .end local v0    # "i":I
    :cond_4
    nop

    .line 1022
    :cond_5
    :goto_3
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1023
    return-void
.end method

.method public setAutoBind(Z)V
    .locals 0
    .param p1, "autoBind"    # Z

    .line 489
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 490
    return-void
.end method

.method public setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3
    .param p1, "indices"    # [S

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 399
    return-object p0
.end method

.method public setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "indices"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 411
    return-object p0
.end method

.method public setInstanceData(Ljava/nio/FloatBuffer;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "instanceData"    # Ljava/nio/FloatBuffer;

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData(Ljava/nio/FloatBuffer;I)V

    .line 269
    return-object p0

    .line 266
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData(Ljava/nio/FloatBuffer;I)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "instanceData"    # Ljava/nio/FloatBuffer;
    .param p2, "count"    # I

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData(Ljava/nio/FloatBuffer;I)V

    .line 255
    return-object p0

    .line 253
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData([F)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3
    .param p1, "instanceData"    # [F

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData([FII)V

    .line 241
    return-object p0

    .line 239
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData([FII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "instanceData"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->setInstanceData([FII)V

    .line 228
    return-object p0

    .line 226
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An InstanceBufferObject must be set before setting instance data!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3
    .param p1, "vertices"    # [F

    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 313
    return-object p0
.end method

.method public setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 325
    return-object p0
.end method

.method public transform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 1030
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;II)V

    .line 1031
    return-void
.end method

.method public transform(Lcom/badlogic/gdx/math/Matrix4;II)V
    .locals 14
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 1035
    move-object v0, p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    .line 1036
    .local v8, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v1, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v9, v1, 0x4

    .line 1037
    .local v9, "posOffset":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v1

    div-int/lit8 v10, v1, 0x4

    .line 1038
    .local v10, "stride":I
    iget v11, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 1039
    .local v11, "numComponents":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v12

    .line 1041
    .local v12, "numVertices":I
    mul-int v1, p3, v10

    new-array v13, v1, [F

    .line 1042
    .local v13, "vertices":[F
    mul-int v1, p2, v10

    mul-int v2, p3, v10

    invoke-virtual {p0, v1, v2, v13}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 1044
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v13

    move v3, v10

    move v4, v9

    move v5, v11

    move/from16 v7, p3

    invoke-static/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V

    .line 1046
    mul-int v1, p2, v10

    invoke-virtual {p0, v1, v13}, Lcom/badlogic/gdx/graphics/Mesh;->updateVertices(I[F)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1047
    return-void
.end method

.method public transformUV(Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .line 1101
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->transformUV(Lcom/badlogic/gdx/math/Matrix3;II)V

    .line 1102
    return-void
.end method

.method protected transformUV(Lcom/badlogic/gdx/math/Matrix3;II)V
    .locals 12
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 1106
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 1107
    .local v0, "posAttr":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    .line 1108
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v2

    div-int/lit8 v8, v2, 0x4

    .line 1109
    .local v8, "vertexSize":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v9

    .line 1111
    .local v9, "numVertices":I
    mul-int v2, v9, v8

    new-array v10, v2, [F

    .line 1113
    .local v10, "vertices":[F
    array-length v2, v10

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v2, v10}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    .line 1114
    move-object v2, p1

    move-object v3, v10

    move v4, v8

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/Mesh;->transformUV(Lcom/badlogic/gdx/math/Matrix3;[FIIII)V

    .line 1115
    array-length v2, v10

    invoke-virtual {p0, v10, v11, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 1117
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 517
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->getNumInstances()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->unbind()V

    .line 528
    :cond_1
    return-void
.end method

.method public updateInstanceData(ILjava/nio/FloatBuffer;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "targetOffset"    # I
    .param p2, "source"    # Ljava/nio/FloatBuffer;

    .line 293
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->updateInstanceData(ILjava/nio/FloatBuffer;II)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public updateInstanceData(ILjava/nio/FloatBuffer;II)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "targetOffset"    # I
    .param p2, "source"    # Ljava/nio/FloatBuffer;
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->updateInstanceData(ILjava/nio/FloatBuffer;II)V

    .line 303
    return-object p0
.end method

.method public updateInstanceData(I[F)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "targetOffset"    # I
    .param p2, "source"    # [F

    .line 276
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->updateInstanceData(I[FII)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public updateInstanceData(I[FII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "targetOffset"    # I
    .param p2, "source"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->instances:Lcom/badlogic/gdx/graphics/glutils/InstanceData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/InstanceData;->updateInstanceData(I[FII)V

    .line 286
    return-object p0
.end method

.method public updateVertices(I[F)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 2
    .param p1, "targetOffset"    # I
    .param p2, "source"    # [F

    .line 332
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->updateVertices(I[FII)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public updateVertices(I[FII)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p1, "targetOffset"    # I
    .param p2, "source"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->updateVertices(I[FII)V

    .line 342
    return-object p0
.end method
