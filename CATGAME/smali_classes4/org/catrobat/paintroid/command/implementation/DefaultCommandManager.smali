.class public final Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;
.super Ljava/lang/Object;
.source "DefaultCommandManager.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/CommandManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultCommandManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultCommandManager.kt\norg/catrobat/paintroid/command/implementation/DefaultCommandManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,488:1\n1#2:489\n764#3:490\n855#3,2:491\n*S KotlinDebug\n*F\n+ 1 DefaultCommandManager.kt\norg/catrobat/paintroid/command/implementation/DefaultCommandManager\n*L\n374#1:490\n374#1:491,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u001b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002J\u0012\u0010\u001e\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\tH\u0016J\u0012\u0010\"\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000fH\u0016J\u0016\u0010#\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002J\u0008\u0010$\u001a\u00020\u001cH\u0016J\u001e\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0008H\u0002J\u0008\u0010)\u001a\u00020\u001cH\u0016J\u0012\u0010*\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000fH\u0002J\u001e\u0010+\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00110,H\u0002J\u0008\u0010-\u001a\u00020\'H\u0016J\n\u0010.\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010/\u001a\u00020\'H\u0016J\u001a\u00100\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000f2\u0008\u0008\u0002\u00101\u001a\u00020\u0011H\u0002J\u0008\u00102\u001a\u00020\u0011H\u0016J\u0012\u00103\u001a\u00020\u001c2\u0008\u00104\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u00105\u001a\u00020\u001cH\u0002J\u0008\u00106\u001a\u00020\u001cH\u0016J\u0008\u00107\u001a\u00020\u001cH\u0016J\u0016\u00108\u001a\u00020\u001c2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002J\u0008\u0010:\u001a\u00020\u001cH\u0016J\u0008\u0010;\u001a\u00020\u001cH\u0016J\u000e\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002J\u0010\u0010=\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\tH\u0016J\u0008\u0010>\u001a\u00020\u001cH\u0016J\u000e\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002J\u0010\u0010@\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016J\u0008\u0010A\u001a\u00020\u001cH\u0016J\u0008\u0010B\u001a\u00020\u001cH\u0016J\u0008\u0010C\u001a\u00020\u001cH\u0016J\u0010\u0010D\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016J\u0008\u0010E\u001a\u00020\u001cH\u0016J\u0008\u0010F\u001a\u00020\u001cH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "commonFactory",
        "Lorg/catrobat/paintroid/common/CommonFactory;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "(Lorg/catrobat/paintroid/common/CommonFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V",
        "commandListeners",
        "",
        "Lorg/catrobat/paintroid/command/CommandManager$CommandListener;",
        "commandManagerModel",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "getCommandManagerModel",
        "()Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "initialStateCommand",
        "Lorg/catrobat/paintroid/command/Command;",
        "isBusy",
        "",
        "()Z",
        "isRedoAvailable",
        "isUndoAvailable",
        "lastExecutedCommand",
        "getLastExecutedCommand",
        "()Lorg/catrobat/paintroid/command/Command;",
        "redoCommandList",
        "Ljava/util/Deque;",
        "undoCommandList",
        "addAndExecuteCommands",
        "",
        "commands",
        "addCommand",
        "command",
        "addCommandListener",
        "commandListener",
        "addCommandWithoutUndo",
        "addCommands",
        "adjustUndoListForClippingTool",
        "backUpCheckBoxes",
        "layerCount",
        "",
        "checkBoxes",
        "executeAllCommands",
        "executeCommand",
        "fetchBackCheckBoxes",
        "",
        "getColorCommandCount",
        "getCommandManagerModelForCatrobatImage",
        "getUndoCommandCount",
        "handleUndo",
        "ignoreColorCommand",
        "isLastColorCommandOnTop",
        "loadCommandsCatrobatImage",
        "model",
        "notifyCommandExecuted",
        "popFirstCommandInRedo",
        "popFirstCommandInUndo",
        "recolorLastLine",
        "colorCommandList",
        "redo",
        "redoInConnectedLinesMode",
        "removeColorCommands",
        "removeCommandListener",
        "reset",
        "separateColorCommandsAndUndo",
        "setInitialStateCommand",
        "shutdown",
        "undo",
        "undoIgnoringColorChanges",
        "undoIgnoringColorChangesAndAddCommand",
        "undoInClippingTool",
        "undoInConnectedLinesMode",
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
.field private final commandListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/CommandManager$CommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private final commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

.field private initialStateCommand:Lorg/catrobat/paintroid/command/Command;

.field private final layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private final redoCommandList:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final undoCommandList:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/common/CommonFactory;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "commonFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    .line 36
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commandListeners:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    check-cast p1, Ljava/util/Deque;

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    .line 40
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    check-cast p1, Ljava/util/Deque;

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    return-void
.end method

.method private final addAndExecuteCommands(Ljava/util/Deque;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;)V"
        }
    .end annotation

    .line 472
    invoke-interface {p1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 473
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 475
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 476
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final addCommands(Ljava/util/Deque;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;)V"
        }
    .end annotation

    .line 481
    invoke-interface {p1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 482
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 484
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final backUpCheckBoxes(ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    sub-int/2addr p1, v2

    if-ltz p1, :cond_5

    :goto_0
    add-int/lit8 v3, p1, -0x1

    .line 432
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v4, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v4

    if-nez v4, :cond_0

    move-object p1, v0

    goto :goto_1

    .line 433
    :cond_0
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez p1, :cond_1

    .line 434
    move-object p1, p0

    check-cast p1, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;

    move v2, v1

    :cond_1
    if-gez v3, :cond_2

    goto :goto_3

    :cond_2
    move p1, v3

    goto :goto_0

    .line 437
    :cond_3
    iget-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 438
    :cond_4
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    if-nez v0, :cond_5

    .line 439
    move-object p1, p0

    check-cast p1, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    :goto_4
    return v1
.end method

.method private final executeCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {p1, v1, v0}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    :goto_1
    return-void
.end method

.method private final fetchBackCheckBoxes(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    sub-int/2addr p1, v1

    if-ltz p1, :cond_4

    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 448
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    .line 449
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    .line 451
    :cond_0
    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    :cond_1
    :goto_1
    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_0

    .line 456
    :cond_3
    iget-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 457
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 458
    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final handleUndo(Lorg/catrobat/paintroid/command/Command;Z)V
    .locals 11

    .line 120
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerCount()I

    move-result v0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lorg/catrobat/paintroid/command/implementation/AddEmptyLayerCommand;

    const-string v1, "AddEmptyLayerCommand::class.java.simpleName"

    const-string v2, "AddEmptyLayerCommand"

    .line 122
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;

    const-string v2, "MergeLayersCommand::class.java.simpleName"

    const-string v3, "MergeLayersCommand"

    .line 123
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, "currentCommandName"

    .line 126
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 128
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    .line 129
    iget-object v6, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v6, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->removeLayerAt(I)Z

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v4

    move-object v1, v5

    .line 132
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v7, Ljava/util/List;

    .line 134
    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 135
    invoke-direct {p0, v0, v7}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->backUpCheckBoxes(ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    move v6, v3

    :cond_1
    if-nez v6, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    iget-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 141
    iget-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {p1, v3, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z

    .line 145
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isRedoAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    iget-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/command/Command;

    .line 147
    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 153
    :cond_5
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->reset()V

    .line 155
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 157
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v4, v1, v6}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 159
    :goto_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->getColorCommandCount()I

    move-result v4

    .line 162
    iget-object v6, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 164
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 165
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/paintroid/command/Command;

    .line 166
    instance-of v9, v8, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-eqz v9, :cond_7

    if-eqz p2, :cond_7

    goto :goto_3

    .line 169
    :cond_7
    iget-object v10, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v10}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v10

    if-nez v10, :cond_8

    move-object v10, v5

    goto :goto_4

    .line 170
    :cond_8
    invoke-interface {v10}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_4
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v9, :cond_9

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_9

    .line 172
    check-cast v8, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    invoke-virtual {v8}, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;->runInUndoMode()V

    goto :goto_3

    .line 174
    :cond_9
    iget-object v9, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v8, v1, v9}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    goto :goto_3

    .line 178
    :cond_a
    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 179
    invoke-direct {p0, v0, v7}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->fetchBackCheckBoxes(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method static synthetic handleUndo$default(Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;Lorg/catrobat/paintroid/command/Command;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 118
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->handleUndo(Lorg/catrobat/paintroid/command/Command;Z)V

    return-void
.end method

.method private final notifyCommandExecuted()V
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    .line 424
    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;->commandPostExecute()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final recolorLastLine(Ljava/util/Deque;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-nez v0, :cond_4

    .line 309
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 312
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 313
    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "colorCommandList.first"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    .line 314
    instance-of v2, v1, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-eqz v2, :cond_2

    .line 315
    check-cast v1, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;->getColor()I

    move-result v1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "undoCommandList.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/command/Command;

    .line 321
    instance-of v3, v2, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-eqz v3, :cond_1

    .line 322
    check-cast v2, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;->getColor()I

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v1, -0x1000000

    .line 327
    :goto_0
    instance-of v2, v0, Lorg/catrobat/paintroid/command/implementation/PathCommand;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 328
    invoke-static {p0, v0, v5, v4, v3}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->handleUndo$default(Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;Lorg/catrobat/paintroid/command/Command;ZILjava/lang/Object;)V

    .line 329
    move-object v2, v0

    check-cast v2, Lorg/catrobat/paintroid/command/implementation/PathCommand;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/command/implementation/PathCommand;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 331
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_1

    .line 332
    :cond_3
    instance-of v2, v0, Lorg/catrobat/paintroid/command/implementation/PointCommand;

    if-eqz v2, :cond_4

    .line 333
    invoke-static {p0, v0, v5, v4, v3}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->handleUndo$default(Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;Lorg/catrobat/paintroid/command/Command;ZILjava/lang/Object;)V

    .line 334
    move-object v2, v0

    check-cast v2, Lorg/catrobat/paintroid/command/implementation/PointCommand;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/command/implementation/PointCommand;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 336
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 339
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->addAndExecuteCommands(Ljava/util/Deque;)V

    .line 340
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    return-void
.end method

.method private final removeColorCommands()Ljava/util/Deque;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Deque;

    .line 465
    :goto_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final separateColorCommandsAndUndo()Ljava/util/Deque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->removeColorCommands()Ljava/util/Deque;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    .line 280
    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v3, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    const-string v3, "command"

    .line 281
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->handleUndo(Lorg/catrobat/paintroid/command/Command;Z)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 81
    :goto_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 82
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    return-void
.end method

.method public addCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCommandWithoutUndo(Lorg/catrobat/paintroid/command/Command;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 87
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 88
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    return-void
.end method

.method public adjustUndoListForClippingTool()V
    .locals 14

    .line 383
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "."

    const-string v7, "@"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/CharSequence;

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    const-class v1, Lorg/catrobat/paintroid/command/implementation/ClippingCommand;

    const-string v1, "ClippingCommand"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 390
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 391
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public executeAllCommands()V
    .locals 6

    .line 212
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerCount()I

    move-result v0

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    .line 215
    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->backUpCheckBoxes(ILjava/util/List;)Z

    .line 217
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->reset()V

    .line 219
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v3, v2, v4}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 223
    :goto_0
    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 224
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 226
    :cond_1
    invoke-interface {v4}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/paintroid/command/Command;

    iget-object v5, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v4, v2, v5}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    goto :goto_1

    .line 229
    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->fetchBackCheckBoxes(ILjava/util/List;)V

    return-void
.end method

.method public getColorCommandCount()I
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "undoCommandList.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 186
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/command/Command;

    .line 188
    instance-of v2, v2, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 3

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 65
    :cond_1
    new-instance v2, Lorg/catrobat/paintroid/model/CommandManagerModel;

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v1, v0}, Lorg/catrobat/paintroid/model/CommandManagerModel;-><init>(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)V

    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method public getCommandManagerModelForCatrobatImage()Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 5

    .line 371
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getInitialCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v1

    .line 374
    invoke-virtual {v0}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getCommands()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 490
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 491
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/catrobat/paintroid/command/Command;

    .line 375
    instance-of v4, v4, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 490
    check-cast v2, Ljava/util/Collection;

    .line 376
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 372
    new-instance v2, Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-direct {v2, v1, v0}, Lorg/catrobat/paintroid/model/CommandManagerModel;-><init>(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)V

    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method public getLastExecutedCommand()Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public getUndoCommandCount()I
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLastColorCommandOnTop()Z
    .locals 4

    .line 197
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "undoCommandList.iterator()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v1

    .line 200
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/paintroid/command/Command;

    .line 202
    instance-of v3, v3, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public isRedoAvailable()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUndoAvailable()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getInitialCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 101
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->reset()V

    .line 102
    invoke-virtual {p1}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getCommands()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 103
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public popFirstCommandInRedo()V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isRedoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public popFirstCommandInUndo()V
    .locals 1

    .line 405
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public redo()V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isRedoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 235
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    :goto_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0, v2, v1}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 244
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    :cond_1
    return-void
.end method

.method public redoInConnectedLinesMode()V
    .locals 5

    .line 344
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isRedoAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 347
    instance-of v1, v0, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    if-eqz v1, :cond_3

    .line 348
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->removeColorCommands()Ljava/util/Deque;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 350
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/command/Command;

    .line 351
    move-object v3, v0

    check-cast v3, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/command/implementation/ColorChangedCommand;->getColor()I

    move-result v3

    .line 353
    instance-of v4, v2, Lorg/catrobat/paintroid/command/implementation/PathCommand;

    if-eqz v4, :cond_0

    .line 354
    check-cast v2, Lorg/catrobat/paintroid/command/implementation/PathCommand;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/command/implementation/PathCommand;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 355
    :cond_0
    instance-of v4, v2, Lorg/catrobat/paintroid/command/implementation/PointCommand;

    if-eqz v4, :cond_1

    .line 356
    check-cast v2, Lorg/catrobat/paintroid/command/implementation/PointCommand;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/command/implementation/PointCommand;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeAllCommands()V

    .line 360
    :cond_2
    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->addAndExecuteCommands(Ljava/util/Deque;)V

    .line 362
    :cond_3
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 364
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 365
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    :cond_4
    return-void
.end method

.method public removeCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 3

    .line 249
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 250
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 251
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->reset()V

    .line 252
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1, v0, v2}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 257
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    return-void
.end method

.method public setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public undo()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 110
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    const-string v1, "command"

    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->handleUndo$default(Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;Lorg/catrobat/paintroid/command/Command;ZILjava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    :cond_0
    return-void
.end method

.method public undoIgnoringColorChanges()V
    .locals 1

    .line 263
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->separateColorCommandsAndUndo()Ljava/util/Deque;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->addAndExecuteCommands(Ljava/util/Deque;)V

    .line 264
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    return-void
.end method

.method public undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->separateColorCommandsAndUndo()Ljava/util/Deque;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 271
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->executeCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 272
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->addAndExecuteCommands(Ljava/util/Deque;)V

    .line 273
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    return-void
.end method

.method public undoInClippingTool()V
    .locals 4

    .line 397
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    const-string v1, "command"

    .line 399
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->handleUndo$default(Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;Lorg/catrobat/paintroid/command/Command;ZILjava/lang/Object;)V

    .line 400
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    :cond_0
    return-void
.end method

.method public undoInConnectedLinesMode()V
    .locals 5

    .line 287
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->removeColorCommands()Ljava/util/Deque;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 289
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{\n                colorC\u2026dList.pop()\n            }"

    .line 289
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{\n                undoCo\u2026dList.pop()\n            }"

    .line 291
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    .line 294
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 295
    invoke-static {p0, v1, v4, v2, v3}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->handleUndo$default(Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;Lorg/catrobat/paintroid/command/Command;ZILjava/lang/Object;)V

    .line 296
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->recolorLastLine(Ljava/util/Deque;)V

    goto :goto_1

    .line 298
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 299
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->addCommands(Ljava/util/Deque;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undo()V

    :cond_3
    :goto_1
    return-void
.end method
