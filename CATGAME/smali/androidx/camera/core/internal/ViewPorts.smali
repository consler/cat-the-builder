.class public Landroidx/camera/core/internal/ViewPorts;
.super Ljava/lang/Object;
.source "ViewPorts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static calculateViewPortRects(Landroid/graphics/Rect;Landroid/util/Rational;IIILjava/util/Map;)Ljava/util/Map;
    .locals 17
    .param p0, "fullSensorRect"    # Landroid/graphics/Rect;
    .param p1, "viewPortAspectRatio"    # Landroid/util/Rational;
    .param p2, "outputRotationDegrees"    # I
    .param p3, "scaleType"    # I
    .param p4, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/Rational;",
            "III",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 66
    .local p5, "useCaseSizes":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/UseCase;Landroid/util/Size;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Landroidx/camera/core/internal/utils/ImageUtil;->getRotatedAspectRatio(ILandroid/util/Rational;)Landroid/util/Rational;

    move-result-object v3

    .line 68
    .local v3, "rotatedViewPortAspectRatio":Landroid/util/Rational;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 71
    .local v4, "fullSensorRectF":Landroid/graphics/RectF;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v5, "useCaseToSensorTransformations":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/UseCase;Landroid/graphics/Matrix;>;"
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 73
    .local v6, "sensorIntersectionRect":Landroid/graphics/RectF;
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 75
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/util/Size;>;"
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    .local v9, "useCaseToSensorTransformation":Landroid/graphics/Matrix;
    new-instance v10, Landroid/graphics/RectF;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    .line 77
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    .local v10, "srcRect":Landroid/graphics/RectF;
    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 80
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/core/UseCase;

    invoke-interface {v5, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 84
    .local v11, "useCaseSensorRect":Landroid/graphics/RectF;
    invoke-virtual {v9, v11, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 85
    invoke-virtual {v6, v11}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 86
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/util/Size;>;"
    .end local v9    # "useCaseToSensorTransformation":Landroid/graphics/Matrix;
    .end local v10    # "srcRect":Landroid/graphics/RectF;
    .end local v11    # "useCaseSensorRect":Landroid/graphics/RectF;
    goto :goto_0

    .line 89
    :cond_0
    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static {v6, v3, v7, v8, v1}, Landroidx/camera/core/internal/ViewPorts;->getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;III)Landroid/graphics/RectF;

    move-result-object v9

    .line 94
    .local v9, "viewPortRect":Landroid/graphics/RectF;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v10, "useCaseOutputRects":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/UseCase;Landroid/graphics/Rect;>;"
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 96
    .local v11, "useCaseOutputRect":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .local v12, "sensorToUseCaseTransformation":Landroid/graphics/Matrix;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 99
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/graphics/Matrix;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Matrix;

    invoke-virtual {v15, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 100
    invoke-virtual {v12, v11, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 101
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .local v15, "outputCropRect":Landroid/graphics/Rect;
    invoke-virtual {v11, v15}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 103
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-interface {v10, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/UseCase;Landroid/graphics/Matrix;>;"
    .end local v15    # "outputCropRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    goto :goto_1

    .line 105
    :cond_1
    return-object v10
.end method

.method private static correctStartOrEnd(IILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 11
    .param p0, "layoutDirection"    # I
    .param p1, "rotationDegrees"    # I
    .param p2, "containerRect"    # Landroid/graphics/RectF;
    .param p3, "cropRect"    # Landroid/graphics/RectF;

    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 191
    .local v2, "ltrRotation0":Z
    :goto_0
    const/16 v3, 0x5a

    if-ne p1, v3, :cond_1

    if-ne p0, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    .line 192
    .local v4, "rtlRotation90":Z
    :goto_1
    if-nez v2, :cond_f

    if-eqz v4, :cond_2

    goto/16 :goto_a

    .line 201
    :cond_2
    if-nez p1, :cond_3

    if-ne p0, v1, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 207
    .local v5, "rtlRotation0":Z
    :goto_2
    const/16 v6, 0x10e

    if-ne p1, v6, :cond_4

    if-nez p0, :cond_4

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v0

    .line 208
    .local v7, "ltrRotation270":Z
    :goto_3
    if-nez v5, :cond_e

    if-eqz v7, :cond_5

    goto/16 :goto_9

    .line 217
    :cond_5
    if-ne p1, v3, :cond_6

    if-nez p0, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v0

    .line 223
    .local v3, "ltrRotation90":Z
    :goto_4
    const/16 v8, 0xb4

    if-ne p1, v8, :cond_7

    if-ne p0, v1, :cond_7

    move v9, v1

    goto :goto_5

    :cond_7
    move v9, v0

    .line 224
    .local v9, "rtlRotation180":Z
    :goto_5
    if-nez v3, :cond_d

    if-eqz v9, :cond_8

    goto :goto_8

    .line 233
    :cond_8
    if-ne p1, v8, :cond_9

    if-nez p0, :cond_9

    move v8, v1

    goto :goto_6

    :cond_9
    move v8, v0

    .line 239
    .local v8, "ltrRotation180":Z
    :goto_6
    if-ne p1, v6, :cond_a

    if-ne p0, v1, :cond_a

    move v0, v1

    .line 240
    .local v0, "rtlRotation270":Z
    :cond_a
    if-nez v8, :cond_c

    if-eqz v0, :cond_b

    goto :goto_7

    .line 245
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid argument: direction"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " rotation "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_c
    :goto_7
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {p3, v1}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 242
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 241
    invoke-static {v1, v6}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1

    .line 225
    .end local v0    # "rtlRotation270":Z
    .end local v8    # "ltrRotation180":Z
    :cond_d
    :goto_8
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {p3, v0}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 209
    .end local v3    # "ltrRotation90":Z
    .end local v9    # "rtlRotation180":Z
    :cond_e
    :goto_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {p3, v0}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 193
    .end local v5    # "rtlRotation0":Z
    .end local v7    # "ltrRotation270":Z
    :cond_f
    :goto_a
    return-object p3
.end method

.method private static flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5
    .param p0, "original"    # Landroid/graphics/RectF;
    .param p1, "flipLineX"    # F

    .line 250
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 251
    invoke-static {v1, p1}, Landroidx/camera/core/internal/ViewPorts;->flipX(FF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    .line 253
    invoke-static {v3, p1}, Landroidx/camera/core/internal/ViewPorts;->flipX(FF)F

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 250
    return-object v0
.end method

.method private static flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5
    .param p0, "original"    # Landroid/graphics/RectF;
    .param p1, "flipLineY"    # F

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 260
    invoke-static {v2, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    .line 262
    invoke-static {v4, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 258
    return-object v0
.end method

.method private static flipX(FF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "flipLineX"    # F

    .line 266
    add-float v0, p1, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method private static flipY(FF)F
    .locals 1
    .param p0, "y"    # F
    .param p1, "flipLineY"    # F

    .line 270
    add-float v0, p1, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;III)Landroid/graphics/RectF;
    .locals 5
    .param p0, "fittingRect"    # Landroid/graphics/RectF;
    .param p1, "containerAspectRatio"    # Landroid/util/Rational;
    .param p2, "scaleType"    # I
    .param p3, "layoutDirection"    # I
    .param p4, "rotationDegrees"    # I

    .line 125
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 127
    return-object p0

    .line 134
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v0, "viewPortToSurfaceTransformation":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-float v2, v2

    .line 136
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 137
    .local v1, "viewPortRect":Landroid/graphics/RectF;
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 147
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 149
    goto :goto_0

    .line 151
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected scale type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_2
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 141
    goto :goto_0

    .line 143
    :cond_3
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 145
    nop

    .line 154
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 155
    .local v2, "viewPortRectInSurfaceCoordinates":Landroid/graphics/RectF;
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 158
    invoke-static {p3, p4, p0, v2}, Landroidx/camera/core/internal/ViewPorts;->correctStartOrEnd(IILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    return-object v3
.end method
