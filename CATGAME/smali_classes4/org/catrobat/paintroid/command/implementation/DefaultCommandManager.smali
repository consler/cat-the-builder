.class public final Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;
.super Ljava/lang/Object;
.source "DefaultCommandManager.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/CommandManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultCommandManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultCommandManager.kt\norg/catrobat/paintroid/command/implementation/DefaultCommandManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,226:1\n1#2:227\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u001e\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0008H\u0002J\u001e\u0010!\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00110\"H\u0002J\u0012\u0010#\u001a\u00020\u00192\u0008\u0010$\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010%\u001a\u00020\u0019H\u0002J\u0008\u0010&\u001a\u00020\u0019H\u0016J\u0010\u0010\'\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0008\u0010(\u001a\u00020\u0019H\u0016J\u0010\u0010)\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J\u0008\u0010*\u001a\u00020\u0019H\u0016J\u0008\u0010+\u001a\u00020\u0019H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
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
        "redoCommandList",
        "Ljava/util/Deque;",
        "undoCommandList",
        "addCommand",
        "",
        "command",
        "addCommandListener",
        "commandListener",
        "backUpCheckBoxes",
        "layerCount",
        "",
        "checkBoxes",
        "fetchBackCheckBoxes",
        "",
        "loadCommandsCatrobatImage",
        "model",
        "notifyCommandExecuted",
        "redo",
        "removeCommandListener",
        "reset",
        "setInitialStateCommand",
        "shutdown",
        "undo",
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
    .param p1, "commonFactory"    # Lorg/catrobat/paintroid/common/CommonFactory;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "commonFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commandListeners:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Deque;

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Deque;

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    return-void
.end method

.method private final backUpCheckBoxes(ILjava/util/List;)Z
    .locals 5
    .param p1, "layerCount"    # I
    .param p2, "checkBoxes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 190
    const/4 v0, 0x1

    .line 191
    .local v0, "success":Z
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 192
    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 193
    .local v1, "index":I
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v3, 0x0

    .line 194
    .local v3, "$i$a$-let-DefaultCommandManager$backUpCheckBoxes$1":I
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    nop

    .line 193
    .end local v2    # "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v3    # "$i$a$-let-DefaultCommandManager$backUpCheckBoxes$1":I
    goto :goto_1

    .line 195
    :cond_0
    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;

    .line 227
    .local v2, "$this$run":Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;
    const/4 v3, 0x0

    .line 195
    .local v3, "$i$a$-run-DefaultCommandManager$backUpCheckBoxes$2":I
    const/4 v0, 0x0

    .line 192
    .end local v2    # "$this$run":Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;
    .end local v3    # "$i$a$-run-DefaultCommandManager$backUpCheckBoxes$2":I
    :goto_1
    nop

    .end local v1    # "index":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    if-eqz v1, :cond_2

    .local v1, "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v3, 0x0

    .line 199
    .local v3, "$i$a$-let-DefaultCommandManager$backUpCheckBoxes$3":I
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    nop

    .line 198
    .end local v1    # "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v3    # "$i$a$-let-DefaultCommandManager$backUpCheckBoxes$3":I
    goto :goto_2

    .line 200
    :cond_2
    move-object v1, p0

    check-cast v1, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;

    .line 227
    .local v1, "$this$run":Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;
    const/4 v2, 0x0

    .line 200
    .local v2, "$i$a$-run-DefaultCommandManager$backUpCheckBoxes$4":I
    const/4 v0, 0x0

    .line 201
    .end local v1    # "$this$run":Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;
    .end local v2    # "$i$a$-run-DefaultCommandManager$backUpCheckBoxes$4":I
    :cond_3
    :goto_2
    nop

    .line 203
    return v0
.end method

