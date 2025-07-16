.class public final Lorg/catrobat/paintroid/presenter/LayerPresenter;
.super Ljava/lang/Object;
.source "LayerPresenter.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
.implements Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/presenter/LayerPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayerPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerPresenter.kt\norg/catrobat/paintroid/presenter/LayerPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 M2\u00020\u00012\u00020\u0002:\u0001MB5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\"\u001a\u00020#H\u0016J\u0018\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u0019H\u0016J\u0008\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020#H\u0002J\u0008\u0010*\u001a\u00020#H\u0016J\u001a\u0010+\u001a\u0004\u0018\u00010\u001e2\u0006\u0010%\u001a\u00020\u00192\u0006\u0010,\u001a\u00020(H\u0002J\u0012\u0010-\u001a\u0004\u0018\u00010\u001e2\u0006\u0010%\u001a\u00020\u0019H\u0016J\u0010\u0010.\u001a\u00020/2\u0006\u0010%\u001a\u00020\u0019H\u0016J\u0008\u00100\u001a\u00020\u0006H\u0016J\n\u00101\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u00102\u001a\u00020#H\u0016J\u0010\u00103\u001a\u00020(2\u0006\u0010%\u001a\u00020\u0019H\u0002J\u0008\u00104\u001a\u00020(H\u0016J\u0018\u00105\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u0019H\u0016J\u0018\u00107\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u0019H\u0016J\u0008\u00108\u001a\u00020#H\u0016J\u0008\u00109\u001a\u00020#H\u0016J\u0018\u0010:\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00192\u0006\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020#H\u0016J\u0008\u0010>\u001a\u00020#H\u0016J\u0008\u0010?\u001a\u00020#H\u0016J\u0008\u0010@\u001a\u00020#H\u0016J\u0018\u0010A\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00192\u0006\u0010B\u001a\u00020\u0019H\u0016J\u000e\u0010C\u001a\u00020#2\u0006\u0010D\u001a\u00020\u0019J\u0010\u0010E\u001a\u00020#2\u0006\u0010F\u001a\u00020\u0011H\u0016J\u0010\u0010G\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010H\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010I\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010J\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0019H\u0016J\u0018\u0010K\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00192\u0006\u0010,\u001a\u00020(H\u0016J\u0018\u0010L\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u00192\u0006\u0010B\u001a\u00020\u0019H\u0016R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006N"
    }
    d2 = {
        "Lorg/catrobat/paintroid/presenter/LayerPresenter;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;",
        "model",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "listItemDragHandler",
        "Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;",
        "layerMenuViewHolder",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "commandFactory",
        "Lorg/catrobat/paintroid/command/CommandFactory;",
        "navigator",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;)V",
        "adapter",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;",
        "bottomNavigationViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "defaultToolController",
        "Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "drawingSurface",
        "Lorg/catrobat/paintroid/ui/DrawingSurface;",
        "layerCount",
        "",
        "getLayerCount",
        "()I",
        "layers",
        "",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "presenter",
        "getPresenter",
        "()Lorg/catrobat/paintroid/presenter/LayerPresenter;",
        "addLayer",
        "",
        "changeLayerOpacity",
        "position",
        "opacityPercentage",
        "checkIfClippingToolInUse",
        "",
        "checkIfLineToolInUse",
        "disableVisibilityAndOpacityButtons",
        "getDestinationLayer",
        "isVisible",
        "getLayerItem",
        "getLayerItemId",
        "",
        "getListItemDragHandler",
        "getSelectedLayer",
        "invalidate",
        "isPositionValid",
        "isShown",
        "markMergeable",
        "mergeWith",
        "mergeItems",
        "onSelectedLayerInvisible",
        "onSelectedLayerVisible",
        "onStartDragging",
        "view",
        "Landroid/view/View;",
        "onStopDragging",
        "refreshDrawingSurface",
        "refreshLayerMenuViewHolder",
        "removeLayer",
        "reorderItems",
        "swapWith",
        "resetMergeColor",
        "layerPosition",
        "setAdapter",
        "layerAdapter",
        "setBottomNavigationViewHolder",
        "setDefaultToolController",
        "setDrawingSurface",
        "setLayerSelected",
        "setLayerVisibility",
        "swapItemsVisually",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/presenter/LayerPresenter$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

