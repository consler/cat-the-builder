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
    value = "SMAP\nLayerPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerPresenter.kt\norg/catrobat/paintroid/presenter/LayerPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0001IB5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020#H\u0002J\u001a\u0010%\u001a\u0004\u0018\u00010\u001e2\u0006\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\u0019H\u0016J\u0010\u0010*\u001a\u00020+2\u0006\u0010&\u001a\u00020\u0019H\u0016J\u0010\u0010,\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0019H\u0016J\u0008\u0010-\u001a\u00020#H\u0016J\u0010\u0010.\u001a\u00020(2\u0006\u0010&\u001a\u00020\u0019H\u0002J\u0008\u0010/\u001a\u00020(H\u0016J\u0018\u00100\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00192\u0006\u00101\u001a\u00020\u0019H\u0016J\u0018\u00102\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00192\u0006\u00101\u001a\u00020\u0019H\u0016J \u00103\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00192\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020(H\u0016J\u0018\u00107\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00192\u0006\u00108\u001a\u000209H\u0016J\u0018\u0010:\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00192\u0006\u00108\u001a\u000209H\u0016J\u0008\u0010;\u001a\u00020#H\u0016J\u0008\u0010<\u001a\u00020#H\u0016J\u0008\u0010=\u001a\u00020#H\u0016J\u0018\u0010>\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00192\u0006\u0010?\u001a\u00020\u0019H\u0016J\u000e\u0010@\u001a\u00020#2\u0006\u0010A\u001a\u00020\u0019J\u0010\u0010B\u001a\u00020#2\u0006\u0010C\u001a\u00020\u0011H\u0016J\u0010\u0010D\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010E\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010F\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010G\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u00192\u0006\u0010?\u001a\u00020\u0019H\u0016J\u0018\u0010H\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00192\u0006\u00104\u001a\u000205H\u0016R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006J"
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
        "checkIfLineToolInUse",
        "getDestinationLayer",
        "position",
        "isUnhide",
        "",
        "getLayerItem",
        "getLayerItemId",
        "",
        "hideLayer",
        "invalidate",
        "isPositionValid",
        "isShown",
        "markMergeable",
        "mergeWith",
        "mergeItems",
        "onBindLayerViewHolderAtPosition",
        "viewHolder",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
        "isOpen",
        "onClickLayerAtPosition",
        "view",
        "Landroid/view/View;",
        "onStartDragging",
        "onStopDragging",
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
        "swapItemsVisually",
        "unhideLayer",
        "Companion",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
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

    .line 60
    const-class v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/command/CommandFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;)V
    .locals 2
    .param p1, "model"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .param p2, "listItemDragHandler"    # Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;
    .param p3, "layerMenuViewHolder"    # Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;
    .param p4, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p5, "commandFactory"    # Lorg/catrobat/paintroid/command/CommandFactory;
    .param p6, "navigator"    # Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    iput-object p2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    iput-object p3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    iput-object p4, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iput-object p5, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iput-object p6, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    .line 63
    nop

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    .line 65
    return-void
.end method

.method private final checkIfLineToolInUse()V
    .locals 4

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-eqz v0, :cond_4

    .local v0, "$this$apply":Lorg/catrobat/paintroid/controller/DefaultToolController;
    const/4 v1, 0x0

    .line 71
    .local v1, "$i$a$-apply-LayerPresenter$checkIfLineToolInUse$1":I
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    if-ne v2, v3, :cond_3

    .line 72
    invoke-virtual {v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    .line 73
    .local v2, "lineTool":Lorg/catrobat/paintroid/tools/implementation/LineTool;
    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getLineFinalized()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getStartpointSet()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getEndpointSet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v3}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v3}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 77
    :cond_0
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->setStartPointToDraw(Landroid/graphics/PointF;)V

    .line 78
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->setStartpointSet(Z)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getLineFinalized()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getStartpointSet()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getEndpointSet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->setToolSwitched(Z)V

    .line 81
    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->onClickOnButton()V

    goto :goto_0

    .line 72
    .end local v2    # "lineTool":Lorg/catrobat/paintroid/tools/implementation/LineTool;
    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.LineTool"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_3
    :goto_0
    nop

    .line 84
    nop

    .line 70
    .end local v0    # "$this$apply":Lorg/catrobat/paintroid/controller/DefaultToolController;
    .end local v1    # "$i$a$-apply-LayerPresenter$checkIfLineToolInUse$1":I
    nop

    .line 85
    :cond_4
    return-void
.end method

