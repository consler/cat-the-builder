.class public final Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;
.super Ljava/lang/Object;
.source "StampTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/StampTool;-><init>(Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/StampTool$callback$1",
        "Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;",
        "copyClicked",
        "",
        "cutClicked",
        "pasteClicked",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/StampTool;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/tools/implementation/StampTool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyClicked()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->highlightBox()V

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->copyBoxContent()V

    .line 69
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->access$getStampToolOptionsView$p(Lorg/catrobat/paintroid/tools/implementation/StampTool;)Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;->enablePaste(Z)V

    .line 70
    return-void
.end method

.method public cutClicked()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->highlightBox()V

    .line 74
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->copyBoxContent()V

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->access$cutBoxContent(Lorg/catrobat/paintroid/tools/implementation/StampTool;)V

    .line 76
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->access$getStampToolOptionsView$p(Lorg/catrobat/paintroid/tools/implementation/StampTool;)Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;->enablePaste(Z)V

    .line 77
    return-void
.end method

.method public pasteClicked()V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->highlightBox()V

    .line 81
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/StampTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/StampTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/StampTool;->access$pasteBoxContent(Lorg/catrobat/paintroid/tools/implementation/StampTool;)V

    .line 82
    return-void
.end method