.field private bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

.field private final commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

.field private drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

.field private final layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

.field private final model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private final navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/presenter/LayerPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/presenter/LayerPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->Companion:Lorg/catrobat/paintroid/presenter/LayerPresenter$Companion;

    const-string v0, "LayerPresenter"

    .line 63
    sput-object v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listItemDragHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerMenuViewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 44
    iput-object p2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    .line 45
    iput-object p3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    .line 46
    iput-object p4, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 47
    iput-object p5, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 48
    iput-object p6, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    return-void
.end method

.method private final checkIfClippingToolInUse()Z
    .locals 5

    .line 93
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    :goto_1
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->CLIP:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v0, v2, :cond_5

    .line 94
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setWasRecentlyApplied(Z)V

    .line 96
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getAreaClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->handleDown(Landroid/graphics/PointF;)Z

    .line 98
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->setInitialEventCoordinate(Landroid/graphics/PointF;)V

    .line 99
    iput-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 100
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->pathToDraw:Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->rewind()V

    .line 101
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->getPointArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return v2

    .line 94
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private final checkIfLineToolInUse()V
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v1

    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v1, v2, :cond_4

    .line 77
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    .line 78
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getLineFinalized()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getStartpointSet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getEndpointSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChanges()V

    :cond_1
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->setStartPointToDraw(Landroid/graphics/PointF;)V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->setStartpointSet(Z)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getLineFinalized()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getStartpointSet()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getEndpointSet()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->setToolSwitched(Z)V

    .line 86
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->onClickOnButton()V

    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.LineTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method private final getDestinationLayer(IZ)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 200
    :cond_0
    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    :goto_0
    return-object p1
.end method

.method private final isPositionValid(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 72
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addLayer()V
    .locals 3

    .line 175
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 176
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 177
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfClippingToolInUse()Z

    move-result v0

    .line 178
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v2}, Lorg/catrobat/paintroid/command/CommandFactory;->createAddEmptyLayerCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->copyBitmapOfCurrentLayer()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    sget v1, Lorg/catrobat/paintroid/R$string;->layer_too_many_layers:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;->showToast(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public changeLayerOpacity(II)V
    .locals 2

    .line 217
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    sget-object p1, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    const-string p2, "invalid layer position to change opacity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1, p1, p2}, Lorg/catrobat/paintroid/command/CommandFactory;->createLayerOpacityCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    return-void
.end method

.method public disableVisibilityAndOpacityButtons()V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->disableLayerVisibilityButton()V

    .line 158
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->disableLayerOpacityButton()V

    return-void
.end method

.method public getLayerCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    return-object p1

    :cond_0
    const-string p1, "LayerPresenter.kt"

    const-string v0, "LayerPresenter.getLayerItem(position) - tried to access position out of range of the layers array!"

    .line 167
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayerItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getListItemDragHandler()Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    return-object v0
.end method

.method public bridge synthetic getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getPresenter()Lorg/catrobat/paintroid/presenter/LayerPresenter;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    return-object v0
.end method

.method public getPresenter()Lorg/catrobat/paintroid/presenter/LayerPresenter;
    .locals 0

    return-object p0
.end method

.method public getSelectedLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .line 304
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 306
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit v0

    .line 308
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->refreshLayerMenuViewHolder()V

    .line 309
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->notifyDataSetChanged()V

    .line 310
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    invoke-interface {v0}, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;->stopDragging()V

    return-void

    :catchall_0
    move-exception v1

    .line 304
    monitor-exit v0

    throw v1
.end method

.method public isShown()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->isShown()Z

    move-result v0

    return v0
.end method

.method public markMergeable(II)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setMergable()V

    :goto_0
    return-void

    .line 273
    :cond_3
    :goto_1
    sget-object p1, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    const-string p2, "onLongClickLayerAtPosition at invalid position"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public mergeItems(II)V
    .locals 3

    .line 249
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 250
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    if-nez p2, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result p2

    .line 252
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfClippingToolInUse()Z

    move-result v0

    if-eq p1, p2, :cond_3

    const/4 v1, -0x1

    if-le p2, v1, :cond_3

    .line 254
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 255
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v2, p1, p2}, Lorg/catrobat/paintroid/command/CommandFactory;->createMergeLayersCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 254
    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 257
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    sget p2, Lorg/catrobat/paintroid/R$string;->layer_merged:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;->showToast(II)V

    if-eqz v0, :cond_3

    .line 258
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    check-cast p1, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->copyBitmapOfCurrentLayer()V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onSelectedLayerInvisible()V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->hideToolOptionsView()V

    .line 129
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 130
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    :goto_2
    return-void
