.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a


# instance fields
.field private cradleVerticalOffset:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "fabMargin"    # F
    .param p2, "roundedCornerRadius"    # F
    .param p3, "cradleVerticalOffset"    # F

    .line 61
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 63
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 64
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 66
    return-void
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 26
    .param p1, "length"    # F
    .param p2, "center"    # F
    .param p3, "interpolation"    # F
    .param p4, "shapePath"    # Lcom/google/android/material/shape/ShapePath;

    .line 71
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v9, p4

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    const/4 v10, 0x0

    cmpl-float v3, v2, v10

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 74
    return-void

    .line 77
    :cond_0
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v3, v11

    add-float v12, v3, v2

    .line 78
    .local v12, "cradleDiameter":F
    div-float v13, v12, v11

    .line 79
    .local v13, "cradleRadius":F
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v14, p3, v2

    .line 80
    .local v14, "roundedCornerOffset":F
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v15, p2, v2

    .line 84
    .local v15, "middle":F
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v2, v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p3

    mul-float/2addr v4, v13

    add-float v16, v2, v4

    .line 86
    .local v16, "verticalOffset":F
    div-float v17, v16, v13

    .line 87
    .local v17, "verticalOffsetRatio":F
    cmpl-float v2, v17, v3

    if-ltz v2, :cond_1

    .line 90
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 91
    return-void

    .line 100
    :cond_1
    add-float v18, v13, v14

    .line 101
    .local v18, "distanceBetweenCenters":F
    mul-float v19, v18, v18

    .line 102
    .local v19, "distanceBetweenCentersSquared":F
    add-float v20, v16, v14

    .line 103
    .local v20, "distanceY":F
    mul-float v2, v20, v20

    sub-float v2, v19, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v8, v2

    .line 106
    .local v8, "distanceX":F
    sub-float v7, v15, v8

    .line 107
    .local v7, "leftRoundedCornerCircleX":F
    add-float v21, v15, v8

    .line 110
    .local v21, "rightRoundedCornerCircleX":F
    div-float v2, v8, v20

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v6, v2

    .line 111
    .local v6, "cornerRadiusArcLength":F
    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v22, v2, v6

    .line 114
    .local v22, "cutoutArcOffset":F
    invoke-virtual {v9, v7, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 118
    sub-float v3, v7, v14

    const/4 v4, 0x0

    add-float v5, v7, v14

    mul-float v23, v14, v11

    const/high16 v24, 0x43870000    # 270.0f

    move-object/from16 v2, p4

    move/from16 v25, v6

    .end local v6    # "cornerRadiusArcLength":F
    .local v25, "cornerRadiusArcLength":F
    move/from16 v6, v23

    move/from16 v23, v7

    .end local v7    # "leftRoundedCornerCircleX":F
    .local v23, "leftRoundedCornerCircleX":F
    move/from16 v7, v24

    move/from16 v24, v8

    .end local v8    # "distanceX":F
    .local v24, "distanceX":F
    move/from16 v8, v25

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 127
    sub-float v3, v15, v13

    neg-float v2, v13

    sub-float v4, v2, v16

    add-float v5, v15, v13

    sub-float v6, v13, v16

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v7, v2, v22

    mul-float v8, v22, v11

    sub-float/2addr v8, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 137
    sub-float v3, v21, v14

    const/4 v4, 0x0

    add-float v5, v21, v14

    mul-float v6, v14, v11

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v25

    move-object/from16 v2, p4

    move/from16 v8, v25

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 146
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 147
    return-void
.end method

.method getFabCradleMargin()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .locals 1

    .line 214
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return v0
.end method

.method public getFabDiameter()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return v0
.end method

.method public getHorizontalOffset()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return v0
.end method

.method setCradleVerticalOffset(F)V
    .locals 2
    .param p1, "cradleVerticalOffset"    # F

    .line 199
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 202
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 203
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cradleVerticalOffset must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFabCradleMargin(F)V
    .locals 0
    .param p1, "fabMargin"    # F

    .line 210
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 211
    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .locals 0
    .param p1, "roundedCornerRadius"    # F

    .line 218
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 219
    return-void
.end method

.method public setFabDiameter(F)V
    .locals 0
    .param p1, "fabDiameter"    # F

    .line 166
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 167
    return-void
.end method

.method setHorizontalOffset(F)V
    .locals 0
    .param p1, "horizontalOffset"    # F

    .line 171
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 172
    return-void
.end method
