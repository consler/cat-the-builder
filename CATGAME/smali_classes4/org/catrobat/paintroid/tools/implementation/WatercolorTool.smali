.class public final Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;
.super Lorg/catrobat/paintroid/tools/implementation/BrushTool;
.source "WatercolorTool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001e"
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
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "changePaintColor",
        "",
        "color",
        "",
        "invalidate",
        "",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 1

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

    const-string v0, "idlingResource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct/range {p0 .. p9}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance p2, Landroid/graphics/BlurMaskFilter;

    sget-object p3, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;->calcRange(I)F

    move-result p4

    sget-object p5, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, p4, p5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p2, Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance p2, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;->calcRange(I)F

    move-result p3

    sget-object p4, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, p3, p4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p2, Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method


# virtual methods
.method public changePaintColor(IZ)V
    .locals 3

    .line 63
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->changePaintColor(IZ)V

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBrushToolOptionsView()Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance p2, Landroid/graphics/BlurMaskFilter;

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;->calcRange(I)F

    move-result v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p2, Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance p2, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;->calcRange(I)F

    move-result v0

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p2, Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 55
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->WATERCOLOR:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method