.end method

.method public onSelectedLayerVisible()V
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 135
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    :goto_1
    return-void
.end method

.method public onStartDragging(ILandroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    sget-object p1, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    const-string p2, "onLongClickLayerAtPosition at invalid position"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    move v3, v1

    move v4, v2

    :goto_0
    add-int/lit8 v5, v3, 0x1

    .line 290
    iget-object v6, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v1

    :cond_1
    if-le v5, v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_1
    if-eqz v4, :cond_4

    .line 295
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 296
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;->startDragging(ILandroid/view/View;)V

    goto :goto_2

    .line 299
    :cond_4
    iget-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    sget p2, Lorg/catrobat/paintroid/R$string;->no_longclick_on_hidden_layer:I

    invoke-interface {p1, p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;->showToast(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onStopDragging()V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    invoke-interface {v0}, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;->stopDragging()V

    return-void
.end method

.method public refreshDrawingSurface()V
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    :goto_0
    return-void
.end method

.method public refreshLayerMenuViewHolder()V
    .locals 7

    .line 139
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    .line 141
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v5, v1

    .line 144
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x28

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->enableAddLayerButton()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->disableAddLayerButton()V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->enableRemoveLayerButton()V

    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->disableRemoveLayerButton()V

    :goto_1
    return-void
.end method

.method public removeLayer()V
    .locals 4

    .line 186
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 187
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 188
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfClippingToolInUse()Z

    move-result v0

    .line 189
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v1

    .line 191
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v3, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createRemoveLayerCommand(I)Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;->copyBitmapOfCurrentLayer()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.ClippingTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public reorderItems(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    .line 265
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 266
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1, p1, p2}, Lorg/catrobat/paintroid/command/CommandFactory;->createReorderLayersCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 267
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfClippingToolInUse()Z

    :cond_0
    return-void
.end method

.method public final resetMergeColor(I)V
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->isSelected()Z

    move-result v1

    .line 317
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public setAdapter(Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;)V
    .locals 1

    const-string v0, "layerAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    return-void
.end method

.method public setBottomNavigationViewHolder(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V
    .locals 1

    const-string v0, "bottomNavigationViewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    return-void
.end method

.method public setDefaultToolController(Lorg/catrobat/paintroid/controller/DefaultToolController;)V
    .locals 1

    const-string v0, "defaultToolController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    return-void
.end method

.method public setDrawingSurface(Lorg/catrobat/paintroid/ui/DrawingSurface;)V
    .locals 1

    const-string v0, "drawingSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    return-void
.end method

.method public setLayerSelected(I)V
    .locals 3

    .line 206
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    sget-object p1, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    const-string v0, "onClickLayerAtPosition at invalid position"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 211
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 212
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createSelectLayerCommand(I)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    :cond_3
    return-void
.end method

.method public setLayerVisibility(IZ)V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->refreshDrawingSurface()V

    .line 227
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getDestinationLayer(IZ)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    .line 229
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_1

    .line 231
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->onSelectedLayerVisible()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->onSelectedLayerInvisible()V

    :cond_2
    :goto_0
    return-void
.end method

.method public swapItemsVisually(II)I
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    return p2
.end method
