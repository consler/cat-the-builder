.class public final Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;
.super Ljava/lang/Object;
.source "DrawingSurface.kt"

# interfaces
.implements Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/DrawingSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "org/catrobat/paintroid/ui/DrawingSurface$callback$1",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;",
        "convertToCanvasFromSurface",
        "",
        "surfacePoint",
        "Landroid/graphics/PointF;",
        "getCurrentTool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "getToolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "multiplyPerspectiveScale",
        "factor",
        "",
        "translatePerspective",
        "x",
        "y",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToCanvasFromSurface(Landroid/graphics/PointF;)V
    .locals 1

    const-string v0, "surfacePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "perspective"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V

    return-void
.end method

.method public getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getToolReference$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "toolReference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    return-object v0
.end method

.method public getToolOptionsViewController()Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getToolOptionsViewController$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "toolOptionsViewController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public multiplyPerspectiveScale(F)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "perspective"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/Perspective;->multiplyScale(F)V

    return-void
.end method

.method public translatePerspective(FF)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$callback$1;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getPerspective$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Lorg/catrobat/paintroid/ui/Perspective;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "perspective"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/paintroid/ui/Perspective;->translate(FF)V

    return-void
.end method
