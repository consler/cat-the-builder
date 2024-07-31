.class Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;
.super Ljava/lang/Object;
.source "ObjLoader.java"


# instance fields
.field public materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    .line 435
    .local v1, "m":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "m":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    :cond_0
    goto :goto_0

    .line 436
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 437
    .local v0, "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 438
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 439
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 440
    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 18
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 336
    move-object/from16 v1, p0

    const-string v0, "kd"

    const-string v2, "default"

    .line 337
    .local v2, "curMatName":Ljava/lang/String;
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 338
    .local v3, "difcolor":Lcom/badlogic/gdx/graphics/Color;
    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 339
    .local v4, "speccolor":Lcom/badlogic/gdx/graphics/Color;
    const/high16 v5, 0x3f800000    # 1.0f

    .line 340
    .local v5, "opacity":F
    const/4 v6, 0x0

    .line 341
    .local v6, "shininess":F
    const/4 v7, 0x0

    .line 343
    .local v7, "texFilename":Ljava/lang/String;
    if-eqz p1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 345
    :cond_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x1000

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 347
    .local v8, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_10

    .line 349
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v13, 0x0

    if-lez v9, :cond_1

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v14, 0x9

    if-ne v9, v14, :cond_1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 351
    :cond_1
    const-string v9, "\\s+"

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, "tokens":[Ljava/lang/String;
    aget-object v14, v9, v13

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 354
    goto :goto_0

    .line 355
    :cond_2
    aget-object v14, v9, v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x23

    if-ne v14, v15, :cond_3

    .line 356
    goto :goto_0

    .line 358
    :cond_3
    aget-object v14, v9, v13

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 359
    .local v14, "key":Ljava/lang/String;
    const-string v15, "newmtl"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 360
    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 361
    .local v13, "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iput-object v2, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 362
    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v15, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 363
    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v15, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    .line 364
    iput v5, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    .line 365
    iput v6, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    .line 366
    if-eqz v7, :cond_5

    .line 367
    new-instance v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct {v15}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    .line 368
    .local v15, "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    iput v11, v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    .line 369
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v11, v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    .line 370
    iget-object v11, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-nez v11, :cond_4

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v11, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 371
    :cond_4
    iget-object v11, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 373
    .end local v15    # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    :cond_5
    iget-object v11, v1, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 375
    array-length v11, v9

    if-le v11, v12, :cond_6

    .line 376
    aget-object v11, v9, v12

    move-object v2, v11

    .line 377
    const/16 v11, 0x2e

    const/16 v12, 0x5f

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    goto :goto_1

    .line 379
    :cond_6
    const-string v11, "default"

    move-object v2, v11

    .line 381
    :goto_1
    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v11

    .line 382
    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v11

    .line 383
    const/high16 v5, 0x3f800000    # 1.0f

    .line 384
    const/4 v6, 0x0

    .line 385
    .end local v13    # "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    move-object/from16 v17, v10

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "ks"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_3

    .line 400
    :cond_8
    const-string/jumbo v11, "tr"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "d"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_2

    .line 402
    :cond_9
    const-string v11, "ns"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 403
    aget-object v11, v9, v12

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v6, v11

    move-object/from16 v17, v10

    goto/16 :goto_6

    .line 404
    :cond_a
    const-string v11, "map_kd"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    move-object/from16 v17, v10

    goto :goto_6

    .line 404
    :cond_b
    move-object/from16 v17, v10

    goto :goto_6

    .line 401
    :cond_c
    :goto_2
    aget-object v11, v9, v12

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v5, v11

    move-object/from16 v17, v10

    goto :goto_6

    .line 387
    :cond_d
    :goto_3
    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 388
    .local v12, "r":F
    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 389
    .local v11, "g":F
    const/4 v15, 0x3

    aget-object v15, v9, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 390
    .local v15, "b":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 391
    .local v16, "a":F
    array-length v13, v9

    move-object/from16 v17, v10

    .end local v10    # "line":Ljava/lang/String;
    .local v17, "line":Ljava/lang/String;
    const/4 v10, 0x4

    if-le v13, v10, :cond_e

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    move/from16 v16, v10

    goto :goto_4

    :cond_e
    move/from16 v10, v16

    .line 393
    .end local v16    # "a":F
    .local v10, "a":F
    :goto_4
    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 394
    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    move-object v3, v13

    .line 395
    invoke-virtual {v3, v12, v11, v15, v10}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5

    .line 397
    :cond_f
    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    move-object v4, v13

    .line 398
    invoke-virtual {v4, v12, v11, v15, v10}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 400
    .end local v10    # "a":F
    .end local v11    # "g":F
    .end local v12    # "r":F
    .end local v15    # "b":F
    :goto_5
    nop

    .line 407
    .end local v14    # "key":Ljava/lang/String;
    :goto_6
    goto/16 :goto_0

    .line 409
    .end local v9    # "tokens":[Ljava/lang/String;
    .end local v17    # "line":Ljava/lang/String;
    .local v10, "line":Ljava/lang/String;
    :cond_10
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    nop

    .line 415
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 416
    .local v0, "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 417
    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 418
    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    .line 419
    iput v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    .line 420
    iput v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    .line 421
    if-eqz v7, :cond_12

    .line 422
    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    .line 423
    .local v9, "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    iput v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    .line 424
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    .line 425
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-nez v11, :cond_11

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 426
    :cond_11
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 428
    .end local v9    # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    :cond_12
    iget-object v9, v1, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 430
    return-void

    .line 410
    .end local v0    # "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .end local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    return-void

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :cond_13
    :goto_7
    return-void
.end method
