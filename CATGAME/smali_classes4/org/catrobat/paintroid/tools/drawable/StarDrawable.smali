.class public final Lorg/catrobat/paintroid/tools/drawable/StarDrawable;
.super Ljava/lang/Object;
.source "StarDrawable.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;


# annotations
.annotation runtime Lkotlin/Metadata;
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

    move-result p3

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v0

    .line 38
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 39
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 40
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->path:Landroid/graphics/Path;

    .line 41
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v4, 0x0

    .line 42
    invoke-virtual {v3, p3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x41000000    # 8.0f

    div-float v6, v2, v5

    add-float v7, p3, v6

    div-float v8, v0, v5

    sub-float v9, v1, v8

    .line 43
    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    invoke-virtual {v3, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const v7, 0x3fe66666    # 1.8f

    mul-float/2addr v7, v2

    div-float/2addr v7, v5

    add-float v10, p3, v7

    add-float/2addr v8, v1

    .line 45
    invoke-virtual {v3, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v2, v10

    div-float/2addr v2, v5

    add-float v10, p3, v2

    .line 46
    invoke-virtual {v3, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v0

    div-float/2addr v10, v5

    add-float/2addr v1, v10

    .line 47
    invoke-virtual {v3, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, p3, v2

    .line 48
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, p3, v7

    .line 49
    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, p3, v6

    .line 51
    invoke-virtual {v3, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    invoke-virtual {v3, p3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 54
    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, p3, p2}, Landroid/graphics/Path;->offset(FF)V

    .line 56
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
