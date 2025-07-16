.class public final Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;
.super Ljava/lang/Object;
.source "HeartDrawable.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;",
        "Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;",
        "()V",
        "paint",
        "Landroid/graphics/Paint;",
        "path",
        "Landroid/graphics/Path;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "shapeRect",
        "Landroid/graphics/RectF;",
        "drawPaint",
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


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->path:Landroid/graphics/Path;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "canvas"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "shapeRect"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "drawPaint"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 41
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 42
    iget-object v13, v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->path:Landroid/graphics/Path;

    .line 43
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 44
    invoke-virtual {v13, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v5, -0x41b33333    # -0.2f

    mul-float v6, v12, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v12

    const/high16 v14, 0x41000000    # 8.0f

    div-float v8, v5, v14

    const/high16 v5, 0x40900000    # 4.5f

    mul-float/2addr v5, v4

    div-float v15, v5, v14

    const/high16 v5, -0x40400000    # -1.5f

    mul-float/2addr v5, v4

    div-float v11, v5, v14

    neg-float v10, v11

    move-object v5, v13

    move v7, v15

    move v9, v11

    move/from16 v16, v10

    move v10, v3

    move/from16 v17, v11

    move/from16 v11, v16

    .line 49
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v5, 0x40e66666    # 7.2f

    mul-float/2addr v5, v12

    div-float v6, v5, v14

    const v5, 0x3f99999a    # 1.2f

    mul-float v8, v12, v5

    move-object v5, v13

    move/from16 v7, v17

    move v9, v15

    move v11, v4

    .line 56
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 61
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 62
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v3, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 64
    iget-object v2, v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
