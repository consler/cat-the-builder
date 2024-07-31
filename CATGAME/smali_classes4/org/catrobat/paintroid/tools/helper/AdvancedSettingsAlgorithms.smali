.class public final Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;
.super Ljava/lang/Object;
.source "AdvancedSettingsAlgorithms.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;",
        "",
        "()V",
        "divider",
        "",
        "smoothing",
        "",
        "threshold",
        "",
        "smoothingAlgorithm",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath;",
        "pointArray",
        "",
        "Landroid/graphics/PointF;",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;

.field public static final divider:I = 0x3

.field public static smoothing:Z = false

.field public static final threshold:D = 0.2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;-><init>()V

    sput-object v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->INSTANCE:Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;

    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final smoothingAlgorithm(Ljava/util/List;)Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .locals 18
    .param p0, "pointArray"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "pointArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 17
    .local v1, "diffPointArray":Ljava/util/List;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 18
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_3

    .line 19
    .local v5, "i":I
    if-ltz v5, :cond_2

    .line 20
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 21
    .local v6, "point":Landroid/graphics/PointF;
    const/4 v7, 0x3

    if-nez v5, :cond_0

    .line 23
    add-int/lit8 v8, v5, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 24
    .local v8, "next":Landroid/graphics/PointF;
    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    .line 25
    .local v9, "differenceX":F
    iget v10, v8, Landroid/graphics/PointF;->y:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    .line 26
    .local v10, "differenceY":F
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v7, v7

    div-float v12, v9, v7

    div-float v7, v10, v7

    invoke-direct {v11, v12, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v7, v11

    .line 27
    .local v7, "newPoint":Landroid/graphics/PointF;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    .end local v7    # "newPoint":Landroid/graphics/PointF;
    .end local v8    # "next":Landroid/graphics/PointF;
    .end local v9    # "differenceX":F
    .end local v10    # "differenceY":F
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v5, v8, :cond_1

    .line 30
    add-int/lit8 v8, v5, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 31
    .local v8, "prev":Landroid/graphics/PointF;
    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    .line 32
    .restart local v9    # "differenceX":F
    iget v10, v6, Landroid/graphics/PointF;->y:F

    iget v11, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    .line 33
    .restart local v10    # "differenceY":F
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v7, v7

    div-float v12, v9, v7

    div-float v7, v10, v7

    invoke-direct {v11, v12, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v7, v11

    .line 34
    .restart local v7    # "newPoint":Landroid/graphics/PointF;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    .end local v7    # "newPoint":Landroid/graphics/PointF;
    .end local v8    # "prev":Landroid/graphics/PointF;
    .end local v9    # "differenceX":F
    .end local v10    # "differenceY":F
    :cond_1
    add-int/lit8 v8, v5, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 38
    .local v8, "next":Landroid/graphics/PointF;
    add-int/lit8 v9, v5, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 39
    .local v9, "prev":Landroid/graphics/PointF;
    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v11, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    .line 40
    .local v10, "differenceX":F
    iget v11, v8, Landroid/graphics/PointF;->y:F

    iget v12, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    .line 41
    .local v11, "differenceY":F
    new-instance v12, Landroid/graphics/PointF;

    int-to-float v7, v7

    div-float v13, v10, v7

    div-float v7, v11, v7

    invoke-direct {v12, v13, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v7, v12

    .line 42
    .restart local v7    # "newPoint":Landroid/graphics/PointF;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v6    # "point":Landroid/graphics/PointF;
    .end local v7    # "newPoint":Landroid/graphics/PointF;
    .end local v8    # "next":Landroid/graphics/PointF;
    .end local v9    # "prev":Landroid/graphics/PointF;
    .end local v10    # "differenceX":F
    .end local v11    # "differenceY":F
    :cond_2
    :goto_1
    nop

    .line 18
    nop

    .end local v5    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 49
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 50
    .local v2, "trueList":Ljava/util/List;
    new-instance v5, Landroid/graphics/PointF;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_4

    .line 53
    .local v6, "i":I
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 54
    .local v7, "point":Landroid/graphics/PointF;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 56
    .local v8, "diff":Landroid/graphics/PointF;
    iget v9, v7, Landroid/graphics/PointF;->x:F

    iget v10, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    .line 57
    .local v9, "erg1":F
    iget v10, v7, Landroid/graphics/PointF;->y:F

    iget v11, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    .line 59
    .local v10, "erg2":F
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v7    # "point":Landroid/graphics/PointF;
    .end local v8    # "diff":Landroid/graphics/PointF;
    .end local v9    # "erg1":F
    .end local v10    # "erg2":F
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v4

    goto :goto_2

    .line 62
    :cond_4
    new-instance v5, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v5}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    .line 63
    .local v5, "pathNew":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    invoke-virtual {v5, v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v13

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-ltz v3, :cond_5

    if-gt v6, v13, :cond_6

    goto :goto_3

    :cond_5
    if-lt v6, v13, :cond_6

    :goto_3
    move v14, v6

    .line 67
    .local v14, "i":I
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/graphics/PointF;

    .line 69
    .local v15, "point":Landroid/graphics/PointF;
    add-int/lit8 v6, v14, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/graphics/PointF;

    .line 70
    .local v12, "prev":Landroid/graphics/PointF;
    add-int/lit8 v6, v14, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/graphics/PointF;

    .line 72
    .local v11, "next":Landroid/graphics/PointF;
    iget v7, v12, Landroid/graphics/PointF;->x:F

    iget v8, v12, Landroid/graphics/PointF;->y:F

    iget v9, v15, Landroid/graphics/PointF;->x:F

    iget v10, v15, Landroid/graphics/PointF;->y:F

    iget v6, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    move/from16 v16, v6

    move-object v6, v5

    move-object/from16 v17, v11

    .end local v11    # "next":Landroid/graphics/PointF;
    .local v17, "next":Landroid/graphics/PointF;
    move/from16 v11, v16

    move-object/from16 v16, v12

    .end local v12    # "prev":Landroid/graphics/PointF;
    .local v16, "prev":Landroid/graphics/PointF;
    move v12, v4

    invoke-virtual/range {v6 .. v12}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->cubicTo(FFFFFF)V

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    .line 66
    .end local v15    # "point":Landroid/graphics/PointF;
    .end local v16    # "prev":Landroid/graphics/PointF;
    .end local v17    # "next":Landroid/graphics/PointF;
    if-eq v14, v13, :cond_6

    add-int v6, v14, v3

    .end local v14    # "i":I
    goto :goto_3

    .line 76
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    return-object v5
.end method
