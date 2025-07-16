.class public final Lorg/catrobat/paintroid/tools/implementation/SmudgeTool$1;
.super Ljava/lang/Object;
.source "SmudgeTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;-><init>(Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/SmudgeTool$1",
        "Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;",
        "onDragChanged",
        "",
        "drag",
        "",
        "onPressureChanged",
        "pressure",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragChanged(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->updateDrag(I)V

    return-void
.end method

.method public onPressureChanged(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->updatePressure(I)V

    return-void
.end method
