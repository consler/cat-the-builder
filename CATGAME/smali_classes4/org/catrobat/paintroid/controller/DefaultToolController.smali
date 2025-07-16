.class public final Lorg/catrobat/paintroid/controller/DefaultToolController;
.super Ljava/lang/Object;
.source "DefaultToolController.kt"

# interfaces
.implements Lorg/catrobat/paintroid/controller/ToolController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultToolController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultToolController.kt\norg/catrobat/paintroid/controller/DefaultToolController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n1#2:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0018H\u0016J\u0010\u0010\'\u001a\u00020\u00142\u0006\u0010 \u001a\u00020!H\u0002J\u0008\u0010(\u001a\u00020%H\u0016J\u0008\u0010)\u001a\u00020%H\u0016J\u0008\u0010*\u001a\u00020%H\u0016J\u0008\u0010+\u001a\u00020%H\u0016J\u0008\u0010,\u001a\u00020%H\u0016J\u0008\u0010-\u001a\u00020\u0018H\u0016J\u0010\u0010.\u001a\u00020%2\u0006\u0010/\u001a\u00020!H\u0002J\u0008\u00100\u001a\u00020%H\u0016J\u0008\u00101\u001a\u00020%H\u0016J\u0008\u00102\u001a\u00020%H\u0016J\u0012\u00103\u001a\u00020%2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0010\u00106\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u00107\u001a\u00020%H\u0016J\u0010\u00108\u001a\u00020%2\u0006\u00109\u001a\u00020\u0014H\u0002J\u0010\u00108\u001a\u00020%2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010:\u001a\u00020%H\u0016J\u0008\u0010;\u001a\u00020\u0018H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\u0004\u0018\u00010!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "Lorg/catrobat/paintroid/controller/ToolController;",
        "toolReference",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolFactory",
        "Lorg/catrobat/paintroid/tools/ToolFactory;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "(Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;)V",
        "currentTool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "getCurrentTool",
        "()Lorg/catrobat/paintroid/tools/Tool;",
        "isDefaultTool",
        "",
        "()Z",
        "onColorPickedListener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "toolColor",
        "",
        "getToolColor",
        "()Ljava/lang/Integer;",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "adjustClippingToolOnBackPressed",
        "",
        "backPressed",
        "createAndSetupTool",
        "createTool",
        "disableHideOption",
        "disableToolOptionsView",
        "enableHideOption",
        "enableToolOptionsView",
        "hasToolOptionsView",
        "hidePlusIfShown",
        "currentToolType",
        "hideToolOptionsView",
        "resetToolInternalState",
        "resetToolInternalStateOnImageLoaded",
        "setBitmapFromSource",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "setOnColorPickedListener",
        "showToolOptionsView",
        "switchTool",
        "tool",
        "toggleToolOptionsView",
        "toolOptionsViewVisible",
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
.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private final contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

.field private final idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field private onColorPickedListener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

.field private final toolFactory:Lorg/catrobat/paintroid/tools/ToolFactory;

.field private final toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

.field private final toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

.field private final toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

.field private final workspace:Lorg/catrobat/paintroid/tools/Workspace;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;)V
    .locals 1

    const-string v0, "toolReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    .line 46
    iput-object p2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 47
    iput-object p3, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolFactory:Lorg/catrobat/paintroid/tools/ToolFactory;

    .line 48
    iput-object p4, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 49
    iput-object p5, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 50
    iput-object p6, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 51
    iput-object p7, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 52
    iput-object p8, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    return-void
.end method

