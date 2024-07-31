.class public final Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;
.super Lorg/catrobat/paintroid/tools/implementation/BrushTool;
.source "WatercolorTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BrushTool;",
        "brushToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "calcRange",
        "",
        "value",
        "",
        "changePaintColor",
        "",
        "color",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 4
    .param p1, "brushToolOptionsView"    # Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;
    .param p2, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p3, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p4, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p5, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p6, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p7, "drawTime"    # J

    const-string v0, "brushToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 43
    nop

    .line 44
    nop

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 42
    invoke-direct/range {p0 .. p8}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    .line 54
    nop

    .line 55
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->calcRange(I)F

    move-result v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast v1, Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->calcRange(I)F

    move-result v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast v1, Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 57
    return-void
.end method

.method private final calcRange(I)F
    .locals 4
    .param p1, "value"    # I

    .line 68
    const/16 v0, 0xff

    .line 69
    .local v0, "oldRange":I
    const/16 v1, 0x82

    .line 70
    .local v1, "newRange":I
    mul-int v2, p1, v1

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x14

    .line 72
    .local v2, "newValue":I
    rsub-int v3, v2, 0x96

    add-int/lit8 v3, v3, 0x14

    .line 73
    .end local v2    # "newValue":I
    .local v3, "newValue":I
    int-to-float v2, v3

    return v2
.end method


# virtual methods
.method public changePaintColor(I)V
    .locals 4
    .param p1, "color"    # I

    .line 60
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->changePaintColor(I)V

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBrushToolOptionsView()Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->calcRange(I)F

    move-result v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast v1, Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->calcRange(I)F

    move-result v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast v1, Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 65
    return-void
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 52
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->WATERCOLOR:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method
