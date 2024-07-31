.class public Lio/reactivex/internal/schedulers/SchedulerWhen;
.super Lio/reactivex/Scheduler;
.source "SchedulerWhen.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerWhen$SubscribedDisposable;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$QueueWorker;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation


# static fields
.field static final DISPOSED:Lio/reactivex/disposables/Disposable;

.field static final SUBSCRIBED:Lio/reactivex/disposables/Disposable;


# instance fields
.field private final actualScheduler:Lio/reactivex/Scheduler;

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private final workerProcessor:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lio/reactivex/Flowable<",
            "Lio/reactivex/Completable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerWhen$SubscribedDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/SchedulerWhen$SubscribedDisposable;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lio/reactivex/disposables/Disposable;

    .line 155
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->DISPOSED:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V
    .locals 1
    .param p2, "actualScheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Flowable<",
            "Lio/reactivex/Flowable<",
            "Lio/reactivex/Completable;",
            ">;>;",
            "Lio/reactivex/Completable;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "combine":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lio/reactivex/Flowable<Lio/reactivex/Flowable<Lio/reactivex/Completable;>;>;Lio/reactivex/Completable;>;"
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 111
    iput-object p2, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->actualScheduler:Lio/reactivex/Scheduler;

    .line 113
    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->create()Lio/reactivex/processors/UnicastProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/processors/UnicastProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->workerProcessor:Lio/reactivex/processors/FlowableProcessor;

    .line 117
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Completable;

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->disposable:Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 121
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 5

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->actualScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    .line 139
    .local v0, "actualWorker":Lio/reactivex/Scheduler$Worker;
    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->create()Lio/reactivex/processors/UnicastProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/processors/UnicastProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v1

    .line 141
    .local v1, "actionProcessor":Lio/reactivex/processors/FlowableProcessor;, "Lio/reactivex/processors/FlowableProcessor<Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v2, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;

    invoke-direct {v2, v0}, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;-><init>(Lio/reactivex/Scheduler$Worker;)V

    invoke-virtual {v1, v2}, Lio/reactivex/processors/FlowableProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 144
    .local v2, "actions":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lio/reactivex/Completable;>;"
    new-instance v3, Lio/reactivex/internal/schedulers/SchedulerWhen$QueueWorker;

    invoke-direct {v3, v1, v0}, Lio/reactivex/internal/schedulers/SchedulerWhen$QueueWorker;-><init>(Lio/reactivex/processors/FlowableProcessor;Lio/reactivex/Scheduler$Worker;)V

    .line 147
    .local v3, "worker":Lio/reactivex/Scheduler$Worker;
    iget-object v4, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->workerProcessor:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v4, v2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 150
    return-object v3
.end method

.method public dispose()V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 126
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method