.method private final fetchBackCheckBoxes(ILjava/util/List;)V
    .locals 5
    .param p1, "layerCount"    # I
    .param p2, "checkBoxes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 207
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 208
    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 209
    .local v0, "index":I
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    .line 210
    .local v2, "destinationLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    if-eqz v2, :cond_0

    move-object v3, v2

    .local v3, "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v4, 0x0

    .line 212
    .local v4, "$i$a$-let-DefaultCommandManager$fetchBackCheckBoxes$1":I
    invoke-interface {v3, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->switchBitmaps(Z)V

    .line 213
    invoke-interface {v3, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    .line 214
    nop

    .line 208
    .end local v2    # "destinationLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v3    # "it":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v4    # "$i$a$-let-DefaultCommandManager$fetchBackCheckBoxes$1":I
    :cond_0
    nop

    .end local v0    # "index":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    .line 219
    .local v0, "destinationLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    if-eqz v0, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->switchBitmaps(Z)V

    .line 221
    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    .line 223
    .end local v0    # "destinationLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    :cond_2
    nop

    .line 224
    return-void
.end method

.method private final notifyCommandExecuted()V
    .locals 2

    .line 184
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

    .line 185
    .local v1, "listener":Lorg/catrobat/paintroid/command/CommandManager$CommandListener;
    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;->commandPostExecute()V

    .line 184
    .end local v1    # "listener":Lorg/catrobat/paintroid/command/CommandManager$CommandListener;
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public addCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 3
    .param p1, "command"    # Lorg/catrobat/paintroid/command/Command;

    .line 74
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 75
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 227
    .local v0, "it":Lorg/catrobat/paintroid/command/Command;
    const/4 v1, 0x0

    .line 75
    .local v1, "$i$a$-let-DefaultCommandManager$addCommand$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 76
    .end local v0    # "it":Lorg/catrobat/paintroid/command/Command;
    .end local v1    # "$i$a$-let-DefaultCommandManager$addCommand$1":I
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    .line 77
    .local v0, "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 78
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {p1, v1, v2}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 80
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    .line 81
    return-void
.end method

.method public addCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1
    .param p1, "commandListener"    # Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 7

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "commandList":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    const/4 v2, 0x0

    check-cast v2, Lorg/catrobat/paintroid/model/CommandManagerModel;

    .line 59
    .local v2, "model":Ljava/lang/Object;
    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-eqz v3, :cond_1

    .local v3, "initialCommand":Lorg/catrobat/paintroid/command/Command;
    const/4 v4, 0x0

    .line 60
    .local v4, "$i$a$-let-DefaultCommandManager$commandManagerModel$1":I
    new-instance v5, Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, v3, v6}, Lorg/catrobat/paintroid/model/CommandManagerModel;-><init>(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)V

    move-object v2, v5

    .line 61
    nop

    .line 59
    .end local v3    # "initialCommand":Lorg/catrobat/paintroid/command/Command;
    .end local v4    # "$i$a$-let-DefaultCommandManager$commandManagerModel$1":I
    nop

    .line 62
    :cond_1
    return-object v2
.end method

.method public isBusy()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isRedoAvailable()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUndoAvailable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
    .locals 2
    .param p1, "model"    # Lorg/catrobat/paintroid/model/CommandManagerModel;

    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getInitialCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 86
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->reset()V

    .line 87
    invoke-virtual {p1}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getCommands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    .line 88
    .local v1, "command":Lorg/catrobat/paintroid/command/Command;
    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 87
    .end local v1    # "command":Lorg/catrobat/paintroid/command/Command;
    goto :goto_0

    .line 90
    :cond_0
    return-void

    .line 84
    :cond_1
    return-void
.end method

.method public redo()V
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/Command;

    .line 148
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    .line 151
    .local v1, "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 152
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getTransparentBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    :cond_1
    :goto_0
    nop

    .line 160
    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0, v2, v3}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 161
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    .line 162
    return-void
.end method

