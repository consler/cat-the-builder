.class public final Lorg/catrobat/paintroid/command/implementation/TextToolCommand;
.super Ljava/lang/Object;
.source "TextToolCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextToolCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextToolCommand.kt\norg/catrobat/paintroid/command/implementation/TextToolCommand\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,88:1\n13571#2,3:89\n*E\n*S KotlinDebug\n*F\n+ 1 TextToolCommand.kt\norg/catrobat/paintroid/command/implementation/TextToolCommand\n*L\n72#1,3:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BK\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016R\u001e\u0010\n\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R,\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\r\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\'"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "multilineText",
        "",
        "",
        "textPaint",
        "Landroid/graphics/Paint;",
        "boxOffset",
        "",
        "boxWidth",
        "boxHeight",
        "toolPosition",
        "Landroid/graphics/PointF;",
        "rotationAngle",
        "typeFaceInfo",
        "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
        "([Ljava/lang/String;Landroid/graphics/Paint;FFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V",
        "<set-?>",
        "getBoxHeight",
        "()F",
        "getBoxOffset",
        "getBoxWidth",
        "getMultilineText",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getRotationAngle",
        "getTextPaint",
        "()Landroid/graphics/Paint;",
        "getToolPosition",
        "()Landroid/graphics/PointF;",
        "getTypeFaceInfo",
        "()Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private boxHeight:F

.field private boxOffset:F

.field private boxWidth:F

