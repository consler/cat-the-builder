.class public final Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;
.super Ljava/lang/Object;
.source "ShapeTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/ShapeTool;-><init>(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/ShapeTool$1",
        "Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView$Callback;",
        "setDrawType",
        "",
        "drawType",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;",
        "setOutlineWidth",
        "outlineWidth",
        "",
        "setToolType",
        "shape",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableShape;",
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
.field final synthetic $workspace:Lorg/catrobat/paintroid/tools/Workspace;

.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/ShapeTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;Lorg/catrobat/paintroid/tools/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/tools/implementation/ShapeTool;
    .param p2, "$captured_local_variable$1"    # Lorg/catrobat/paintroid/tools/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/tools/Workspace;",
            ")V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDrawType(Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;)V
    .locals 1
    .param p1, "drawType"    # Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    const-string v0, "drawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->access$setShapeDrawType$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;)V

    .line 80
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 81
    return-void
.end method

.method public setOutlineWidth(I)V
    .locals 1
    .param p1, "outlineWidth"    # I

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->access$setShapeOutlineWidth$p(Lorg/catrobat/paintroid/tools/implementation/ShapeTool;I)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 86
    return-void
.end method

.method public setToolType(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)V
    .locals 1
    .param p1, "shape"    # Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;->setBaseShape(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)V

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/ShapeTool$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 76
    return-void
.end method
