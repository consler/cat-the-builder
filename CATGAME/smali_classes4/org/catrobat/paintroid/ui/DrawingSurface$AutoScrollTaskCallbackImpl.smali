.class Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;
.super Ljava/lang/Object;
.source "DrawingSurface.kt"

# interfaces
.implements Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/ui/DrawingSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollTaskCallbackImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0092\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J*\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\nH\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;",
        "(Lorg/catrobat/paintroid/ui/DrawingSurface;)V",
        "convertToCanvasFromSurface",
        "",
        "surfacePoint",
        "Landroid/graphics/PointF;",
        "getCurrentToolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getPerspectiveScale",
        "",
        "getToolAutoScrollDirection",
        "Landroid/graphics/Point;",
        "pointX",
        "pointY",
        "screenWidth",
        "",
        "screenHeight",
        "handleToolMove",
        "coordinate",
        "isPointOnCanvas",
        "",
        "refreshDrawingSurface",
        "translatePerspective",
        "dx",
        "dy",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToCanvasFromSurface(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "surfacePoint"    # Landroid/graphics/PointF;

    const-string v0, "surfacePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V

    .line 254
    return-void
.end method

.method public getCurrentToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getToolReference$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPerspectiveScale()F
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/Perspective;->getScale()F

    move-result v0

    return v0
.end method

.method public getToolAutoScrollDirection(FFII)Landroid/graphics/Point;
    .locals 1
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .line 244
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getToolReference$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/Tool;->getAutoScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public handleToolMove(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getToolReference$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Tool;->handleMove(Landroid/graphics/PointF;)Z

    .line 236
    :cond_0
    return-void
.end method

.method public isPointOnCanvas(II)Z
    .locals 1
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .line 228
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/paintroid/ui/DrawingSurface;->isPointOnCanvas(II)Z

    move-result v0

    return v0
.end method

.method public refreshDrawingSurface()V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    .line 232
    return-void
.end method

.method public translatePerspective(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 249
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$AutoScrollTaskCallbackImpl;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/paintroid/ui/Perspective;->translate(FF)V

    .line 250
    return-void
.end method
