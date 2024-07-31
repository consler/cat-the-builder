.class public final Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;
.super Ljava/lang/Object;
.source "GeometricFillCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "shapeDrawable",
        "Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;",
        "pointX",
        "",
        "pointY",
        "boxRect",
        "Landroid/graphics/RectF;",
        "boxRotation",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;IILandroid/graphics/RectF;FLandroid/graphics/Paint;)V",
        "<set-?>",
        "getBoxRect",
        "()Landroid/graphics/RectF;",
        "getBoxRotation",
        "()F",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "getPointX",
        "()I",
        "getPointY",
        "getShapeDrawable",
        "()Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;",
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
.field private boxRect:Landroid/graphics/RectF;

.field private boxRotation:F

.field private paint:Landroid/graphics/Paint;

.field private pointX:I

.field private pointY:I

.field private shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;IILandroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "shapeDrawable"    # Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;
    .param p2, "pointX"    # I
    .param p3, "pointY"    # I
    .param p4, "boxRect"    # Landroid/graphics/RectF;
    .param p5, "boxRotation"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    const-string v0, "shapeDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 39
    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->pointX:I

    .line 40
    iput p3, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->pointY:I

    .line 41
    iput-object p4, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->boxRect:Landroid/graphics/RectF;

    .line 42
    iput p5, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->boxRotation:F

    .line 43
    iput-object p6, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 57
    return-void
.end method

.method public final getBoxRect()Landroid/graphics/RectF;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->boxRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getBoxRotation()F
    .locals 1

    .line 42
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->boxRotation:F

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getPointX()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->pointX:I

    return v0
.end method

.method public final getPointY()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->pointY:I

    return v0
.end method

.method public final getShapeDrawable()Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v0, p1

    .local v0, "$this$with":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 47
    .local v1, "$i$a$-with-GeometricFillCommand$run$1":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 48
    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->pointX:I

    int-to-float v2, v2

    iget v3, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->pointY:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->boxRotation:F

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 50
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->shapeDrawable:Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->boxRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->paint:Landroid/graphics/Paint;

    invoke-interface {v2, v0, v3, v4}, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 52
    nop

    .line 46
    .end local v0    # "$this$with":Landroid/graphics/Canvas;
    .end local v1    # "$i$a$-with-GeometricFillCommand$run$1":I
    nop

    .line 53
    return-void
.end method
