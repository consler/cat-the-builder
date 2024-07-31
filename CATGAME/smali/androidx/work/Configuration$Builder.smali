.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mDefaultProcessName:Ljava/lang/String;

.field mExceptionHandler:Landroidx/work/InitializationExceptionHandler;

.field mExecutor:Ljava/util/concurrent/Executor;

.field mInputMergerFactory:Landroidx/work/InputMergerFactory;

.field mLoggingLevel:I

.field mMaxJobSchedulerId:I

.field mMaxSchedulerLimit:I

.field mMinJobSchedulerId:I

.field mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field mTaskExecutor:Ljava/util/concurrent/Executor;

.field mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 288
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 289
    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    .line 290
    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroidx/work/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iget-object v0, p1, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 304
    iget-object v0, p1, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 305
    iget-object v0, p1, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 306
    iget-object v0, p1, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 307
    iget v0, p1, Landroidx/work/Configuration;->mLoggingLevel:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 308
    iget v0, p1, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 309
    iget v0, p1, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 310
    iget v0, p1, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    .line 311
    iget-object v0, p1, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 312
    iget-object v0, p1, Landroidx/work/Configuration;->mExceptionHandler:Landroidx/work/InitializationExceptionHandler;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mExceptionHandler:Landroidx/work/InitializationExceptionHandler;

    .line 313
    iget-object v0, p1, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public build()Landroidx/work/Configuration;
    .locals 1

    .line 492
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processName"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    .line 483
    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 346
    return-object p0
.end method

.method public setInitializationExceptionHandler(Landroidx/work/InitializationExceptionHandler;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "exceptionHandler"    # Landroidx/work/InitializationExceptionHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mExceptionHandler:Landroidx/work/InitializationExceptionHandler;

    .line 471
    return-object p0
.end method

.method public setInputMergerFactory(Landroidx/work/InputMergerFactory;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "inputMergerFactory"    # Landroidx/work/InputMergerFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputMergerFactory"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 335
    return-object p0
.end method

.method public setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;
    .locals 2
    .param p1, "minJobSchedulerId"    # I
    .param p2, "maxJobSchedulerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minJobSchedulerId",
            "maxJobSchedulerId"
        }
    .end annotation

    .line 386
    sub-int v0, p2, p1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 391
    iput p1, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 392
    iput p2, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 393
    return-object p0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WorkManager needs a range of at least 1000 job ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxSchedulerLimit(I)Landroidx/work/Configuration$Builder;
    .locals 2
    .param p1, "maxSchedulerLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSchedulerLimit"
        }
    .end annotation

    .line 420
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 425
    const/16 v0, 0x32

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    .line 426
    return-object p0

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WorkManager needs to be able to schedule at least 20 jobs in JobScheduler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "loggingLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggingLevel"
        }
    .end annotation

    .line 440
    iput p1, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 441
    return-object p0
.end method

.method public setRunnableScheduler(Landroidx/work/RunnableScheduler;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "runnableScheduler"    # Landroidx/work/RunnableScheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnableScheduler"
        }
    .end annotation

    .line 454
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 455
    return-object p0
.end method

.method public setTaskExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "taskExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskExecutor"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 364
    return-object p0
.end method

.method public setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "workerFactory"    # Landroidx/work/WorkerFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workerFactory"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 324
    return-object p0
.end method