.method private final createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;
    .locals 10

    .line 69
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->removeToolViews()V

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->CLIP:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->removeToolViews()V

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getToolList()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showCheckmark()V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hideCheckmark()V

    .line 79
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_2
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->SPRAY:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v2, :cond_5

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->resetRadiusToStrokeWidth()V

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.SprayTool"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolFactory:Lorg/catrobat/paintroid/tools/ToolFactory;

    .line 84
    iget-object v3, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 85
    iget-object v4, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 86
    iget-object v5, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 87
    iget-object v6, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 88
    iget-object v7, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 89
    iget-object v8, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 90
    iget-object v2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->onColorPickedListener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    if-nez v2, :cond_6

    const-string v2, "onColorPickedListener"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v1

    goto :goto_4

    :cond_6
    move-object v9, v2

    :goto_4
    move-object v1, v0

    move-object v2, p1

    .line 82
    invoke-interface/range {v1 .. v9}, Lorg/catrobat/paintroid/tools/ToolFactory;->createTool(Lorg/catrobat/paintroid/tools/ToolType;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    .line 92
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq p1, v1, :cond_7

    .line 93
    iget-object p1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->resetToOrigin()V

    .line 94
    iget-object p1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    :cond_7
    return-object v0
.end method

.method private final hidePlusIfShown(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 1

    .line 162
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne p1, v0, :cond_5

    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->getTopBarViewHolder()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 163
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->getTopBarViewHolder()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 165
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->getTopBarViewHolder()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final switchTool(Lorg/catrobat/paintroid/tools/Tool;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    .line 134
    :goto_0
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->ERASER:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 135
    move-object v2, v0

    check-cast v2, Lorg/catrobat/paintroid/tools/implementation/EraserTool;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->setSavedColor()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.EraserTool"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 137
    :cond_3
    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->hidePlusIfShown(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 139
    :goto_2
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Tool;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/Tool;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 144
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/ToolReference;->setTool(Lorg/catrobat/paintroid/tools/Tool;)V

    .line 145
    iget-object p1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    return-void
.end method


# virtual methods
.method public adjustClippingToolOnBackPressed(Z)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getAreaClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    new-instance p1, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->handleDown(Landroid/graphics/PointF;)Z

    const/4 p1, 0x1

    .line 153
    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setWasRecentlyApplied(Z)V

    .line 154
    sget-object p1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->NEW_IMAGE_LOADED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->onClickOnButton()V

    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createTool()V
    .locals 3

    .line 187
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ToolReference;->setTool(Lorg/catrobat/paintroid/tools/Tool;)V

    goto :goto_1

    .line 191
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    iget-object v2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/tools/Tool;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/tools/ToolReference;->setTool(Lorg/catrobat/paintroid/tools/Tool;)V

    .line 194
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Tool;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 196
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    return-void
.end method

.method public disableHideOption()V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->disableHide()V

    return-void
.end method

.method public disableToolOptionsView()V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->disable()V

    return-void
.end method

.method public enableHideOption()V
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->enableHide()V

    return-void
.end method

.method public enableToolOptionsView()V
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->enable()V

    return-void
.end method

.method public getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    return-object v0
.end method

.method public getToolColor()Ljava/lang/Integer;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getToolList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/catrobat/paintroid/tools/ToolType;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lorg/catrobat/paintroid/controller/ToolController$DefaultImpls;->getToolList(Lorg/catrobat/paintroid/controller/ToolController;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasToolOptionsView()Z
    .locals 1

    .line 207
    invoke-virtual {p0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->hasOptions()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public hideToolOptionsView()V
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hide()V

    .line 109
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->TEXT:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->hideTextToolLayout()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.TextTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public isDefaultTool()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public resetToolInternalState()V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->RESET_INTERNAL_STATE:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    :goto_0
    return-void
.end method

.method public resetToolInternalStateOnImageLoaded()V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->NEW_IMAGE_LOADED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    :goto_0
    return-void
.end method

.method public setBitmapFromSource(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;

    if-nez v0, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->setBitmapFromSource(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public setOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V
    .locals 1

    const-string v0, "onColorPickedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->onColorPickedListener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    return-void
.end method

.method public showToolOptionsView()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    .line 116
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->TEXT:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->showTextToolLayout()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.TextTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 1

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->switchTool(Lorg/catrobat/paintroid/tools/Tool;)V

    return-void
.end method

.method public toggleToolOptionsView()V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hide()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    :goto_0
    return-void
.end method

.method public toolOptionsViewVisible()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    return v0
.end method
