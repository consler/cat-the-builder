.class public Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;
.super Ljava/lang/Object;
.source "AsyncCommandManager.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/CommandManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncCommandManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncCommandManager.kt\norg/catrobat/paintroid/command/implementation/AsyncCommandManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n1#2:143\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0012\u0010\u001b\u001a\u00020\u00162\u0008\u0010\u001c\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0010\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\"\u001a\u00020\u0016H\u0016J\u0008\u0010#\u001a\u00020\u0016H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
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
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "shuttingDown",
        "addCommand",
        "",
        "command",
        "Lorg/catrobat/paintroid/command/Command;",
        "addCommandListener",
        "commandListener",
        "loadCommandsCatrobatImage",
        "model",
        "notifyCommandPostExecute",
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

.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private final layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private mutex:Lkotlinx/coroutines/sync/Mutex;

.field private shuttingDown:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 3
    .param p1, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "commandManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandListeners:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getCommandManager$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/command/CommandManager;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    return-object v0
.end method

.method public static final synthetic access$getLayerModel$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-object v0
.end method

.method public static final synthetic access$getMutex$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lkotlinx/coroutines/sync/Mutex;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public static final synthetic access$getShuttingDown$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    .line 33
    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->shuttingDown:Z

    return v0
.end method

.method public static final synthetic access$notifyCommandPostExecute(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    .line 33
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->notifyCommandPostExecute()V

    return-void
.end method

.method public static final synthetic access$setMutex$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lkotlinx/coroutines/sync/Mutex;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/sync/Mutex;

    .line 33
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$setShuttingDown$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->shuttingDown:Z

    return-void
.end method

.method private final notifyCommandPostExecute()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->shuttingDown:Z

    if-nez v0, :cond_0

    .line 136
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

    .line 137
    .local v1, "listener":Lorg/catrobat/paintroid/command/CommandManager$CommandListener;
    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager$CommandListener;->commandPostExecute()V

    .line 136
    .end local v1    # "listener":Lorg/catrobat/paintroid/command/CommandManager$CommandListener;
    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public addCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 7
    .param p1, "command"    # Lorg/catrobat/paintroid/command/Command;

    .line 62
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/command/Command;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 72
    return-void
.end method

.method public addCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1
    .param p1, "commandListener"    # Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isRedoAvailable()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isRedoAvailable()Z

    move-result v0

    return v0
.end method

.method public isUndoAvailable()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    return v0
.end method

.method public loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
    .locals 7
    .param p1, "model"    # Lorg/catrobat/paintroid/model/CommandManagerModel;

    .line 75
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/model/CommandManagerModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 85
    return-void
.end method

.method public redo()V
    .locals 7

    .line 105
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$redo$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$redo$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 119
    return-void
.end method

.method public removeCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
    .locals 1
    .param p1, "commandListener"    # Lorg/catrobat/paintroid/command/CommandManager$CommandListener;

    const-string v0, "commandListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public reset()V
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    .line 143
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$a$-synchronized-AsyncCommandManager$reset$1":I
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2}, Lorg/catrobat/paintroid/command/CommandManager;->reset()V

    .end local v1    # "$i$a$-synchronized-AsyncCommandManager$reset$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 123
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->notifyCommandPostExecute()V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 3
    .param p1, "command"    # Lorg/catrobat/paintroid/command/Command;

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    monitor-enter v0

    .line 143
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$a$-synchronized-AsyncCommandManager$setInitialStateCommand$1":I
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2, p1}, Lorg/catrobat/paintroid/command/CommandManager;->setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V

    .end local v1    # "$i$a$-synchronized-AsyncCommandManager$setInitialStateCommand$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public shutdown()V
    .locals 1

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->shuttingDown:Z

    .line 128
    return-void
.end method

.method public undo()V
    .locals 7

    .line 88
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undo$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$undo$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 102
    return-void
.end method
