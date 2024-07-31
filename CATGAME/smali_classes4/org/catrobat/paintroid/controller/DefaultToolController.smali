.class public final Lorg/catrobat/paintroid/controller/DefaultToolController;
.super Ljava/lang/Object;
.source "DefaultToolController.kt"

# interfaces
.implements Lorg/catrobat/paintroid/controller/ToolController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultToolController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultToolController.kt\norg/catrobat/paintroid/controller/DefaultToolController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1#2:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010%\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020 H\u0002J\u0008\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020\'H\u0016J\u0008\u0010)\u001a\u00020\'H\u0016J\u0008\u0010*\u001a\u00020\u0016H\u0016J\u0010\u0010+\u001a\u00020\'2\u0006\u0010,\u001a\u00020 H\u0002J\u0008\u0010-\u001a\u00020\'H\u0016J\u0008\u0010.\u001a\u00020\'H\u0016J\u0008\u0010/\u001a\u00020\'H\u0016J\u0012\u00100\u001a\u00020\'2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u00020\'2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u00104\u001a\u00020\'H\u0016J\u0018\u00105\u001a\u00020\'2\u0006\u00106\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u0016H\u0002J\u0018\u00105\u001a\u00020\'2\u0006\u0010\"\u001a\u00020 2\u0006\u00107\u001a\u00020\u0016H\u0016J\u0008\u00108\u001a\u00020\'H\u0016J\u0008\u00109\u001a\u00020\u0016H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020 0\u001fj\u0008\u0012\u0004\u0012\u00020 `!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\"\u001a\u0004\u0018\u00010 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
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
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "(Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;)V",
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
        "toolList",
        "Ljava/util/HashSet;",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "Lkotlin/collections/HashSet;",
        "toolType",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "createAndSetupTool",
        "createTool",
        "",
        "disableToolOptionsView",
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
        "backPressed",
        "toggleToolOptionsView",
        "toolOptionsViewVisible",
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
.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private final contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

.field private onColorPickedListener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

.field private final toolFactory:Lorg/catrobat/paintroid/tools/ToolFactory;

.field private final toolList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/catrobat/paintroid/tools/ToolType;",
            ">;"
        }
    .end annotation
.end field

.field private final toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

.field private final toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

.field private final toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

