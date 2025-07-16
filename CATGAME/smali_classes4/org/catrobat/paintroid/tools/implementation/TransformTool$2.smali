.class public final Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;
.super Ljava/lang/Object;
.source "TransformTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/TransformTool;-><init>(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/TransformTool$2",
        "Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;",
        "applyResizeClicked",
        "",
        "resizePercentage",
        "",
        "autoCropClicked",
        "flipHorizontalClicked",
        "flipVerticalClicked",
        "hideToolOptions",
        "rotateClockwiseClicked",
        "rotateCounterClockwiseClicked",
        "setBoxHeight",
        "boxHeight",
        "",
        "setBoxWidth",
        "boxWidth",
        "setCenterClicked",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyResizeClicked(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$onApplyResizeClicked(Lorg/catrobat/paintroid/tools/implementation/TransformTool;I)V

    return-void
.end method

.method public autoCropClicked()V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$autoCrop(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    return-void
.end method

.method public flipHorizontalClicked()V
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$flipHorizontal(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    return-void
.end method

.method public flipVerticalClicked()V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$flipVertical(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    return-void
.end method

.method public hideToolOptions()V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hide()V

    return-void
.end method

.method public rotateClockwiseClicked()V
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$rotateClockWise(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    return-void
.end method

.method public rotateCounterClockwiseClicked()V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$rotateCounterClockWise(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    return-void
.end method

.method public setBoxHeight(F)V
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iput p1, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    return-void
.end method

.method public setBoxWidth(F)V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iput p1, v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    return-void
.end method

.method public setCenterClicked()V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$2;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$setCenter(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    return-void
.end method
