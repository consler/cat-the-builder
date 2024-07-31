.class public Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;
.super Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.source "G3dModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader<",
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final VERSION_HI:S = 0x0s

.field public static final VERSION_LO:S = 0x1s


# instance fields
.field protected final reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

.field protected final tempQ:Lcom/badlogic/gdx/math/Quaternion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/BaseJsonReader;)V
    .locals 1
    .param p1, "reader"    # Lcom/badlogic/gdx/utils/BaseJsonReader;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "reader"    # Lcom/badlogic/gdx/utils/BaseJsonReader;
    .param p2, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 55
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 288
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->tempQ:Lcom/badlogic/gdx/math/Quaternion;

    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

    .line 57
    return-void
.end method


# virtual methods
.method public loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 1
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "parameters"    # Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    .line 61
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    return-object v0
.end method

.method protected parseAnimations(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 23
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 371
    move-object/from16 v0, p1

    const-string v1, "animations"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 372
    .local v1, "animations":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 376
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "anim":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_11

    .line 377
    const-string v4, "bones"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    .line 378
    .local v4, "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v4, :cond_1

    move-object/from16 v18, v1

    goto/16 :goto_a

    .line 379
    :cond_1
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;-><init>()V

    .line 380
    .local v5, "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 381
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v7, v4, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 382
    const-string v6, "id"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->id:Ljava/lang/String;

    .line 383
    iget-object v6, v4, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v6, "node":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v6, :cond_10

    .line 384
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;-><init>()V

    .line 385
    .local v7, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 386
    const-string v8, "boneId"

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->nodeId:Ljava/lang/String;

    .line 389
    const-string v8, "keyframes"

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    .line 390
    .local v8, "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    const-string v10, "rotation"

    const-string/jumbo v11, "translation"

    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v13, 0x0

    const-string v14, "keytime"

    const/4 v9, 0x3

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 391
    iget-object v15, v8, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v15, "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v15, :cond_8

    .line 392
    invoke-virtual {v15, v14, v13}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v17

    div-float v13, v17, v12

    .line 393
    .local v13, "keytime":F
    invoke-virtual {v15, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    .line 394
    .local v12, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v12, :cond_3

    iget v0, v12, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v0, v9, :cond_3

    .line 395
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_2

    .line 396
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 397
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 398
    .local v0, "tkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iput v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 399
    new-instance v9, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .local v18, "animations":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v2

    move-object/from16 v19, v4

    const/4 v1, 0x1

    .end local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .local v19, "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v4

    move-object/from16 v20, v5

    const/4 v1, 0x2

    .end local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .local v20, "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v5

    invoke-direct {v9, v2, v4, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 400
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 394
    .end local v0    # "tkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    .end local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v19    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .restart local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 402
    .end local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .restart local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v19    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    :goto_3
    invoke-virtual {v15, v10}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 403
    .local v0, "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_5

    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 404
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_4

    .line 405
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 406
    :cond_4
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 407
    .local v1, "rkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iput v13, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 408
    new-instance v2, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v5

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v9

    move-object/from16 v21, v8

    const/4 v4, 0x2

    .end local v8    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .local v21, "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v8

    move-object/from16 v22, v12

    const/4 v4, 0x3

    .end local v12    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .local v22, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    invoke-direct {v2, v5, v9, v8, v12}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 409
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 403
    .end local v1    # "rkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    .end local v21    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v22    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v8    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    move-object/from16 v21, v8

    move-object/from16 v22, v12

    .line 411
    .end local v8    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v12    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v21    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v22    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_4
    const-string v1, "scale"

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 412
    .local v1, "scale":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v1, :cond_7

    iget v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 413
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-nez v2, :cond_6

    .line 414
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 415
    :cond_6
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 416
    .local v2, "skf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iput v13, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 417
    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v8

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v9

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    invoke-direct {v4, v8, v9, v12}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 418
    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 391
    .end local v0    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v1    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v2    # "skf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    .end local v13    # "keytime":F
    .end local v22    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_7
    iget-object v15, v15, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v21

    const/4 v9, 0x3

    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v13, 0x0

    goto/16 :goto_2

    .end local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v19    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v21    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .local v1, "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .restart local v8    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_8
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    .end local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v8    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v19    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .restart local v21    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_9

    .line 390
    .end local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v19    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v21    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .restart local v8    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_9
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    .line 422
    .end local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v8    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v19    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .restart local v21    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 423
    .local v0, "translationKF":Lcom/badlogic/gdx/utils/JsonValue;
    const-string/jumbo v1, "value"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 424
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 425
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v4, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 426
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_5
    if-eqz v2, :cond_b

    .line 427
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 428
    .local v4, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v5, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 429
    const/4 v5, 0x0

    invoke-virtual {v2, v14, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v8, v5

    iput v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 430
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 431
    .local v5, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v5, :cond_a

    iget v8, v5, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_a

    .line 432
    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v11

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    invoke-direct {v8, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 426
    .end local v4    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    .end local v5    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_a
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_5

    .line 437
    .end local v2    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_b
    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 438
    .local v2, "rotationKF":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 439
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v4, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 440
    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 441
    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v4, "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_6
    if-eqz v4, :cond_d

    .line 442
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 443
    .local v5, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 444
    const/4 v8, 0x0

    invoke-virtual {v4, v14, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v9

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v9, v8

    iput v9, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 445
    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    .line 446
    .local v8, "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v8, :cond_c

    iget v9, v8, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v10, 0x4

    if-lt v9, v10, :cond_c

    .line 447
    new-instance v9, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v10

    invoke-direct {v9, v12, v13, v15, v10}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v9, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 441
    .end local v5    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    .end local v8    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_c
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_6

    .line 451
    .end local v4    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_d
    const-string v4, "scaling"

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    .line 452
    .local v4, "scalingKF":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 453
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 454
    iget-object v5, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v8, v4, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 455
    iget-object v5, v4, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v5, "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_7
    if-eqz v5, :cond_f

    .line 456
    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 457
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v9, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 458
    const/4 v9, 0x0

    invoke-virtual {v5, v14, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    iput v10, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 459
    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v10

    .line 460
    .local v10, "scaling":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v10, :cond_e

    iget v12, v10, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v13, 0x3

    if-lt v12, v13, :cond_e

    .line 461
    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v9

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    invoke-direct {v12, v9, v13, v15}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v12, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    goto :goto_8

    .line 460
    :cond_e
    const/4 v11, 0x2

    .line 455
    .end local v8    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    .end local v10    # "scaling":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_8
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_7

    .line 383
    .end local v0    # "translationKF":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v2    # "rotationKF":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v4    # "scalingKF":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v7    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    .end local v21    # "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_f
    :goto_9
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto/16 :goto_1

    .end local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v19    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .restart local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .local v4, "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .local v5, "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    :cond_10
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 376
    .end local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v4    # "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v6    # "node":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_a
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v1, v18

    goto/16 :goto_0

    .line 467
    .end local v3    # "anim":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v18    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v1    # "animations":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_11
    return-void
.end method

.method protected parseAttributes(Lcom/badlogic/gdx/utils/JsonValue;)[Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 9
    .param p1, "attributes"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 144
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 145
    .local v0, "vertexAttributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, "unit":I
    const/4 v2, 0x0

    .line 147
    .local v2, "blendWeightCount":I
    iget-object v3, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_8

    .line 148
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "attribute":Ljava/lang/String;
    move-object v5, v4

    .line 150
    .local v5, "attr":Ljava/lang/String;
    const-string v6, "POSITION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Position()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 152
    :cond_0
    const-string v6, "NORMAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Normal()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 154
    :cond_1
    const-string v6, "COLOR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->ColorUnpacked()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 156
    :cond_2
    const-string v6, "COLORPACKED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->ColorPacked()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    :cond_3
    const-string v6, "TANGENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 159
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Tangent()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_4
    const-string v6, "BINORMAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Binormal()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 162
    :cond_5
    const-string v6, "TEXCOORD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 163
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "unit":I
    .local v6, "unit":I
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;->TexCoords(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v1, v6

    goto :goto_1

    .line 164
    .end local v6    # "unit":I
    .restart local v1    # "unit":I
    :cond_6
    const-string v6, "BLENDWEIGHT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 165
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "blendWeightCount":I
    .local v6, "blendWeightCount":I
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;->BoneWeight(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v6

    .line 147
    .end local v4    # "attribute":Ljava/lang/String;
    .end local v5    # "attr":Ljava/lang/String;
    .end local v6    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    :goto_1
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_0

    .line 167
    .restart local v4    # "attribute":Ljava/lang/String;
    .restart local v5    # "attr":Ljava/lang/String;
    :cond_7
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown vertex attribute \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\', should be one of position, normal, uv, tangent or binormal"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 171
    .end local v3    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v4    # "attribute":Ljava/lang/String;
    .end local v5    # "attr":Ljava/lang/String;
    :cond_8
    const-class v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    return-object v3
.end method

.method protected parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;
    .locals 5
    .param p1, "colorArray"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 261
    iget v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 262
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Expected Color values <> than three."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseMaterials(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V
    .locals 21
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "materialDir"    # Ljava/lang/String;

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "materials"

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    .line 176
    .local v3, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v3, :cond_0

    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 179
    :cond_0
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 180
    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v5, "material":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v5, :cond_f

    .line 181
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 183
    .local v6, "jsonMaterial":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    const-string v7, "id"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "id":Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 186
    iput-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 189
    const-string v10, "diffuse"

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v10

    .line 190
    .local v10, "diffuse":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v10, :cond_1

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    iput-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 191
    :cond_1
    const-string v11, "ambient"

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v11

    .line 192
    .local v11, "ambient":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v11, :cond_2

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    iput-object v12, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    .line 193
    :cond_2
    const-string v12, "emissive"

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    .line 194
    .local v12, "emissive":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v12, :cond_3

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    iput-object v13, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    .line 195
    :cond_3
    const-string v13, "specular"

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v13

    .line 196
    .local v13, "specular":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v13, :cond_4

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    iput-object v14, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    .line 197
    :cond_4
    const-string v14, "reflection"

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    .line 198
    .local v14, "reflection":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v14, :cond_5

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    iput-object v15, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    .line 200
    :cond_5
    const-string v15, "shininess"

    const/4 v8, 0x0

    invoke-virtual {v5, v15, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v15

    iput v15, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    .line 202
    const-string v15, "opacity"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v15, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v15

    iput v15, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    .line 205
    const-string v15, "textures"

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v15

    .line 206
    .local v15, "textures":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v15, :cond_d

    .line 207
    iget-object v8, v15, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v8, "texture":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v8, :cond_c

    .line 208
    new-instance v16, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    move-object/from16 v17, v16

    .line 210
    .local v17, "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .local v16, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v8, v7, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "textureId":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 212
    move-object/from16 v3, v17

    .end local v17    # "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .local v3, "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->id:Ljava/lang/String;

    .line 214
    move-object/from16 v17, v4

    .end local v4    # "textureId":Ljava/lang/String;
    .local v17, "textureId":Ljava/lang/String;
    const-string v4, "filename"

    move-object/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v8, v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "fileName":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v20, v9

    .end local v9    # "id":Ljava/lang/String;
    .local v20, "id":Ljava/lang/String;
    const-string v9, "/"

    if-eqz v19, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    const-string v9, ""

    :cond_7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    .line 219
    const-string/jumbo v7, "uvTranslation"

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v9}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iput-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    .line 220
    const-string/jumbo v7, "uvScaling"

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v9, v9}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iput-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    .line 222
    const-string/jumbo v7, "type"

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "textureType":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 225
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseTextureUsage(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    .line 227
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-nez v9, :cond_8

    new-instance v9, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v9}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 228
    :cond_8
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 207
    .end local v3    # "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "textureType":Ljava/lang/String;
    .end local v17    # "textureId":Ljava/lang/String;
    iget-object v8, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v4, p2

    move-object/from16 v3, v16

    move-object/from16 v7, v18

    move-object/from16 v9, v20

    goto/16 :goto_1

    .line 223
    .restart local v3    # "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v7    # "textureType":Ljava/lang/String;
    .restart local v17    # "textureId":Ljava/lang/String;
    :cond_9
    new-instance v9, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Texture needs type."

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 215
    .end local v7    # "textureType":Ljava/lang/String;
    .end local v20    # "id":Ljava/lang/String;
    .restart local v9    # "id":Ljava/lang/String;
    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v7, "Texture needs filename."

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    .end local v3    # "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .local v4, "textureId":Ljava/lang/String;
    .local v17, "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    :cond_b
    move-object/from16 v3, v17

    move-object/from16 v17, v4

    .end local v4    # "textureId":Ljava/lang/String;
    .restart local v3    # "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .local v17, "textureId":Ljava/lang/String;
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Texture has no id."

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    .end local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v17    # "textureId":Ljava/lang/String;
    .local v3, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_c
    move-object/from16 v16, v3

    move-object/from16 v20, v9

    .end local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "id":Ljava/lang/String;
    .restart local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "id":Ljava/lang/String;
    goto :goto_2

    .line 206
    .end local v8    # "texture":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "id":Ljava/lang/String;
    .restart local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v9    # "id":Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v3

    move-object/from16 v20, v9

    .line 232
    .end local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "id":Ljava/lang/String;
    .restart local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "id":Ljava/lang/String;
    :goto_2
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 180
    .end local v6    # "jsonMaterial":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .end local v10    # "diffuse":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v11    # "ambient":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v12    # "emissive":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v13    # "specular":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v14    # "reflection":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "textures":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "id":Ljava/lang/String;
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 184
    .end local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v6    # "jsonMaterial":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .restart local v9    # "id":Ljava/lang/String;
    :cond_e
    move-object/from16 v16, v3

    .end local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Material needs an id."

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    .end local v6    # "jsonMaterial":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .end local v9    # "id":Ljava/lang/String;
    .end local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_f
    move-object/from16 v16, v3

    .line 235
    .end local v3    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "material":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_3
    return-void
.end method

.method protected parseMeshes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 17
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "meshes"

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 83
    .local v2, "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v2, :cond_6

    .line 85
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 86
    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v4, "mesh":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v4, :cond_5

    .line 87
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;-><init>()V

    .line 89
    .local v5, "jsonMesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    const-string v6, "id"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "id":Ljava/lang/String;
    iput-object v7, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->id:Ljava/lang/String;

    .line 92
    const-string v8, "attributes"

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    .line 93
    .local v8, "attributes":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseAttributes(Lcom/badlogic/gdx/utils/JsonValue;)[Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v9

    iput-object v9, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 94
    const-string/jumbo v9, "vertices"

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/JsonValue;->asFloatArray()[F

    move-result-object v9

    iput-object v9, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    .line 96
    const-string v9, "parts"

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v9

    .line 97
    .local v9, "meshParts":Lcom/badlogic/gdx/utils/JsonValue;
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 98
    .local v10, "parts":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;>;"
    iget-object v11, v9, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v11, "meshPart":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v11, :cond_4

    .line 99
    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-direct {v12}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;-><init>()V

    .line 100
    .local v12, "jsonPart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    const/4 v13, 0x0

    invoke-virtual {v11, v6, v13}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 101
    .local v14, "partId":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 104
    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 105
    .local v13, "other":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    move-object/from16 v16, v2

    .end local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .local v16, "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    .end local v13    # "other":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    move-object/from16 v2, v16

    const/4 v13, 0x0

    goto :goto_2

    .line 106
    .restart local v13    # "other":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mesh part with id \'"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\' already in defined"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v13    # "other":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1
    move-object/from16 v16, v2

    .end local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object v14, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    .line 111
    const-string/jumbo v2, "type"

    const/4 v13, 0x0

    invoke-virtual {v11, v2, v13}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseType(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    .line 117
    const-string v13, "indices"

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/JsonValue;->asShortArray()[S

    move-result-object v13

    iput-object v13, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    .line 118
    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 98
    .end local v2    # "type":Ljava/lang/String;
    .end local v12    # "jsonPart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v14    # "partId":Ljava/lang/String;
    iget-object v11, v11, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v2, v16

    goto :goto_1

    .line 113
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v12    # "jsonPart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .restart local v14    # "partId":Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No primitive type given for mesh part \'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    .end local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .local v2, "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_3
    move-object/from16 v16, v2

    .end local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Not id given for mesh part"

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v12    # "jsonPart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v14    # "partId":Ljava/lang/String;
    .end local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_4
    move-object/from16 v16, v2

    .line 120
    .end local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v11    # "meshPart":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    iput-object v2, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 121
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 86
    .end local v5    # "jsonMesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "attributes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "meshParts":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v10    # "parts":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;>;"
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v2, v16

    goto/16 :goto_0

    .end local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    goto :goto_3

    .line 83
    .end local v4    # "mesh":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6
    move-object/from16 v16, v2

    .line 124
    .end local v2    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_3
    return-void
.end method

.method public parseModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 7
    .param p1, "handle"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/utils/BaseJsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 66
    .local v0, "json":Lcom/badlogic/gdx/utils/JsonValue;
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;-><init>()V

    .line 67
    .local v1, "model":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 68
    .local v2, "version":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getShort(I)S

    move-result v5

    aput-short v5, v3, v4

    .line 69
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getShort(I)S

    move-result v6

    aput-short v6, v3, v5

    .line 70
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    aget-short v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    aget-short v3, v3, v5

    if-ne v3, v5, :cond_0

    .line 73
    const-string v3, "id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->id:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseMeshes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 75
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseMaterials(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/Array;

    .line 77
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseAnimations(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 78
    return-object v1

    .line 71
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Model version not supported"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected parseNodes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;",
            ">;"
        }
    .end annotation

    .line 277
    const-string v0, "nodes"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 278
    .local v0, "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 280
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v1, "node":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v1, :cond_0

    .line 281
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 280
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 285
    .end local v1    # "node":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    return-object v1
.end method

.method protected parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    .locals 27
    .param p1, "json"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;-><init>()V

    .line 293
    .local v2, "jsonNode":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 295
    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    .line 297
    const-string/jumbo v5, "translation"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    .line 298
    .local v6, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v7, 0x3

    if-eqz v6, :cond_1

    iget v8, v6, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v8, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "Node translation incomplete"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    :cond_1
    :goto_0
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_2

    move-object v11, v4

    goto :goto_1

    :cond_2
    new-instance v11, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    .line 300
    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    invoke-direct {v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    :goto_1
    iput-object v11, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 302
    const-string v11, "rotation"

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    .line 303
    .local v12, "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v13, 0x4

    if-eqz v12, :cond_4

    iget v14, v12, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v14, v13, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "Node rotation incomplete"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_4
    :goto_2
    if-nez v12, :cond_5

    move-object v14, v4

    goto :goto_3

    :cond_5
    new-instance v14, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    .line 305
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v4

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v8

    invoke-direct {v14, v15, v13, v4, v8}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    :goto_3
    iput-object v14, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 307
    const-string v4, "scale"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    .line 308
    .local v8, "scale":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v8, :cond_7

    iget v13, v8, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v13, v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "Node scale incomplete"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_7
    :goto_4
    if-nez v8, :cond_8

    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    new-instance v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v7

    invoke-direct {v13, v14, v15, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    :goto_5
    iput-object v13, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 311
    const-string v7, "mesh"

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, "meshId":Ljava/lang/String;
    if-eqz v7, :cond_9

    iput-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->meshId:Ljava/lang/String;

    .line 314
    :cond_9
    const-string v9, "parts"

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v9

    .line 315
    .local v9, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v9, :cond_14

    .line 316
    iget v13, v9, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v13, v13, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    iput-object v13, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    .line 317
    const/4 v13, 0x0

    .line 318
    .local v13, "i":I
    iget-object v14, v9, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v14, "material":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_6
    if-eqz v14, :cond_13

    .line 319
    new-instance v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    invoke-direct {v15}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;-><init>()V

    .line 321
    .local v15, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    const-string v10, "meshpartid"

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .end local v6    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .local v16, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v14, v10, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "meshPartId":Ljava/lang/String;
    move-object/from16 v17, v7

    .end local v7    # "meshId":Ljava/lang/String;
    .local v17, "meshId":Ljava/lang/String;
    const-string v7, "materialid"

    invoke-virtual {v14, v7, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "materialId":Ljava/lang/String;
    if-eqz v10, :cond_12

    if-eqz v7, :cond_12

    .line 326
    iput-object v7, v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    .line 327
    iput-object v10, v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    .line 329
    const-string v6, "bones"

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    .line 330
    .local v6, "bones":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v6, :cond_11

    .line 331
    move-object/from16 v18, v7

    .end local v7    # "materialId":Ljava/lang/String;
    .local v18, "materialId":Ljava/lang/String;
    new-instance v7, Lcom/badlogic/gdx/utils/ArrayMap;

    move-object/from16 v19, v8

    .end local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .local v19, "scale":Lcom/badlogic/gdx/utils/JsonValue;
    iget v8, v6, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move-object/from16 v20, v9

    .end local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .local v20, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v9, Ljava/lang/String;

    move-object/from16 v21, v10

    .end local v10    # "meshPartId":Ljava/lang/String;
    .local v21, "meshPartId":Ljava/lang/String;
    const-class v10, Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v22, v12

    const/4 v12, 0x1

    .end local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .local v22, "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-direct {v7, v12, v8, v9, v10}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    iput-object v7, v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 332
    const/4 v7, 0x0

    .line 333
    .local v7, "j":I
    iget-object v8, v6, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v8, "bone":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_7
    if-eqz v8, :cond_10

    .line 334
    const-string v9, "node"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "nodeId":Ljava/lang/String;
    if-eqz v9, :cond_f

    .line 337
    new-instance v12, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v12}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 339
    .local v12, "transform":Lcom/badlogic/gdx/math/Matrix4;
    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v10

    .line 340
    .local v10, "val":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v10, :cond_b

    move-object/from16 v23, v5

    iget v5, v10, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move-object/from16 v24, v6

    const/4 v6, 0x3

    .end local v6    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .local v24, "bones":Lcom/badlogic/gdx/utils/JsonValue;
    if-lt v5, v6, :cond_a

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v6

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v1

    move-object/from16 v25, v3

    const/4 v5, 0x2

    .end local v3    # "id":Ljava/lang/String;
    .local v25, "id":Ljava/lang/String;
    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v3

    invoke-virtual {v12, v6, v1, v3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_8

    .end local v25    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    :cond_a
    move-object/from16 v25, v3

    .end local v3    # "id":Ljava/lang/String;
    .restart local v25    # "id":Ljava/lang/String;
    goto :goto_8

    .end local v24    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v25    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v6    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_b
    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 342
    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v24    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v25    # "id":Ljava/lang/String;
    :goto_8
    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 343
    .end local v10    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    .local v1, "val":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v1, :cond_c

    iget v3, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_c

    .line 344
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->tempQ:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v10

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v5

    move-object/from16 v26, v11

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v11

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v0

    invoke-virtual {v3, v10, v5, v11, v0}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_9

    .line 343
    :cond_c
    move-object/from16 v26, v11

    .line 346
    :goto_9
    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 347
    .end local v1    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    .local v0, "val":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_d

    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v1

    invoke-virtual {v12, v5, v10, v1}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_a

    :cond_d
    const/4 v3, 0x3

    :cond_e
    const/4 v6, 0x1

    const/4 v11, 0x2

    .line 349
    :goto_a
    iget-object v1, v15, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 333
    .end local v0    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "nodeId":Ljava/lang/String;
    .end local v12    # "transform":Lcom/badlogic/gdx/math/Matrix4;
    iget-object v8, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v3, v25

    move-object/from16 v11, v26

    goto/16 :goto_7

    .line 335
    .end local v24    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v25    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v6    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v9    # "nodeId":Ljava/lang/String;
    :cond_f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Bone node ID missing"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    .end local v9    # "nodeId":Ljava/lang/String;
    :cond_10
    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v26, v11

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v11, 0x2

    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v24    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v25    # "id":Ljava/lang/String;
    goto :goto_b

    .line 330
    .end local v18    # "materialId":Ljava/lang/String;
    .end local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v21    # "meshPartId":Ljava/lang/String;
    .end local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v24    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v25    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v6    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .local v7, "materialId":Ljava/lang/String;
    .local v8, "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .local v9, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .local v10, "meshPartId":Ljava/lang/String;
    .local v12, "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_11
    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v11, 0x2

    .line 353
    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v7    # "materialId":Ljava/lang/String;
    .end local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v10    # "meshPartId":Ljava/lang/String;
    .end local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v18    # "materialId":Ljava/lang/String;
    .restart local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v21    # "meshPartId":Ljava/lang/String;
    .restart local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v24    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v25    # "id":Ljava/lang/String;
    :goto_b
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    aput-object v15, v0, v13

    .line 318
    .end local v15    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v18    # "materialId":Ljava/lang/String;
    .end local v21    # "meshPartId":Ljava/lang/String;
    .end local v24    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v14, v14, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v10, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v12, v22

    move-object/from16 v5, v23

    move-object/from16 v3, v25

    move-object/from16 v11, v26

    goto/16 :goto_6

    .line 323
    .end local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v25    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v7    # "materialId":Ljava/lang/String;
    .restart local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v10    # "meshPartId":Ljava/lang/String;
    .restart local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v15    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    :cond_12
    move-object/from16 v25, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v12

    .line 324
    .end local v3    # "id":Ljava/lang/String;
    .end local v7    # "materialId":Ljava/lang/String;
    .end local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v10    # "meshPartId":Ljava/lang/String;
    .end local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v18    # "materialId":Ljava/lang/String;
    .restart local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v21    # "meshPartId":Ljava/lang/String;
    .restart local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v25    # "id":Ljava/lang/String;
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    .end local v25    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " part is missing meshPartId or materialId"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    .end local v15    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v16    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v17    # "meshId":Ljava/lang/String;
    .end local v18    # "materialId":Ljava/lang/String;
    .end local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v21    # "meshPartId":Ljava/lang/String;
    .end local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .local v6, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .local v7, "meshId":Ljava/lang/String;
    .restart local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_13
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v12

    .end local v6    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v7    # "meshId":Ljava/lang/String;
    .end local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v17    # "meshId":Ljava/lang/String;
    .restart local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    goto :goto_c

    .line 315
    .end local v13    # "i":I
    .end local v14    # "material":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v16    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v17    # "meshId":Ljava/lang/String;
    .end local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v6    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v7    # "meshId":Ljava/lang/String;
    .restart local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_14
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v12

    .line 357
    .end local v6    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v7    # "meshId":Ljava/lang/String;
    .end local v8    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v12    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v16    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v17    # "meshId":Ljava/lang/String;
    .restart local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_c
    const-string v0, "children"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 358
    .local v0, "children":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_16

    .line 359
    iget v4, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v4, v4, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    iput-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, "i":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v5, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_d
    if-eqz v5, :cond_15

    .line 363
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-object/from16 v7, p0

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-result-object v8

    aput-object v8, v6, v4

    .line 362
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    move-object/from16 v7, p0

    goto :goto_e

    .line 358
    .end local v4    # "i":I
    .end local v5    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_16
    move-object/from16 v7, p0

    .line 367
    :goto_e
    return-object v2

    .line 294
    .end local v0    # "children":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v16    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v17    # "meshId":Ljava/lang/String;
    .end local v19    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v20    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v22    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_17
    move-object v7, v0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Node id missing."

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseTextureUsage(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 238
    const-string v0, "AMBIENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x4

    return v0

    .line 240
    :cond_0
    const-string v0, "BUMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/16 v0, 0x8

    return v0

    .line 242
    :cond_1
    const-string v0, "DIFFUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, 0x2

    return v0

    .line 244
    :cond_2
    const-string v0, "EMISSIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    const/4 v0, 0x3

    return v0

    .line 246
    :cond_3
    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_4
    const-string v0, "NORMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    const/4 v0, 0x7

    return v0

    .line 250
    :cond_5
    const-string v0, "REFLECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    const/16 v0, 0xa

    return v0

    .line 252
    :cond_6
    const-string v0, "SHININESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    const/4 v0, 0x6

    return v0

    .line 254
    :cond_7
    const-string v0, "SPECULAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    const/4 v0, 0x5

    return v0

    .line 256
    :cond_8
    const-string v0, "TRANSPARENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    return v0

    .line 257
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected parseType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 127
    const-string v0, "TRIANGLES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x4

    return v0

    .line 129
    :cond_0
    const-string v0, "LINES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_1
    const-string v0, "POINTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_2
    const-string v0, "TRIANGLE_STRIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x5

    return v0

    .line 135
    :cond_3
    const-string v0, "LINE_STRIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const/4 v0, 0x3

    return v0

    .line 138
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown primitive type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', should be one of triangle, trianglestrip, line, linestrip, lineloop or point"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "vectorArray"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 268
    if-nez p1, :cond_0

    .line 269
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v0

    .line 270
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 271
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v0

    .line 273
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Expected Vector2 values <> than two."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