.field private multilineText:[Ljava/lang/String;

.field private rotationAngle:F

.field private textPaint:Landroid/graphics/Paint;

.field private toolPosition:Landroid/graphics/PointF;

.field private typeFaceInfo:Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/graphics/Paint;FFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V
    .locals 1
    .param p1, "multilineText"    # [Ljava/lang/String;
    .param p2, "textPaint"    # Landroid/graphics/Paint;
    .param p3, "boxOffset"    # F
    .param p4, "boxWidth"    # F
    .param p5, "boxHeight"    # F
    .param p6, "toolPosition"    # Landroid/graphics/PointF;
    .param p7, "rotationAngle"    # F
    .param p8, "typeFaceInfo"    # Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    const-string v0, "multilineText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPosition"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeFaceInfo"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->multilineText:[Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->textPaint:Landroid/graphics/Paint;

    .line 42
    iput p3, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxOffset:F

    .line 43
    iput p4, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxWidth:F

    .line 44
    iput p5, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxHeight:F

    .line 45
    iput-object p6, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->toolPosition:Landroid/graphics/PointF;

    .line 46
    iput p7, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->rotationAngle:F

    .line 47
    iput-object p8, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->typeFaceInfo:Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 86
    return-void
.end method

.method public final getBoxHeight()F
    .locals 1

    .line 44
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxHeight:F

    return v0
.end method

.method public final getBoxOffset()F
    .locals 1

    .line 42
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxOffset:F

    return v0
.end method

.method public final getBoxWidth()F
    .locals 1

    .line 43
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxWidth:F

    return v0
.end method

.method public final getMultilineText()[Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->multilineText:[Ljava/lang/String;

    return-object v0
.end method

.method public final getRotationAngle()F
    .locals 1

    .line 46
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->rotationAngle:F

    return v0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getToolPosition()Landroid/graphics/PointF;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->toolPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getTypeFaceInfo()Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->typeFaceInfo:Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "layerModel"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v2, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    .line 51
    .local v2, "textAscent":F
    iget-object v4, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    .line 52
    .local v4, "textDescent":F
    sub-float v5, v4, v2

    iget-object v6, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->multilineText:[Ljava/lang/String;

    array-length v7, v6

    int-to-float v7, v7

    mul-float/2addr v5, v7

    .line 53
    .local v5, "textHeight":F
    array-length v7, v6

    int-to-float v7, v7

    div-float v7, v5, v7

    .line 54
    .local v7, "lineHeight":F
    array-length v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    if-nez v8, :cond_3

    aget-object v8, v6, v9

    .local v8, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 55
    .local v11, "$i$a$-maxOf-TextToolCommand$run$maxTextWidth$1":I
    iget-object v12, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 54
    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "$i$a$-maxOf-TextToolCommand$run$maxTextWidth$1":I
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v11

    if-gt v10, v11, :cond_1

    :goto_1
    aget-object v12, v6, v10

    .local v12, "line":Ljava/lang/String;
    const/4 v13, 0x0

    .line 55
    .local v13, "$i$a$-maxOf-TextToolCommand$run$maxTextWidth$1":I
    iget-object v14, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 54
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "$i$a$-maxOf-TextToolCommand$run$maxTextWidth$1":I
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    if-eq v10, v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move v6, v8

    .line 58
    .local v6, "maxTextWidth":F
    move-object/from16 v8, p1

    .local v8, "$this$with":Landroid/graphics/Canvas;
    const/4 v10, 0x0

    .line 59
    .local v10, "$i$a$-with-TextToolCommand$run$1":I
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 60
    iget-object v11, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->toolPosition:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget-object v12, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->toolPosition:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    iget v11, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->rotationAngle:F

    invoke-virtual {v8, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 63
    iget v11, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxWidth:F

    const/4 v12, 0x2

    int-to-float v12, v12

    iget v13, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxOffset:F

    mul-float v14, v12, v13

    sub-float/2addr v11, v14

    div-float/2addr v11, v6

    .line 64
    .local v11, "widthScaling":F
    iget v14, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxHeight:F

    mul-float/2addr v13, v12

    sub-float/2addr v14, v13

    div-float/2addr v14, v5

    .line 65
    .local v14, "heightScaling":F
    invoke-virtual {v1, v11, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 67
    iget v13, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxOffset:F

    div-float v15, v13, v14

    .line 68
    .local v15, "scaledHeightOffset":F
    div-float/2addr v13, v11

    .line 69
    .local v13, "scaledWidthOffset":F
    iget v9, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxWidth:F

    div-float/2addr v9, v11

    .line 70
    .local v9, "scaledBoxWidth":F
    iget v3, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->boxHeight:F

    div-float/2addr v3, v14

    .line 72
    .local v3, "scaledBoxHeight":F
    move/from16 v17, v4

    .end local v4    # "textDescent":F
    .local v17, "textDescent":F
    iget-object v4, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->multilineText:[Ljava/lang/String;

    .local v4, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    const/16 v18, 0x0

    .line 89
    .local v18, "$i$f$forEachIndexed":I
    const/16 v19, 0x0

    .line 90
    .local v19, "index$iv":I
    move/from16 v20, v5

    .end local v5    # "textHeight":F
    .local v20, "textHeight":F
    array-length v5, v4

    move/from16 v21, v6

    const/4 v6, 0x0

    .end local v6    # "maxTextWidth":F
    .local v21, "maxTextWidth":F
    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v16, v4, v6

    .local v16, "item$iv":Ljava/lang/Object;
    add-int/lit8 v22, v19, 0x1

    .local v19, "index":I
    .local v22, "index$iv":I
    move-object/from16 v23, v16

    .local v23, "textLine":Ljava/lang/String;
    move/from16 v24, v19

    .end local v19    # "index":I
    .local v24, "index":I
    const/16 v19, 0x0

    .line 73
    .local v19, "$i$a$-forEachIndexed-TextToolCommand$run$1$1":I
    nop

    .line 74
    nop

    .line 75
    move-object/from16 v25, v4

    .end local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .local v25, "$this$forEachIndexed$iv":[Ljava/lang/Object;
    div-float v4, v9, v12

    neg-float v4, v4

    add-float/2addr v4, v13

    .line 76
    move/from16 v26, v5

    div-float v5, v3, v12

    neg-float v5, v5

    add-float/2addr v5, v15

    sub-float/2addr v5, v2

    move/from16 v27, v2

    move/from16 v2, v24

    move/from16 v24, v3

    .end local v3    # "scaledBoxHeight":F
    .local v2, "index":I
    .local v24, "scaledBoxHeight":F
    .local v27, "textAscent":F
    int-to-float v3, v2

    mul-float/2addr v3, v7

    add-float/2addr v5, v3

    .line 77
    iget-object v3, v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->textPaint:Landroid/graphics/Paint;

    .line 73
    move-object/from16 v0, v23

    .end local v23    # "textLine":Ljava/lang/String;
    .local v0, "textLine":Ljava/lang/String;
    invoke-virtual {v1, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 79
    nop

    .end local v0    # "textLine":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v16    # "item$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-forEachIndexed-TextToolCommand$run$1$1":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v19, v22

    move/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v2, v27

    goto :goto_2

    .line 91
    .end local v22    # "index$iv":I
    .end local v24    # "scaledBoxHeight":F
    .end local v25    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v27    # "textAscent":F
    .local v2, "textAscent":F
    .restart local v3    # "scaledBoxHeight":F
    .restart local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .local v19, "index$iv":I
    :cond_2
    nop

    .line 80
    .end local v4    # "$this$forEachIndexed$iv":[Ljava/lang/Object;
    .end local v18    # "$i$f$forEachIndexed":I
    .end local v19    # "index$iv":I
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 81
    .end local v3    # "scaledBoxHeight":F
    .end local v9    # "scaledBoxWidth":F
    .end local v11    # "widthScaling":F
    .end local v13    # "scaledWidthOffset":F
    .end local v14    # "heightScaling":F
    .end local v15    # "scaledHeightOffset":F
    nop

    .line 58
    .end local v8    # "$this$with":Landroid/graphics/Canvas;
    .end local v10    # "$i$a$-with-TextToolCommand$run$1":I
    nop

    .line 82
    return-void

    .line 54
    .end local v17    # "textDescent":F
    .end local v20    # "textHeight":F
    .end local v21    # "maxTextWidth":F
    .local v4, "textDescent":F
    .restart local v5    # "textHeight":F
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