.method private final getDestinationLayer(IZ)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 4
    .param p1, "position"    # I
    .param p2, "isUnhide"    # Z

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v2, 0x0

    .line 164
    .local v2, "$i$a$-apply-LayerPresenter$getDestinationLayer$1":I
    if-eqz p2, :cond_0

    invoke-interface {v1, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->switchBitmaps(Z)V

    .line 165
    :cond_0
    if-nez p2, :cond_1

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 166
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez p2, :cond_2

    invoke-interface {v1, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->switchBitmaps(Z)V

    .line 167
    :cond_2
    invoke-interface {v1, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    invoke-interface {v1, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    .line 169
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    nop

    .line 163
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v2    # "$i$a$-apply-LayerPresenter$getDestinationLayer$1":I
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 169
    :goto_1
    return-object v0
.end method

.method private final isPositionValid(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 67
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addLayer()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createAddLayerCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    sget v1, Lorg/catrobat/paintroid/R$string;->layer_too_many_layers:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;->showToast(II)V

    .line 148
    :goto_0
    nop

    .line 149
    return-void
.end method

.method public getLayerCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 1
    .param p1, "position"    # I

    .line 138
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    return-object v0
.end method

.method public getLayerItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 140
    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getPresenter()Lorg/catrobat/paintroid/presenter/LayerPresenter;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    return-object v0
.end method

.method public getPresenter()Lorg/catrobat/paintroid/presenter/LayerPresenter;
    .locals 0

    .line 54
    return-object p0
.end method

.method public hideLayer(I)V
    .locals 5
    .param p1, "position"    # I

    .line 172
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    .line 173
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getDestinationLayer(IZ)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    if-eqz v1, :cond_3

    .local v1, "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v2, 0x0

    .line 174
    .local v2, "$i$a$-let-LayerPresenter$hideLayer$1":I
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-eqz v3, :cond_1

    sget-object v4, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v3, v4, v0}, Lorg/catrobat/paintroid/controller/DefaultToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    .line 176
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    if-eqz v0, :cond_2

    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 178
    :cond_2
    nop

    .line 173
    .end local v1    # "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v2    # "$i$a$-let-LayerPresenter$hideLayer$1":I
    nop

    .line 179
    :cond_3
    return-void
.end method

.method public invalidate()V
    .locals 4

    .line 261
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    const/4 v1, 0x0

    .line 262
    .local v1, "$i$a$-synchronized-LayerPresenter$invalidate$1":I
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 263
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v1    # "$i$a$-synchronized-LayerPresenter$invalidate$1":I
    monitor-exit v0

    .line 265
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->refreshLayerMenuViewHolder()V

    .line 266
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->notifyDataSetChanged()V

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    invoke-interface {v0}, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;->stopDragging()V

    .line 268
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isShown()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->isShown()Z

    move-result v0

    return v0
.end method

.method public markMergeable(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "mergeWith"    # I

    .line 218
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setMergable()V

    .line 223
    :cond_1
    return-void

    .line 219
    :cond_2
    :goto_0
    sget-object v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onLongClickLayerAtPosition at invalid position"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public mergeItems(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "mergeWith"    # I

    .line 198
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 199
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    if-eqz v0, :cond_1

    .local v0, "actualLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$a$-let-LayerPresenter$mergeItems$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v2

    .line 201
    .local v2, "actualPosition":I
    if-eq p1, v2, :cond_0

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 202
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 203
    iget-object v4, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v4, p1, v2}, Lorg/catrobat/paintroid/command/CommandFactory;->createMergeLayersCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object v4

    .line 202
    invoke-interface {v3, v4}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 205
    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    sget v4, Lorg/catrobat/paintroid/R$string;->layer_merged:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;->showToast(II)V

    .line 207
    .end local v2    # "actualPosition":I
    :cond_0
    nop

    .line 199
    .end local v0    # "actualLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v1    # "$i$a$-let-LayerPresenter$mergeItems$1":I
    nop

    .line 208
    :cond_1
    return-void
.end method

.method public onBindLayerViewHolderAtPosition(ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    .param p3, "isOpen"    # Z

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    .line 109
    .local v0, "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    invoke-interface {p2, p1, v1, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setSelected(ILorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;Lorg/catrobat/paintroid/controller/DefaultToolController;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setDeselected()V

    .line 113
    :goto_0
    nop

    .line 114
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->updateImageView(Landroid/graphics/Bitmap;)V

    .line 116
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setLayerVisibilityCheckbox(Z)V

    goto :goto_1

    .line 118
    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->updateImageView(Landroid/graphics/Bitmap;)V

    .line 119
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setLayerVisibilityCheckbox(Z)V

    .line 120
    :goto_1
    nop

    .line 121
    return-void
.end method

.method public onClickLayerAtPosition(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onClickLayerAtPosition at invalid position"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    nop

    .local v0, "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v1, 0x0

    .line 254
    .local v1, "$i$a$-let-LayerPresenter$onClickLayerAtPosition$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v0

    .end local v0    # "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v1    # "$i$a$-let-LayerPresenter$onClickLayerAtPosition$1":I
    if-eq p1, v0, :cond_2

    .line 255
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 256
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createSelectLayerCommand(I)Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 258
    :cond_2
    return-void
.end method

.method public onStartDragging(ILandroid/view/View;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onLongClickLayerAtPosition at invalid position"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x1

    .line 235
    .local v0, "isAllowedToLongclick":Z
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 236
    .local v3, "i":I
    iget-object v4, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    const/4 v0, 0x0

    .line 235
    :cond_1
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_2
    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 242
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    invoke-interface {v1, p1, p2}, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;->startDragging(ILandroid/view/View;)V

    goto :goto_1

    .line 245
    :cond_3
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->navigator:Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;

    sget v3, Lorg/catrobat/paintroid/R$string;->no_longclick_on_hidden_layer:I

    invoke-interface {v1, v3, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;->showToast(II)V

    .line 246
    :cond_4
    :goto_1
    nop

    .line 247
    return-void
.end method

.method public onStopDragging()V
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->listItemDragHandler:Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;

    invoke-interface {v0}, Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;->stopDragging()V

    .line 227
    return-void
.end method

.method public refreshLayerMenuViewHolder()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->enableAddLayerButton()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->disableAddLayerButton()V

    .line 128
    :goto_0
    nop

    .line 129
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->enableRemoveLayerButton()V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layerMenuViewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;->disableRemoveLayerButton()V

    .line 133
    :goto_1
    nop

    .line 134
    return-void
.end method

.method public removeLayer()V
    .locals 4

    .line 152
    invoke-virtual {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getLayerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 153
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 154
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    .local v0, "layerToDelete":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v1

    .line 156
    .local v1, "index":I
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v3, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v3, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createRemoveLayerCommand(I)Lorg/catrobat/paintroid/command/Command;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_0

    .line 154
    .end local v0    # "layerToDelete":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v1    # "index":I
    :cond_0
    return-void

    .line 158
    :cond_1
    :goto_0
    return-void
.end method

.method public reorderItems(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "swapWith"    # I

    .line 211
    if-eq p1, p2, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->checkIfLineToolInUse()V

    .line 213
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-interface {v1, p1, p2}, Lorg/catrobat/paintroid/command/CommandFactory;->createReorderLayersCommand(II)Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 215
    :cond_0
    return-void
.end method

.method public final resetMergeColor(I)V
    .locals 2
    .param p1, "layerPosition"    # I

    .line 271
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setSelected()V

    goto :goto_1

    .line 275
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->setDeselected()V

    .line 276
    :cond_2
    :goto_1
    nop

    .line 278
    return-void
.end method

.method public setAdapter(Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;)V
    .locals 1
    .param p1, "layerAdapter"    # Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    const-string v0, "layerAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->adapter:Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;

    .line 89
    return-void
.end method

.method public setBottomNavigationViewHolder(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V
    .locals 1
    .param p1, "bottomNavigationViewHolder"    # Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    const-string v0, "bottomNavigationViewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    .line 101
    return-void
.end method

.method public setDefaultToolController(Lorg/catrobat/paintroid/controller/DefaultToolController;)V
    .locals 1
    .param p1, "defaultToolController"    # Lorg/catrobat/paintroid/controller/DefaultToolController;

    const-string v0, "defaultToolController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    .line 97
    return-void
.end method

.method public setDrawingSurface(Lorg/catrobat/paintroid/ui/DrawingSurface;)V
    .locals 1
    .param p1, "drawingSurface"    # Lorg/catrobat/paintroid/ui/DrawingSurface;

    const-string v0, "drawingSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 93
    return-void
.end method

.method public swapItemsVisually(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "swapWith"    # I

    .line 193
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->layers:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 194
    return p2
.end method

.method public unhideLayer(ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    .line 183
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->getDestinationLayer(IZ)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$a$-let-LayerPresenter$unhideLayer$1":I
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->updateImageView(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->model:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->defaultToolController:Lorg/catrobat/paintroid/controller/DefaultToolController;

    if-eqz v2, :cond_1

    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/paintroid/controller/DefaultToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    .line 187
    :cond_1
    iget-object v2, p0, Lorg/catrobat/paintroid/presenter/LayerPresenter;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    if-eqz v2, :cond_2

    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->BRUSH:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 189
    :cond_2
    nop

    .line 183
    .end local v0    # "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v1    # "$i$a$-let-LayerPresenter$unhideLayer$1":I
    nop

    .line 190
    :cond_3
    return-void
.end method
