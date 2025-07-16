.class public Landroidx/camera/core/internal/ViewPorts;
.super Ljava/lang/Object;
.source "ViewPorts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateViewPortRects(Landroid/graphics/Rect;Landroid/util/Rational;IIILjava/util/Map;)Ljava/util/Map;
    .locals 8
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
    invoke-static {p2, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->getRotatedAspectRatio(ILandroid/util/Rational;)Landroid/util/Rational;

    move-result-object p1

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 73
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 75
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    new-instance v4, Landroid/graphics/RectF;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 77
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v0, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 80
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/core/UseCase;

    invoke-interface {v1, p5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5}, Landroid/graphics/RectF;-><init>()V

    .line 84
    invoke-virtual {v3, p5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 85
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v2, p1, p3, p4, p2}, Landroidx/camera/core/internal/ViewPorts;->getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;III)Landroid/graphics/RectF;

    move-result-object p0

    .line 94
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 95
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 96
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 100
    invoke-virtual {p3, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 102
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 103
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/core/UseCase;

    invoke-interface {p1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private static correctStartOrEnd(IILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x5a

    if-ne p1, v3, :cond_1

    if-ne p0, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-nez v2, :cond_f

    if-eqz v4, :cond_2

    goto/16 :goto_a

    :cond_2
    if-nez p1, :cond_3

    if-ne p0, v1, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    const/16 v4, 0x10e

    if-ne p1, v4, :cond_4

    if-nez p0, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v0

    :goto_3
    if-nez v2, :cond_e

    if-eqz v5, :cond_5

    goto/16 :goto_9

    :cond_5
    if-ne p1, v3, :cond_6

    if-nez p0, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    const/16 v3, 0xb4

    if-ne p1, v3, :cond_7

    if-ne p0, v1, :cond_7

    move v5, v1

    goto :goto_5

    :cond_7
    move v5, v0

    :goto_5
    if-nez v2, :cond_d

    if-eqz v5, :cond_8

    goto :goto_8

    :cond_8
    if-ne p1, v3, :cond_9

    if-nez p0, :cond_9

    move v2, v1

    goto :goto_6

    :cond_9
    move v2, v0

    :goto_6
    if-ne p1, v4, :cond_a

    if-ne p0, v1, :cond_a

    move v0, v1

    :cond_a
    if-nez v2, :cond_c

    if-eqz v0, :cond_b

    goto :goto_7

    .line 245
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid argument: direction"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " rotation "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 241
    :cond_c
    :goto_7
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-static {p3, p0}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    .line 242
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    .line 241
    invoke-static {p0, p1}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 225
    :cond_d
    :goto_8
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-static {p3, p0}, Landroidx/camera/core/internal/ViewPorts;->flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 209
    :cond_e
    :goto_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-static {p3, p0}, Landroidx/camera/core/internal/ViewPorts;->flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_a
    return-object p3
.end method

.method private static flipHorizontally(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 4

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

    move-result p1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private static flipVertically(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 4

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 260
    invoke-static {v2, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    .line 262
    invoke-static {p0, p1}, Landroidx/camera/core/internal/ViewPorts;->flipY(FF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private static flipX(FF)F
    .locals 0

    add-float/2addr p1, p1

    sub-float/2addr p1, p0

    return p1
.end method

.method private static flipY(FF)F
    .locals 0

    add-float/2addr p1, p1

    sub-float/2addr p1, p0

    return p1
.end method

.method public static getScaledRect(Landroid/graphics/RectF;Landroid/util/Rational;III)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    return-object p0

    .line 134
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-float v2, v2

    .line 136
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 147
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 151
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected scale type: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_2
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 143
    :cond_3
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 154
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 155
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 158
    invoke-static {p3, p4, p0, p1}, Landroidx/camera/core/internal/ViewPorts;->correctStartOrEnd(IILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
