.class public final Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;
.super Ljava/lang/Object;
.source "TransformTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/TransformTool;-><init>(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/TransformTool$1",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;",
        "onHide",
        "",
        "onShow",
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
.field final synthetic $contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lorg/catrobat/paintroid/tools/ContextCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/tools/implementation/TransformTool;
    .param p2, "$captured_local_variable$1"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/tools/ContextCallback;",
            ")V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->$contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$isSetCenter$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->$contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 131
    sget v1, Lorg/catrobat/paintroid/R$string;->set_center_info_text:I

    .line 132
    sget-object v2, Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;->LONG:Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;

    .line 130
    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotificationWithDuration(ILorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$getZeroSizeBitmap$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->$contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 136
    sget v1, Lorg/catrobat/paintroid/R$string;->transform_info_text:I

    .line 137
    sget-object v2, Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;->LONG:Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;

    .line 135
    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/tools/ContextCallback;->showNotificationWithDuration(ILorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$setZeroSizeBitmap$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Z)V

    .line 141
    :goto_0
    nop

    .line 142
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$updateToolOptions(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)V

    .line 146
    return-void
.end method
