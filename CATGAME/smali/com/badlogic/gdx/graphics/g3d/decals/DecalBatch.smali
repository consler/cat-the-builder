.class public Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;
.super Ljava/lang/Object;
.source "DecalBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private final groupList:Lcom/badlogic/gdx/utils/SortedIntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private final groupPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final usedGroups:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private vertices:[F


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "groupStrategy"    # Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    .line 75
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->initialize(I)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->setGroupStrategy(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 1
    .param p1, "groupStrategy"    # Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .line 71
    const/16 v0, 0x3e8

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;-><init>(ILcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V

    .line 72
    return-void
.end method

.method private render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/utils/Array;)V
    .locals 8
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "decals":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "lastMaterial":Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
    const/4 v1, 0x0

    .line 158
    .local v1, "idx":I
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .line 159
    .local v3, "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    :cond_0
    if-lez v1, :cond_1

    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 162
    const/4 v1, 0x0

    .line 164
    :cond_1
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->set()V

    .line 165
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 167
    :cond_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->update()V

    .line 168
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    array-length v7, v7

    invoke-static {v4, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    array-length v4, v4

    add-int/2addr v1, v4

    .line 171
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    array-length v4, v4

    if-ne v1, v4, :cond_3

    .line 172
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 173
    const/4 v1, 0x0

    .line 175
    .end local v3    # "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    :cond_3
    goto :goto_0

    .line 177
    :cond_4
    if-lez v1, :cond_5

    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 180
    :cond_5
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)V
    .locals 3
    .param p1, "decal"    # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->decideGroup(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I

    move-result v0

    .line 123
    .local v0, "groupIndex":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/SortedIntList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 124
    .local v1, "targetGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    if-nez v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 126
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 127
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 128
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/utils/SortedIntList;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method protected clear()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList;->clear()V

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 195
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->clear()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 203
    return-void
.end method

.method public flush()V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->render()V

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->clear()V

    .line 137
    return-void
.end method

.method protected flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .locals 4
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "verticesPosition"    # I

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    div-int/lit8 v1, p2, 0x4

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 188
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public initialize(I)V
    .locals 11
    .param p1, "size"    # I

    .line 89
    mul-int/lit8 v0, p1, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    .line 91
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 92
    .local v0, "vertexDataType":Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v1, :cond_0

    .line 93
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 95
    :cond_0
    new-instance v7, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v3, 0x0

    mul-int/lit8 v4, p1, 0x4

    mul-int/lit8 v5, p1, 0x6

    const/4 v1, 0x3

    new-array v6, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x0

    new-instance v8, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v9, 0x1

    const-string v10, "a_position"

    invoke-direct {v8, v9, v1, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v8, v6, v2

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x4

    const-string v8, "a_color"

    invoke-direct {v1, v2, v2, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v6, v9

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v2, 0x10

    const/4 v8, 0x2

    const-string v9, "a_texCoord0"

    invoke-direct {v1, v2, v8, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v6, v8

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 100
    mul-int/lit8 v1, p1, 0x6

    new-array v1, v1, [S

    .line 101
    .local v1, "indices":[S
    const/4 v2, 0x0

    .line 102
    .local v2, "v":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 103
    int-to-short v4, v2

    aput-short v4, v1, v3

    .line 104
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 105
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 106
    add-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 107
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 108
    add-int/lit8 v4, v3, 0x5

    add-int/lit8 v5, v2, 0x3

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 102
    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 111
    return-void
.end method

.method protected render()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->beforeGroups()V

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 143
    .local v1, "group":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v3, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    iget-object v4, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->beforeGroup(ILcom/badlogic/gdx/utils/Array;)V

    .line 144
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v3, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->getGroupShader(I)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    .line 145
    .local v2, "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    iget-object v3, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/utils/Array;)V

    .line 146
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v4, v1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->afterGroup(I)V

    .line 147
    .end local v1    # "group":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;>;"
    .end local v2    # "shader":Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->afterGroups()V

    .line 149
    return-void
.end method

.method public setGroupStrategy(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 0
    .param p1, "groupStrategy"    # Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .line 83
    return-void
.end method
