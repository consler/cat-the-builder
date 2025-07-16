.class public final Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;
.super Ljava/lang/Object;
.source "AdvancedSettingsAlgorithms.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;

.field public static final divider:I = 0x3

.field public static smoothing:Z = false

.field public static final threshold:D = 0.2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;-><init>()V

    sput-object v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->INSTANCE:Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;

    const/4 v0, 0x1

    .line 8
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
    .locals 17
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
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    .line 18
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    move v5, v3

    :goto_0
    add-int/lit8 v6, v5, 0x1

    if-ltz v5, :cond_2

    .line 20
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    const/4 v8, 0x3

    if-nez v5, :cond_0

    .line 23
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 24
    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    .line 25
    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v7

    .line 26
    new-instance v7, Landroid/graphics/PointF;

    int-to-float v8, v8

    div-float/2addr v9, v8

    div-float/2addr v5, v8

    invoke-direct {v7, v9, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 27
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    if-ne v5, v9, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 30
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 31
    iget v9, v7, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    .line 32
    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v5

    .line 33
    new-instance v5, Landroid/graphics/PointF;

    int-to-float v8, v8

    div-float/2addr v9, v8

    div-float/2addr v7, v8

    invoke-direct {v5, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 34
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    add-int/lit8 v5, v5, -0x1

    .line 38
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 39
    iget v9, v7, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    .line 40
    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v5

    .line 41
    new-instance v5, Landroid/graphics/PointF;

    int-to-float v8, v8

    div-float/2addr v9, v8

    div-float/2addr v7, v8

    invoke-direct {v5, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 42
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-le v6, v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_0

    .line 49
    :cond_4
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 50
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

    if-ge v4, v5, :cond_6

    move v6, v4

    :goto_3
    add-int/lit8 v7, v6, 0x1

    .line 53
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 54
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 56
    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    .line 57
    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v6

    .line 59
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v9, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v7, v5, :cond_5

    goto :goto_4

    :cond_5
    move v6, v7

    goto :goto_3

    .line 62
    :cond_6
    :goto_4
    new-instance v0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    .line 63
    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_7

    if-le v5, v6, :cond_8

    :cond_7
    if-gez v3, :cond_a

    if-gt v6, v5, :cond_a

    :cond_8
    :goto_5
    add-int v7, v5, v3

    .line 67
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    add-int/lit8 v9, v5, -0x1

    .line 69
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    add-int/lit8 v10, v5, 0x1

    .line 70
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 72
    iget v11, v9, Landroid/graphics/PointF;->x:F

    iget v12, v9, Landroid/graphics/PointF;->y:F

    iget v13, v8, Landroid/graphics/PointF;->x:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v8, v10, Landroid/graphics/PointF;->y:F

    move-object v10, v0

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->cubicTo(FFFFFF)V

    .line 73
    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->incReserve(I)V

    if-ne v5, v6, :cond_9

    goto :goto_6

    :cond_9
    move v5, v7

    goto :goto_5

    .line 76
    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method
