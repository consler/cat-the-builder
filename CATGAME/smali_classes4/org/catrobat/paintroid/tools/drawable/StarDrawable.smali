.class public final Lorg/catrobat/paintroid/tools/drawable/StarDrawable;
.super Ljava/lang/Object;
.source "StarDrawable.kt"

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
        "Lorg/catrobat/paintroid/tools/drawable/StarDrawable;",
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->path:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "shapeRect"    # Landroid/graphics/RectF;
    .param p3, "drawPaint"    # Landroid/graphics/Paint;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawPaint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 37
    .local v0, "midWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    .line 38
    .local v2, "midHeight":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 39
    .local v1, "height":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 40
    .local v3, "width":F
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->path:Landroid/graphics/Path;

    .local v4, "$this$run":Landroid/graphics/Path;
    const/4 v5, 0x0

    .line 41
    .local v5, "$i$a$-run-StarDrawable$draw$1":I
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 42
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 43
    const/high16 v7, 0x41000000    # 8.0f

    div-float v8, v3, v7

    add-float/2addr v8, v0

    div-float v9, v1, v7

    sub-float v9, v2, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    div-float v8, v1, v7

    sub-float v8, v2, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    const v8, 0x3fe66666    # 1.8f

    mul-float v9, v3, v8

    div-float/2addr v9, v7

    add-float/2addr v9, v0

    div-float v10, v1, v7

    add-float/2addr v10, v2

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    const/high16 v9, 0x40400000    # 3.0f

    mul-float v10, v3, v9

    div-float/2addr v10, v7

    add-float/2addr v10, v0

    invoke-virtual {v4, v10, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v1

    div-float/2addr v10, v7

    add-float/2addr v10, v2

    invoke-virtual {v4, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    mul-float/2addr v9, v3

    div-float/2addr v9, v7

    sub-float v9, v0, v9

    invoke-virtual {v4, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    mul-float/2addr v8, v3

    div-float/2addr v8, v7

    sub-float v8, v0, v8

    div-float v9, v1, v7

    add-float/2addr v9, v2

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    div-float v8, v1, v7

    sub-float v8, v2, v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    div-float v8, v3, v7

    sub-float v8, v0, v8

    div-float v7, v1, v7

    sub-float v7, v2, v7

    invoke-virtual {v4, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    invoke-virtual {v4, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 54
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->offset(FF)V

    .line 55
    nop

    .line 40
    .end local v4    # "$this$run":Landroid/graphics/Path;
    .end local v5    # "$i$a$-run-StarDrawable$draw$1":I
    nop

    .line 56
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 57
    return-void
.end method
