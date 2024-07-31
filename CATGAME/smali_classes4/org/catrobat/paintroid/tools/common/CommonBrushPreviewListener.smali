.class public final Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;
.super Ljava/lang/Object;
.source "CommonBrushPreviewListener.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "(Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ToolType;)V",
        "color",
        "",
        "getColor",
        "()I",
        "maskFilter",
        "Landroid/graphics/MaskFilter;",
        "getMaskFilter",
        "()Landroid/graphics/MaskFilter;",
        "strokeCap",
        "Landroid/graphics/Paint$Cap;",
        "getStrokeCap",
        "()Landroid/graphics/Paint$Cap;",
        "strokeWidth",
        "",
        "getStrokeWidth",
        "()F",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
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
.field private final toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

.field private final toolType:Lorg/catrobat/paintroid/tools/ToolType;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 1
    .param p1, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p2, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;

    const-string v0, "toolPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method