.method public removeCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1
    .param p1, "commandListener"    # Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public reset()V
    .locals 3

    .line 165
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 166
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 167
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->reset()V

    .line 169
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 171
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v1, v0, v2}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 174
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    .line 175
    return-void
.end method

.method public setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 1
    .param p1, "command"    # Lorg/catrobat/paintroid/command/Command;

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    .line 181
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 177
    return-void
.end method

.method public undo()V
    .locals 14

    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "success":Z
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    .line 95
    .local v1, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerCount()I

    move-result v2

    .line 97
    .local v2, "layerCount":I
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "currentCommandName":Ljava/lang/String;
    const-class v4, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AddLayerCommand::class.java.simpleName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 99
    .local v4, "addLayerCommandRegex":Lkotlin/text/Regex;
    const-class v5, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MergeLayersCommand::class.java.simpleName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lkotlin/text/Regex;

    invoke-direct {v6, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 101
    .local v5, "mergeLayerCommandRegex":Lkotlin/text/Regex;
    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    .line 102
    .local v7, "backupLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const-string v8, "currentCommandName"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 103
    add-int/lit8 v2, v2, -0x1

    .line 104
    iget-object v8, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v8, v9}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v7

    .line 105
    iget-object v8, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v8, v9}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->removeLayerAt(I)Z

    move-result v0

    .line 108
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v2, v10}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v8, Ljava/util/List;

    .line 110
    .local v8, "checkBoxes":Ljava/util/List;
    move-object v10, v3

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 111
    invoke-direct {p0, v2, v8}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->backUpCheckBoxes(ILjava/util/List;)Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move v0, v10

    .line 114
    :cond_2
    if-nez v0, :cond_5

    .line 115
    if-eqz v7, :cond_4

    move-object v6, v7

    .local v6, "$this$apply":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v10, 0x0

    .line 116
    .local v10, "$i$a$-apply-DefaultCommandManager$undo$1":I
    iget-object v11, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v11, v6}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerIndexOf(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 117
    iget-object v11, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v11, v9, v6}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z

    .line 119
    :cond_3
    nop

    .line 115
    .end local v6    # "$this$apply":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v10    # "$i$a$-apply-DefaultCommandManager$undo$1":I
    nop

    .line 120
    :cond_4
    iget-object v6, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->redoCommandList:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/paintroid/command/Command;

    .line 121
    .local v6, "commandToRestore":Lorg/catrobat/paintroid/command/Command;
    iget-object v9, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v9, v6}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 123
    return-void

    .line 126
    .end local v6    # "commandToRestore":Lorg/catrobat/paintroid/command/Command;
    :cond_5
    iget-object v9, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v9}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->reset()V

    .line 128
    iget-object v9, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->commonFactory:Lorg/catrobat/paintroid/common/CommonFactory;

    invoke-virtual {v9}, Lorg/catrobat/paintroid/common/CommonFactory;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    .line 130
    .local v9, "canvas":Landroid/graphics/Canvas;
    iget-object v10, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->initialStateCommand:Lorg/catrobat/paintroid/command/Command;

    if-eqz v10, :cond_6

    iget-object v11, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v10, v9, v11}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 132
    :cond_6
    iget-object v10, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->undoCommandList:Ljava/util/Deque;

    invoke-interface {v10}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 133
    .local v10, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 134
    iget-object v11, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v11}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v11

    .line 135
    .local v11, "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_2

    :cond_7
    move-object v12, v6

    :goto_2
    invoke-virtual {v9, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/catrobat/paintroid/command/Command;

    iget-object v13, p0, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    invoke-interface {v12, v9, v13}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 133
    .end local v11    # "currentLayer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    goto :goto_1

    .line 139
    :cond_8
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 140
    invoke-direct {p0, v2, v8}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->fetchBackCheckBoxes(ILjava/util/List;)V

    .line 143
    :cond_9
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/DefaultCommandManager;->notifyCommandExecuted()V

    .line 144
    return-void
.end method
