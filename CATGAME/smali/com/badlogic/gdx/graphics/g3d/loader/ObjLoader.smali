.class public Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;
.super Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.source "ObjLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;,
        Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader<",
        "Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static logWarning:Z


# instance fields
.field final groups:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;",
            ">;"
        }
    .end annotation
.end field

.field final norms:Lcom/badlogic/gdx/utils/FloatArray;

.field final uvs:Lcom/badlogic/gdx/utils/FloatArray;

.field final verts:Lcom/badlogic/gdx/utils/FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->logWarning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 2
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 90
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 80
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    .line 91
    return-void
.end method

.method private getIndex(Ljava/lang/String;I)I
    .locals 2
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 302
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 305
    add-int v1, p2, v0

    return v1

    .line 307
    :cond_1
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 302
    .end local v0    # "idx":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    .line 294
    .local v1, "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 295
    .end local v1    # "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;-><init>(Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;Ljava/lang/String;)V

    .line 297
    .local v0, "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 298
    return-object v0
.end method


# virtual methods
.method public loadModel(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 1
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flipV"    # Z

    .line 95
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 0

    .line 64
    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object p1

    return-object p1
.end method

.method public loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "parameters"    # Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    .line 100
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;->flipV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    return-object v0
.end method

.method protected loadModelData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 33
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flipV"    # Z

    .line 104
    move-object/from16 v1, p0

    const-string v0, "/"

    sget-boolean v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->logWarning:Z

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "ObjLoader"

    const-string v4, "Wavefront (OBJ) is not fully supported, consult the documentation for more information"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;-><init>()V

    .line 113
    .local v2, "mtl":Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    const-string v4, "default"

    invoke-direct {v3, v1, v4}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;-><init>(Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;Ljava/lang/String;)V

    .line 114
    .local v3, "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 116
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x1000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 117
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 119
    .local v6, "id":I
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v8

    .local v9, "line":Ljava/lang/String;
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v8, :cond_18

    .line 121
    :try_start_1
    const-string v8, "\\s+"

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "tokens":[Ljava/lang/String;
    array-length v15, v8

    if-ge v15, v14, :cond_2

    goto/16 :goto_4

    .line 124
    :cond_2
    aget-object v15, v8, v13

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    aget-object v15, v8, v13

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    .local v16, "firstChar":C
    const/16 v7, 0x23

    if-ne v15, v7, :cond_4

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    const/16 v7, 0x76

    move/from16 v15, v16

    .end local v16    # "firstChar":C
    .local v15, "firstChar":C
    if-ne v15, v7, :cond_8

    .line 129
    aget-object v7, v8, v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v14, :cond_5

    .line 130
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v10, v8, v14

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 131
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v10, v8, v12

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 132
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v10, v8, v11

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_0

    .line 133
    :cond_5
    aget-object v7, v8, v13

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x6e

    if-ne v7, v10, :cond_6

    .line 134
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v10, v8, v14

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 135
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v10, v8, v12

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 136
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v10, v8, v11

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto/16 :goto_0

    .line 137
    :cond_6
    aget-object v7, v8, v13

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x74

    if-ne v7, v10, :cond_1

    .line 138
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v10, v8, v14

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 139
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    if-eqz p2, :cond_7

    aget-object v10, v8, v12

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    goto :goto_1

    :cond_7
    aget-object v10, v8, v12

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    :goto_1
    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto/16 :goto_0

    .line 141
    :cond_8
    const/16 v7, 0x66

    if-ne v15, v7, :cond_12

    .line 143
    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    .line 144
    .local v7, "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_2
    array-length v11, v8

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_11

    .line 145
    aget-object v11, v8, v14

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "parts":[Ljava/lang/String;
    aget-object v14, v11, v13

    iget-object v13, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v14, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 147
    array-length v13, v11

    if-le v13, v12, :cond_a

    .line 148
    const/4 v13, 0x1

    if-ne v10, v13, :cond_9

    iput-boolean v13, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasNorms:Z

    .line 149
    :cond_9
    aget-object v13, v11, v12

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 151
    :cond_a
    array-length v13, v11

    const/4 v14, 0x1

    if-le v13, v14, :cond_c

    aget-object v13, v11, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 152
    if-ne v10, v14, :cond_b

    iput-boolean v14, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasUVs:Z

    .line 153
    :cond_b
    aget-object v13, v11, v14

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 155
    :cond_c
    add-int/lit8 v10, v10, 0x1

    aget-object v13, v8, v10

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 156
    const/4 v13, 0x0

    aget-object v14, v11, v13

    iget-object v13, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v14, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 157
    array-length v13, v11

    if-le v13, v12, :cond_d

    aget-object v13, v11, v12

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 158
    :cond_d
    array-length v13, v11

    const/4 v14, 0x1

    if-le v13, v14, :cond_e

    aget-object v13, v11, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_e

    aget-object v13, v11, v14

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 159
    :cond_e
    add-int/lit8 v10, v10, 0x1

    aget-object v13, v8, v10

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 160
    const/4 v13, 0x0

    aget-object v14, v11, v13

    iget-object v13, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v14, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 161
    array-length v13, v11

    if-le v13, v12, :cond_f

    aget-object v13, v11, v12

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 162
    :cond_f
    array-length v13, v11

    const/4 v14, 0x1

    if-le v13, v14, :cond_10

    aget-object v13, v11, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_10

    aget-object v13, v11, v14

    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, v14, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v1, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 163
    :cond_10
    iget v13, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    iput v13, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    .line 144
    add-int/lit8 v10, v10, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 165
    .end local v7    # "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "parts":[Ljava/lang/String;
    :cond_11
    goto/16 :goto_0

    :cond_12
    const/16 v7, 0x6f

    if-eq v15, v7, :cond_16

    const/16 v7, 0x67

    if-ne v15, v7, :cond_13

    goto :goto_3

    .line 174
    :cond_13
    const/4 v7, 0x0

    aget-object v10, v8, v7

    const-string v7, "mtllib"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    goto/16 :goto_0

    .line 176
    :cond_14
    const/4 v7, 0x0

    aget-object v7, v8, v7

    const-string/jumbo v10, "usemtl"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 177
    array-length v7, v8

    const/4 v10, 0x1

    if-ne v7, v10, :cond_15

    .line 178
    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    goto/16 :goto_0

    .line 180
    :cond_15
    aget-object v7, v8, v10

    const/16 v10, 0x2e

    const/16 v11, 0x5f

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    goto/16 :goto_0

    .line 170
    :cond_16
    :goto_3
    array-length v7, v8

    const/4 v10, 0x1

    if-le v7, v10, :cond_17

    .line 171
    aget-object v7, v8, v10

    invoke-direct {v1, v7}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    move-result-object v7

    move-object v3, v7

    goto/16 :goto_0

    .line 173
    :cond_17
    invoke-direct {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v7

    goto/16 :goto_0

    .line 184
    .end local v8    # "tokens":[Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v15    # "firstChar":C
    :catch_0
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v20, v5

    goto/16 :goto_12

    .line 183
    .restart local v9    # "line":Ljava/lang/String;
    :cond_18
    :goto_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    nop

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v7, :cond_1a

    .line 190
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_19

    .line 191
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 192
    add-int/lit8 v0, v0, -0x1

    .line 189
    :cond_19
    add-int/2addr v0, v8

    goto :goto_5

    :cond_1a
    const/4 v8, 0x1

    .line 197
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v8, :cond_1b

    const/4 v4, 0x0

    return-object v4

    .line 200
    :cond_1b
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 202
    .local v0, "numGroups":I
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;-><init>()V

    .line 204
    .local v7, "data":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    const/4 v8, 0x0

    .local v8, "g":I
    :goto_6
    if-ge v8, v0, :cond_28

    .line 205
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    .line 206
    .local v10, "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    .line 207
    .local v13, "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    iget v14, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 208
    .local v14, "numElements":I
    iget v15, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    .line 209
    .local v15, "numFaces":I
    iget-boolean v12, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasNorms:Z

    .line 210
    .local v12, "hasNorms":Z
    iget-boolean v11, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasUVs:Z

    .line 212
    .local v11, "hasUVs":Z
    mul-int/lit8 v20, v15, 0x3

    if-eqz v12, :cond_1c

    const/16 v21, 0x3

    goto :goto_7

    :cond_1c
    const/16 v21, 0x0

    :goto_7
    const/16 v19, 0x3

    add-int/lit8 v21, v21, 0x3

    if-eqz v11, :cond_1d

    const/16 v22, 0x2

    goto :goto_8

    :cond_1d
    const/16 v22, 0x0

    :goto_8
    add-int v21, v21, v22

    move/from16 v22, v0

    .end local v0    # "numGroups":I
    .local v22, "numGroups":I
    mul-int v0, v20, v21

    new-array v0, v0, [F

    .line 214
    .local v0, "finalVerts":[F
    const/16 v20, 0x0

    .local v20, "i":I
    const/16 v21, 0x0

    move-object/from16 v23, v3

    move/from16 v3, v20

    .end local v20    # "i":I
    .local v3, "i":I
    .local v21, "vi":I
    .local v23, "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    :goto_9
    if-ge v3, v14, :cond_20

    .line 215
    move-object/from16 v20, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v20, "reader":Ljava/io/BufferedReader;
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v13, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v19, 0x3

    mul-int/lit8 v3, v3, 0x3

    .line 216
    .local v3, "vertIndex":I
    add-int/lit8 v24, v21, 0x1

    move-object/from16 v25, v9

    .end local v9    # "line":Ljava/lang/String;
    .end local v21    # "vi":I
    .local v24, "vi":I
    .local v25, "line":Ljava/lang/String;
    iget-object v9, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 v26, v14

    .end local v14    # "numElements":I
    .local v26, "numElements":I
    add-int/lit8 v14, v3, 0x1

    .end local v3    # "vertIndex":I
    .local v14, "vertIndex":I
    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    aput v3, v0, v21

    .line 217
    add-int/lit8 v3, v24, 0x1

    .end local v24    # "vi":I
    .local v3, "vi":I
    iget-object v9, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 v27, v8

    .end local v8    # "g":I
    .local v27, "g":I
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "vertIndex":I
    .local v8, "vertIndex":I
    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    aput v9, v0, v24

    .line 218
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "vi":I
    .local v9, "vi":I
    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    aput v14, v0, v3

    .line 219
    if-eqz v12, :cond_1e

    .line 220
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .local v3, "i":I
    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v14, 0x3

    mul-int/2addr v5, v14

    .line 221
    .local v5, "normIndex":I
    add-int/lit8 v14, v9, 0x1

    move/from16 v21, v3

    .end local v3    # "i":I
    .end local v9    # "vi":I
    .local v14, "vi":I
    .local v21, "i":I
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 v24, v8

    .end local v8    # "vertIndex":I
    .local v24, "vertIndex":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "normIndex":I
    .local v8, "normIndex":I
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    aput v3, v0, v9

    .line 222
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "vi":I
    .local v3, "vi":I
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "normIndex":I
    .local v9, "normIndex":I
    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    aput v5, v0, v14

    .line 223
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "vi":I
    .local v5, "vi":I
    iget-object v8, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    aput v8, v0, v3

    move v9, v5

    move/from16 v5, v21

    goto :goto_a

    .line 219
    .end local v21    # "i":I
    .end local v24    # "vertIndex":I
    .local v5, "i":I
    .local v8, "vertIndex":I
    .local v9, "vi":I
    :cond_1e
    move/from16 v24, v8

    .line 225
    .end local v8    # "vertIndex":I
    .restart local v24    # "vertIndex":I
    :goto_a
    if-eqz v11, :cond_1f

    .line 226
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .local v3, "i":I
    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x2

    mul-int/2addr v5, v8

    .line 227
    .local v5, "uvIndex":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "vi":I
    .local v8, "vi":I
    iget-object v14, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 v21, v3

    .end local v3    # "i":I
    .restart local v21    # "i":I
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "uvIndex":I
    .local v3, "uvIndex":I
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    aput v5, v0, v9

    .line 228
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "vi":I
    .local v5, "vi":I
    iget-object v9, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    aput v9, v0, v8

    move/from16 v3, v21

    move/from16 v21, v5

    goto :goto_b

    .line 225
    .end local v3    # "uvIndex":I
    .end local v21    # "i":I
    .local v5, "i":I
    .restart local v9    # "vi":I
    :cond_1f
    move v3, v5

    move/from16 v21, v9

    .line 230
    .end local v5    # "i":I
    .end local v9    # "vi":I
    .end local v24    # "vertIndex":I
    .local v3, "i":I
    .local v21, "vi":I
    :goto_b
    move-object/from16 v5, v20

    move-object/from16 v9, v25

    move/from16 v14, v26

    move/from16 v8, v27

    goto/16 :goto_9

    .line 214
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .end local v25    # "line":Ljava/lang/String;
    .end local v26    # "numElements":I
    .end local v27    # "g":I
    .local v5, "reader":Ljava/io/BufferedReader;
    .local v8, "g":I
    .local v9, "line":Ljava/lang/String;
    .local v14, "numElements":I
    :cond_20
    move-object/from16 v20, v5

    move/from16 v27, v8

    move-object/from16 v25, v9

    move/from16 v26, v14

    .line 232
    .end local v3    # "i":I
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "g":I
    .end local v9    # "line":Ljava/lang/String;
    .end local v14    # "numElements":I
    .end local v21    # "vi":I
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v25    # "line":Ljava/lang/String;
    .restart local v26    # "numElements":I
    .restart local v27    # "g":I
    mul-int/lit8 v3, v15, 0x3

    const/16 v5, 0x7fff

    if-lt v3, v5, :cond_21

    const/4 v3, 0x0

    goto :goto_c

    :cond_21
    mul-int/lit8 v3, v15, 0x3

    .line 233
    .local v3, "numIndices":I
    :goto_c
    new-array v5, v3, [S

    .line 235
    .local v5, "finalIndices":[S
    if-lez v3, :cond_22

    .line 236
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d
    if-ge v8, v3, :cond_22

    .line 237
    int-to-short v9, v8

    aput-short v9, v5, v8

    .line 236
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 241
    .end local v8    # "i":I
    :cond_22
    new-instance v8, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 242
    .local v8, "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    new-instance v9, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v14, "a_position"

    move/from16 v21, v3

    move-object/from16 v19, v13

    const/4 v3, 0x3

    const/4 v13, 0x1

    .end local v3    # "numIndices":I
    .end local v13    # "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    .local v19, "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    .local v21, "numIndices":I
    invoke-direct {v9, v13, v3, v14}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 243
    if-eqz v12, :cond_23

    new-instance v9, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v13, 0x8

    const-string v14, "a_normal"

    invoke-direct {v9, v13, v3, v14}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 244
    :cond_23
    if-eqz v11, :cond_24

    new-instance v9, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v13, 0x10

    const-string v14, "a_texCoord0"

    const/4 v3, 0x2

    invoke-direct {v9, v13, v3, v14}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_e

    :cond_24
    const/4 v3, 0x2

    .line 246
    :goto_e
    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, "stringId":Ljava/lang/String;
    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "node"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    :cond_25
    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    .line 248
    .local v13, "nodeId":Ljava/lang/String;
    :goto_f
    iget-object v14, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_26
    iget-object v3, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    .line 249
    .local v3, "meshId":Ljava/lang/String;
    :goto_10
    iget-object v14, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v4

    const-string v4, "part"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_27
    move-object/from16 v28, v4

    iget-object v4, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    .line 250
    .local v4, "partId":Ljava/lang/String;
    :goto_11
    new-instance v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    invoke-direct {v14}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;-><init>()V

    .line 251
    .local v14, "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    iput-object v13, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    .line 252
    iput-object v3, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->meshId:Ljava/lang/String;

    .line 253
    move/from16 v29, v6

    .end local v6    # "id":I
    .local v29, "id":I
    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v30, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .end local v9    # "stringId":Ljava/lang/String;
    .local v30, "stringId":Ljava/lang/String;
    invoke-direct {v6, v9, v9, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v6, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 254
    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v6, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 255
    new-instance v6, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v6, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 256
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;-><init>()V

    .line 257
    .local v6, "pm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    iput-object v4, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    .line 258
    iget-object v9, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    iput-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    .line 259
    move/from16 v31, v11

    const/4 v9, 0x1

    .end local v11    # "hasUVs":Z
    .local v31, "hasUVs":Z
    new-array v11, v9, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    const/4 v9, 0x0

    aput-object v6, v11, v9

    iput-object v11, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    .line 260
    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;-><init>()V

    .line 261
    .local v9, "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    iput-object v4, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    .line 262
    iput-object v5, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    .line 263
    const/4 v11, 0x4

    iput v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    .line 264
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;-><init>()V

    .line 265
    .local v11, "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    iput-object v3, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->id:Ljava/lang/String;

    .line 266
    move-object/from16 v32, v3

    .end local v3    # "meshId":Ljava/lang/String;
    .local v32, "meshId":Ljava/lang/String;
    const-class v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    iput-object v3, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 267
    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    .line 268
    move-object/from16 v17, v0

    const/4 v3, 0x1

    .end local v0    # "finalVerts":[F
    .local v17, "finalVerts":[F
    new-array v0, v3, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    const/16 v18, 0x0

    aput-object v9, v0, v18

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 269
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 270
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 271
    iget-object v0, v10, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    move-result-object v0

    .line 272
    .local v0, "mm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v3, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 204
    .end local v0    # "mm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .end local v4    # "partId":Ljava/lang/String;
    .end local v5    # "finalIndices":[S
    .end local v6    # "pm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v8    # "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    .end local v9    # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v10    # "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .end local v11    # "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    .end local v12    # "hasNorms":Z
    .end local v13    # "nodeId":Ljava/lang/String;
    .end local v14    # "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    .end local v15    # "numFaces":I
    .end local v17    # "finalVerts":[F
    .end local v19    # "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    .end local v21    # "numIndices":I
    .end local v26    # "numElements":I
    .end local v30    # "stringId":Ljava/lang/String;
    .end local v31    # "hasUVs":Z
    .end local v32    # "meshId":Ljava/lang/String;
    add-int/lit8 v8, v27, 0x1

    move-object/from16 v5, v20

    move/from16 v0, v22

    move-object/from16 v3, v23

    move-object/from16 v9, v25

    move-object/from16 v4, v28

    move/from16 v6, v29

    const/4 v11, 0x3

    const/4 v12, 0x2

    .end local v27    # "g":I
    .local v8, "g":I
    goto/16 :goto_6

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "numGroups":I
    .end local v23    # "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .end local v25    # "line":Ljava/lang/String;
    .end local v29    # "id":I
    .local v0, "numGroups":I
    .local v3, "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .local v5, "reader":Ljava/io/BufferedReader;
    .local v6, "id":I
    .local v9, "line":Ljava/lang/String;
    :cond_28
    move/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v20, v5

    move/from16 v27, v8

    move-object/from16 v25, v9

    .line 282
    .end local v0    # "numGroups":I
    .end local v3    # "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "g":I
    .end local v9    # "line":Ljava/lang/String;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "numGroups":I
    .restart local v23    # "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .restart local v25    # "line":Ljava/lang/String;
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v0, :cond_29

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 283
    :cond_29
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v0, :cond_2a

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 284
    :cond_2a
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v0, :cond_2b

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 285
    :cond_2b
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2c

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 287
    :cond_2c
    return-object v7

    .line 184
    .end local v7    # "data":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "numGroups":I
    .end local v23    # "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .end local v25    # "line":Ljava/lang/String;
    .restart local v3    # "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v20, v5

    .line 185
    .end local v3    # "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    :goto_12
    const/4 v3, 0x0

    return-object v3
.end method
