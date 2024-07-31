.class Landroidx/work/impl/utils/WorkForegroundUpdater$1;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/WorkForegroundUpdater;->setForegroundAsync(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/utils/WorkForegroundUpdater;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$foregroundInfo:Landroidx/work/ForegroundInfo;

.field final synthetic val$future:Landroidx/work/impl/utils/futures/SettableFuture;

.field final synthetic val$id:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Landroidx/work/impl/utils/futures/SettableFuture;Ljava/util/UUID;Landroidx/work/ForegroundInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/utils/WorkForegroundUpdater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$future",
            "val$id",
            "val$foregroundInfo",
            "val$context"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->this$0:Landroidx/work/impl/utils/WorkForegroundUpdater;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$id:Ljava/util/UUID;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$foregroundInfo:Landroidx/work/ForegroundInfo;

    iput-object p5, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/SettableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "workSpecId":Ljava/lang/String;
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->this$0:Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkForegroundUpdater;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    .line 85
    .local v1, "state":Landroidx/work/WorkInfo$State;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->this$0:Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundUpdater;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iget-object v3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$foregroundInfo:Landroidx/work/ForegroundInfo;

    invoke-interface {v2, v0, v3}, Landroidx/work/impl/foreground/ForegroundProcessor;->startForeground(Ljava/lang/String;Landroidx/work/ForegroundInfo;)V

    .line 96
    iget-object v2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$foregroundInfo:Landroidx/work/ForegroundInfo;

    invoke-static {v2, v0, v3}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createNotifyIntent(Landroid/content/Context;Ljava/lang/String;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 97
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 87
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 91
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v0    # "workSpecId":Ljava/lang/String;
    .end local v1    # "state":Landroidx/work/WorkInfo$State;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 103
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