.field private final workspace:Lorg/catrobat/paintroid/tools/Workspace;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ToolReference;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolFactory;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;)V
    .locals 3
    .param p1, "toolReference"    # Lorg/catrobat/paintroid/tools/ToolReference;
    .param p2, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p3, "toolFactory"    # Lorg/catrobat/paintroid/tools/ToolFactory;
    .param p4, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p5, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p6, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p7, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;

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

    const-string v0, "toolPaint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    iput-object p2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    iput-object p3, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolFactory:Lorg/catrobat/paintroid/tools/ToolFactory;

    iput-object p4, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iput-object p5, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iput-object p6, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    iput-object p7, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/catrobat/paintroid/tools/ToolType;

    .line 51
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->TEXT:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 54
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->SHAPE:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 50
    invoke-static {v0}, Lkotlin/collections/SetsKt;->hashSetOf([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolList:Ljava/util/HashSet;

    return-void
.end method

.method private final createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;
    .locals 9
    .param p1, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;

    .line 71
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->removeToolViews()V

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showCheckmark()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hideCheckmark()V

    .line 78
    :goto_0
    nop

    .line 79
    iget-object v1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolFactory:Lorg/catrobat/paintroid/tools/ToolFactory;

    .line 80
    nop

    .line 81
    iget-object v3, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 82
    iget-object v4, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 83
    iget-object v5, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 84
    iget-object v6, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    .line 85
    iget-object v7, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    .line 86
    iget-object v8, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->onColorPickedListener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    if-nez v8, :cond_2

    const-string v0, "onColorPickedListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    :cond_2
    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lorg/catrobat/paintroid/tools/ToolFactory;->createTool(Lorg/catrobat/paintroid/tools/ToolType;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    .line 88
    .local v0, "tool":Lorg/catrobat/paintroid/tools/Tool;
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    if-eq p1, v1, :cond_3

    .line 89
    iget-object v1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->resetToOrigin()V

    .line 90
    iget-object v1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    .line 92
    :cond_3
    return-object v0
.end method

.method private final hidePlusIfShown(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 3
    .param p1, "currentToolType"    # Lorg/catrobat/paintroid/tools/ToolType;

    .line 141
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->getTopBarViewHolder()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->getTopBarViewHolder()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    .local v0, "visibility":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 144
    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;->getTopBarViewHolder()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 147
    .end local v0    # "visibility":Z
    :cond_1
    return-void
.end method

.method private final switchTool(Lorg/catrobat/paintroid/tools/Tool;Z)V
    .locals 5
    .param p1, "tool"    # Lorg/catrobat/paintroid/tools/Tool;
    .param p2, "backPressed"    # Z

    .line 122
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    .line 123
    .local v0, "currentTool":Lorg/catrobat/paintroid/tools/Tool;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 124
    .local v2, "currentToolType":Lorg/catrobat/paintroid/tools/ToolType;
    :goto_0
    iget-object v3, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolList:Ljava/util/HashSet;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 125
    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;

    .line 126
    .local v3, "toolToApply":Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onClickOnButton()V

    goto :goto_1

    .line 125
    .end local v3    # "toolToApply":Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.BaseToolWithShape"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    move-object v3, v2

    .line 187
    .local v3, "it":Lorg/catrobat/paintroid/tools/ToolType;
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$a$-let-DefaultToolController$switchTool$1":I
    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/controller/DefaultToolController;->hidePlusIfShown(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 131
    .end local v3    # "it":Lorg/catrobat/paintroid/tools/ToolType;
    .end local v4    # "$i$a$-let-DefaultToolController$switchTool$1":I
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    :cond_4
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v3

    if-ne v1, v3, :cond_5

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v1, "toolBundle":Landroid/os/Bundle;
    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Tool;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/Tool;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 136
    .end local v1    # "toolBundle":Landroid/os/Bundle;
    :cond_5
    iget-object v1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/ToolReference;->setTool(Lorg/catrobat/paintroid/tools/Tool;)V

    .line 137
    iget-object v1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 138
    return-void
.end method


# virtual methods
.method public createTool()V
    .locals 4

    .line 158
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    .line 159
    .local v0, "currentTool":Lorg/catrobat/paintroid/tools/Tool;
    if-nez v0, :cond_0

    .line 160
    iget-object v1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/controller/DefaultToolController;->createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/tools/ToolReference;->setTool(Lorg/catrobat/paintroid/tools/Tool;)V

    goto :goto_0

    .line 162
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/tools/Tool;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    :cond_1
    iget-object v2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/controller/DefaultToolController;->createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/catrobat/paintroid/tools/ToolReference;->setTool(Lorg/catrobat/paintroid/tools/Tool;)V

    .line 165
    iget-object v2, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/tools/Tool;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 166
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    nop

    .line 167
    iget-object v1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 168
    return-void
.end method

.method public disableToolOptionsView()V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->disable()V

    .line 151
    return-void
.end method

.method public enableToolOptionsView()V
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->enable()V

    .line 155
    return-void
.end method

.method public getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    return-object v0
.end method

.method public getToolColor()Ljava/lang/Integer;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

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

.method public hasToolOptionsView()Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->hasOptions()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideToolOptionsView()V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hide()V

    .line 105
    return-void
.end method

.method public isDefaultTool()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 114
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->RESET_INTERNAL_STATE:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    .line 115
    :cond_0
    return-void
.end method

.method public resetToolInternalStateOnImageLoaded()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->NEW_IMAGE_LOADED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setBitmapFromSource(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ImportTool;

    .line 183
    .local v0, "importTool":Lorg/catrobat/paintroid/tools/implementation/ImportTool;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/ImportTool;->setBitmapFromSource(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_0
    return-void

    .line 181
    .end local v0    # "importTool":Lorg/catrobat/paintroid/tools/implementation/ImportTool;
    :cond_1
    return-void
.end method

.method public setOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V
    .locals 1
    .param p1, "onColorPickedListener"    # Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    const-string v0, "onColorPickedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->onColorPickedListener:Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    .line 97
    return-void
.end method

.method public showToolOptionsView()V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    .line 109
    return-void
.end method

.method public switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V
    .locals 1
    .param p1, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;
    .param p2, "backPressed"    # Z

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->createAndSetupTool(Lorg/catrobat/paintroid/tools/ToolType;)Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/catrobat/paintroid/controller/DefaultToolController;->switchTool(Lorg/catrobat/paintroid/tools/Tool;Z)V

    .line 101
    return-void
.end method

.method public toggleToolOptionsView()V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hide()V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    .line 175
    :goto_0
    nop

    .line 176
    return-void
.end method

.method public toolOptionsViewVisible()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/controller/DefaultToolController;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    return v0
.end method
