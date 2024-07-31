.class public final Lorg/catrobat/catroid/sensing/ColorEqualsColor;
.super Ljava/lang/Object;
.source "ColorEqualsColor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J$\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/sensing/ColorEqualsColor;",
        "",
        "()V",
        "addHashtagIfMissing",
        "",
        "parameter",
        "calculateEuclideanDistanceInPercent",
        "",
        "firstColorHex",
        "secondColorHex",
        "isToleranceParameterInvalid",
        "",
        "isToleranceParameterOverAHundred",
        "tryInterpretFunctionColorEqualsColor",
        "firstColor",
        "secondColor",
        "tolerance",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addHashtagIfMissing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_0
    move-object v0, p1

    .line 98
    :goto_0
    return-object v0
.end method

.method private final calculateEuclideanDistanceInPercent(Ljava/lang/String;Ljava/lang/String;)D
    .locals 10
    .param p1, "firstColorHex"    # Ljava/lang/String;
    .param p2, "secondColorHex"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 71
    .local v1, "firstColorLab":[D
    new-array v0, v0, [D

    .line 73
    .local v0, "secondColorLab":[D
    const-string v2, "null cannot be cast to non-null type kotlin.String"

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 74
    .local v3, "firstColorRGB":Lcom/badlogic/gdx/graphics/Color;
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 76
    .local v2, "secondColorRGB":Lcom/badlogic/gdx/graphics/Color;
    nop

    .line 77
    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 78
    nop

    .line 79
    nop

    .line 78
    iget v6, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 79
    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 80
    iget v7, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    .line 81
    nop

    .line 76
    invoke-static {v4, v6, v7, v1}, Landroidx/core/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 84
    nop

    .line 85
    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 86
    nop

    .line 87
    nop

    .line 86
    iget v6, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 87
    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 88
    iget v7, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    .line 89
    nop

    .line 84
    invoke-static {v4, v6, v5, v0}, Landroidx/core/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 92
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->distanceEuclidean([D[D)D

    move-result-wide v4

    .line 94
    .local v4, "euclideanDistance":D
    const v6, 0x438158b4

    float-to-double v6, v6

    div-double v6, v4, v6

    const/high16 v8, 0x42c80000    # 100.0f

    float-to-double v8, v8

    mul-double/2addr v6, v8

    return-wide v6

    .line 74
    .end local v2    # "secondColorRGB":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "euclideanDistance":D
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v3    # "firstColorRGB":Lcom/badlogic/gdx/graphics/Color;
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final isToleranceParameterInvalid(D)Z
    .locals 4
    .param p1, "parameter"    # D

    .line 105
    nop

    .line 106
    nop

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    int-to-double v2, v1

    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 106
    :cond_1
    return v1
.end method

.method private final isToleranceParameterOverAHundred(D)Z
    .locals 2
    .param p1, "parameter"    # D

    .line 108
    const/16 v0, 0x64

    int-to-double v0, v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final tryInterpretFunctionColorEqualsColor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "firstColor"    # Ljava/lang/Object;
    .param p2, "secondColor"    # Ljava/lang/Object;
    .param p3, "tolerance"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/sensing/ColorEqualsColor;->addHashtagIfMissing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "firstColorHexString":Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/sensing/ColorEqualsColor;->addHashtagIfMissing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "secondColorHexString":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/Conversions;

    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->isValidHexColor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/Conversions;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->isValidHexColor(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p3}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->convertArgumentToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 54
    .local v3, "toleranceAsDouble":D
    invoke-direct {p0, v3, v4}, Lorg/catrobat/catroid/sensing/ColorEqualsColor;->isToleranceParameterInvalid(D)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    .line 56
    :cond_2
    invoke-direct {p0, v3, v4}, Lorg/catrobat/catroid/sensing/ColorEqualsColor;->isToleranceParameterOverAHundred(D)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    return v6

    .line 58
    :cond_3
    nop

    .line 59
    nop

    .line 60
    nop

    .line 58
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/sensing/ColorEqualsColor;->calculateEuclideanDistanceInPercent(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 63
    .local v7, "euclideanDistanceInPercent":D
    cmpl-double v5, v7, v3

    if-lez v5, :cond_4

    return v1

    .line 65
    :cond_4
    return v6

    .line 52
    .end local v3    # "toleranceAsDouble":D
    .end local v7    # "euclideanDistanceInPercent":D
    :cond_5
    return v1

    .line 49
    :cond_6
    :goto_0
    return v1

    .line 43
    .end local v0    # "firstColorHexString":Ljava/lang/String;
    .end local v2    # "secondColorHexString":Ljava/lang/String;
    :cond_7
    :goto_1
    return v1
.end method
