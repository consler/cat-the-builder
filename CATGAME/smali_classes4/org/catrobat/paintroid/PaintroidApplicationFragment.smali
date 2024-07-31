.class public final Lorg/catrobat/paintroid/PaintroidApplicationFragment;
.super Landroidx/fragment/app/Fragment;
.source "PaintroidApplicationFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Lorg/catrobat/paintroid/PaintroidApplicationFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "getCommandManager",
        "()Lorg/catrobat/paintroid/command/CommandManager;",
        "setCommandManager",
        "(Lorg/catrobat/paintroid/command/CommandManager;)V",
        "currentTool",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "getCurrentTool",
        "()Lorg/catrobat/paintroid/tools/ToolReference;",
        "setCurrentTool",
        "(Lorg/catrobat/paintroid/tools/ToolReference;)V",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "getLayerModel",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "setLayerModel",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V",
        "perspective",
        "Lorg/catrobat/paintroid/ui/Perspective;",
        "getPerspective",
        "()Lorg/catrobat/paintroid/ui/Perspective;",
        "setPerspective",
        "(Lorg/catrobat/paintroid/ui/Perspective;)V",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "getToolPaint",
        "()Lorg/catrobat/paintroid/tools/ToolPaint;",
        "setToolPaint",
        "(Lorg/catrobat/paintroid/tools/ToolPaint;)V",
        "onCreate",
        "",
        "savedInstance",
        "Landroid/os/Bundle;",
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
.field private commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private currentTool:Lorg/catrobat/paintroid/tools/ToolReference;

.field private layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private perspective:Lorg/catrobat/paintroid/ui/Perspective;

.field private toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommandManager()Lorg/catrobat/paintroid/command/CommandManager;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    return-object v0
.end method

.method public final getCurrentTool()Lorg/catrobat/paintroid/tools/ToolReference;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->currentTool:Lorg/catrobat/paintroid/tools/ToolReference;

    return-object v0
.end method

.method public final getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-object v0
.end method

.method public final getPerspective()Lorg/catrobat/paintroid/ui/Perspective;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-object v0
.end method

.method public final getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->setRetainInstance(Z)V

    .line 38
    return-void
.end method

.method public final setCommandManager(Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/command/CommandManager;

    .line 30
    iput-object p1, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    return-void
.end method

.method public final setCurrentTool(Lorg/catrobat/paintroid/tools/ToolReference;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/ToolReference;

    .line 31
    iput-object p1, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->currentTool:Lorg/catrobat/paintroid/tools/ToolReference;

    return-void
.end method

.method public final setLayerModel(Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 33
    iput-object p1, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-void
.end method

.method public final setPerspective(Lorg/catrobat/paintroid/ui/Perspective;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/Perspective;

    .line 32
    iput-object p1, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->perspective:Lorg/catrobat/paintroid/ui/Perspective;

    return-void
.end method

.method public final setToolPaint(Lorg/catrobat/paintroid/tools/ToolPaint;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 34
    iput-object p1, p0, Lorg/catrobat/paintroid/PaintroidApplicationFragment;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    return-void
.end method
