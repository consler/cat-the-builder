.class public Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;
.super Ljava/lang/Object;
.source "AsyncCommandManager.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/CommandManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncCommandManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncCommandManager.kt\norg/catrobat/paintroid/command/implementation/AsyncCommandManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,226:1\n1#2:227\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u0008H\u0016J\u0012\u0010\u001e\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u001f\u001a\u00020\u001aH\u0016J\u0008\u0010 \u001a\u00020\u001aH\u0016J\u0008\u0010!\u001a\u00020\"H\u0016J\n\u0010#\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010$\u001a\u00020\"H\u0016J\u0008\u0010%\u001a\u00020\u000eH\u0016J\u0012\u0010&\u001a\u00020\u001a2\u0008\u0010\'\u001a\u0004\u0018\u00010\nH\u0016J\u001e\u0010(\u001a\u00020\u001a2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001a0*2\u0006\u0010+\u001a\u00020\u000eH\u0002J\u0008\u0010,\u001a\u00020\u001aH\u0002J\u0008\u0010-\u001a\u00020\u001aH\u0016J\u0008\u0010.\u001a\u00020\u001aH\u0016J\u0008\u0010/\u001a\u00020\u001aH\u0016J\u0008\u00100\u001a\u00020\u001aH\u0016J\u0010\u00101\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u0008H\u0016J\u0008\u00102\u001a\u00020\u001aH\u0016J\u0010\u00103\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0013H\u0016J\u0008\u00104\u001a\u00020\u001aH\u0016J\u0008\u00105\u001a\u00020\u001aH\u0016J\u0008\u00106\u001a\u00020\u001aH\u0016J\u0010\u00107\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0013H\u0016J\u0008\u00108\u001a\u00020\u001aH\u0016J\u0008\u00109\u001a\u00020\u001aH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "commandManager",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "(Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V",
        "commandListeners",
        "",
        "Lorg/catrobat/paintroid/command/CommandManager$CommandListener;",
        "commandManagerModel",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "getCommandManagerModel",
        "()Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "isBusy",
        "",
        "()Z",
        "isRedoAvailable",
        "isUndoAvailable",
        "lastExecutedCommand",
        "Lorg/catrobat/paintroid/command/Command;",
        "getLastExecutedCommand",
        "()Lorg/catrobat/paintroid/command/Command;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "shuttingDown",
        "addCommand",
        "",
        "command",
        "addCommandListener",
        "commandListener",
        "addCommandWithoutUndo",
        "adjustUndoListForClippingTool",
        "executeAllCommands",
        "getColorCommandCount",
        "",
        "getCommandManagerModelForCatrobatImage",
        "getUndoCommandCount",
        "isLastColorCommandOnTop",
        "loadCommandsCatrobatImage",
        "model",
        "manageUndoAndRedo",
        "callFunction",
        "Lkotlin/Function0;",
        "condition",
        "notifyCommandPostExecute",
        "popFirstCommandInRedo",
        "popFirstCommandInUndo",
        "redo",
        "redoInConnectedLinesMode",
        "removeCommandListener",
        "reset",
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

.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private final layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private mutex:Lkotlinx/coroutines/sync/Mutex;

.field private shuttingDown:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "commandManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 35
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandListeners:Ljava/util/List;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getCommandManager$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/command/CommandManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    return-object p0
.end method

.method public static final synthetic access$getLayerModel$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getShuttingDown$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->shuttingDown:Z

    return p0
.end method

.method public static final synthetic access$notifyCommandPostExecute(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->notifyCommandPostExecute()V

    return-void
.end method

.method private final manageUndoAndRedo(Lkotlin/jvm/functions/Function0;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 175
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$manageUndoAndRedo$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p2, p1, v4}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$manageUndoAndRedo$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final notifyCommandPostExecute()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->shuttingDown:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    .line 194
    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;->commandPostExecute()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 7

    .line 65
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/command/Command;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public addCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCommandWithoutUndo(Lorg/catrobat/paintroid/command/Command;)V
    .locals 7

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommandWithoutUndo$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommandWithoutUndo$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/command/Command;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public adjustUndoListForClippingTool()V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->adjustUndoListForClippingTool()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public executeAllCommands()V
    .locals 7

    .line 200
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$executeAllCommands$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$executeAllCommands$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getColorCommandCount()I
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->getColorCommandCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v0

    return-object v0
.end method

.method public getCommandManagerModelForCatrobatImage()Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->getCommandManagerModelForCatrobatImage()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getLastExecutedCommand()Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->getLastExecutedCommand()Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    return-object v0
.end method

.method public getUndoCommandCount()I
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->getUndoCommandCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isBusy()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isLastColorCommandOnTop()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->isLastColorCommandOnTop()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isRedoAvailable()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isRedoAvailable()Z

    move-result v0

    return v0
.end method

.method public isUndoAvailable()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    return v0
.end method

.method public loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
    .locals 7

    .line 92
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/model/CommandManagerModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public popFirstCommandInRedo()V
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->popFirstCommandInRedo()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public popFirstCommandInUndo()V
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->popFirstCommandInUndo()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public redo()V
    .locals 2

    .line 109
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$redo$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$redo$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->isRedoAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->manageUndoAndRedo(Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public redoInConnectedLinesMode()V
    .locals 2

    .line 147
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$redoInConnectedLinesMode$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$redoInConnectedLinesMode$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->isRedoAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->manageUndoAndRedo(Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public removeCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 114
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->notifyCommandPostExecute()V

    return-void

    :catchall_0
    move-exception v1

    .line 113
    monitor-exit v0

    throw v1
.end method

.method public setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->shuttingDown:Z

    return-void
.end method

.method public undo()V
    .locals 2

    .line 105
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undo$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undo$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->isUndoAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->manageUndoAndRedo(Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public undoIgnoringColorChanges()V
    .locals 2

    .line 122
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undoIgnoringColorChanges$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undoIgnoringColorChanges$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->isUndoAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->manageUndoAndRedo(Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 7

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undoIgnoringColorChangesAndAddCommand$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undoIgnoringColorChangesAndAddCommand$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/command/Command;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public undoInClippingTool()V
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->undoInClippingTool()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public undoInConnectedLinesMode()V
    .locals 2

    .line 143
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undoInConnectedLinesMode$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undoInConnectedLinesMode$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->isUndoAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->manageUndoAndRedo(Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method
