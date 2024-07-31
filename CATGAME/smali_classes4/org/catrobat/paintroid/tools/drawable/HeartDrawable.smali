.class public final Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;
.super Ljava/lang/Object;
.source "HeartDrawable.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "shapeRect"    # Landroid/graphics/RectF;
    .param p3, "drawPaint"    # Landroid/graphics/Paint;

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

    move-result v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 40
    .local v4, "midWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 41
    .local v5, "height":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    .line 42
    .local v13, "width":F
    iget-object v14, v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->path:Landroid/graphics/Path;

    .local v14, "$this$run":Landroid/graphics/Path;
    const/4 v15, 0x0

    .line 43
    .local v15, "$i$a$-run-HeartDrawable$draw$1":I
    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 44
    invoke-virtual {v14, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    const v6, -0x41b33333    # -0.2f

    mul-float v16, v13, v6

    .line 46
    .local v16, "x1":F
    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v13

    const/high16 v17, 0x41000000    # 8.0f

    div-float v18, v6, v17

    .line 47
    .local v18, "x2":F
    const/high16 v6, 0x40900000    # 4.5f

    mul-float/2addr v6, v5

    div-float v19, v6, v17

    .line 48
    .local v19, "y1":F
    const/high16 v6, -0x40400000    # -1.5f

    mul-float/2addr v6, v5

    div-float v12, v6, v17

    .line 49
    .local v12, "y2":F
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    neg-float v11, v12

    .line 49
    move-object v6, v14

    move/from16 v7, v16

    move/from16 v8, v19

    move/from16 v9, v18

    move v10, v12

    move/from16 v20, v11

    move v11, v4

    move/from16 v21, v12

    .end local v12    # "y2":F
    .local v21, "y2":F
    move/from16 v12, v20

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 54
    const v6, 0x40e66666    # 7.2f

    mul-float/2addr v6, v13

    div-float v16, v6, v17

    .line 55
    const v6, 0x3f99999a    # 1.2f

    mul-float v17, v13, v6

    .line 56
    .end local v18    # "x2":F
    .local v17, "x2":F
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 56
    move-object v6, v14

    move/from16 v7, v16

    move/from16 v8, v21

    move/from16 v9, v17

    move/from16 v10, v19

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 61
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 62
    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v6, v7}, Landroid/graphics/Path;->offset(FF)V

    .line 63
    .end local v16    # "x1":F
    .end local v17    # "x2":F
    .end local v19    # "y1":F
    .end local v21    # "y2":F
    nop

    .line 42
    .end local v14    # "$this$run":Landroid/graphics/Path;
    .end local v15    # "$i$a$-run-HeartDrawable$draw$1":I
    nop

    .line 64
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->path:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    return-void
.end method
