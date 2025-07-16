.class public final Lio/reactivex/processors/BehaviorProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "BehaviorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

.field static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;


# instance fields
.field index:J

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 76
    sput-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    new-array v1, v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 79
    sput-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    new-array v0, v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 82
    sput-object v0, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 131
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 132
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lio/reactivex/processors/BehaviorProcessor;-><init>()V

    .line 145
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "defaultValue is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public static create()Lio/reactivex/processors/BehaviorProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/BehaviorProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 103
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/BehaviorProcessor;-><init>()V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lio/reactivex/processors/BehaviorProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/processors/BehaviorProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    const-string v0, "defaultValue is null"

    .line 119
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor;

    invoke-direct {v0, p0}, Lio/reactivex/processors/BehaviorProcessor;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 357
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 358
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 361
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 363
    new-array v3, v3, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 364
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    aput-object p1, v3, v1

    .line 366
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/common/api/internal/zap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 266
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2

    .line 293
    sget-object v0, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 294
    invoke-virtual {p0, v1}, Lio/reactivex/processors/BehaviorProcessor;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 313
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 319
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    array-length v3, p1

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 321
    aput-object v0, p1, v2

    .line 322
    array-length v0, p1

    if-eq v0, v4, :cond_2

    .line 323
    aput-object v1, p1, v4

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 327
    aput-object v0, p1, v2

    :cond_2
    :goto_0
    return-object p1

    .line 314
    :cond_3
    :goto_1
    array-length v0, p1

    if-eqz v0, :cond_4

    .line 315
    aput-object v1, p1, v2

    :cond_4
    return-object p1
.end method

.method public hasComplete()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 235
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->onError(Ljava/lang/Throwable;)V

    return v0

    .line 238
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 240
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 241
    invoke-virtual {v5}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->isFull()Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 247
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    .line 248
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 249
    iget-wide v5, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v4, p1, v5, v6}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public onComplete()V
    .locals 7

    .line 210
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 215
    iget-wide v5, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    if-nez p1, :cond_0

    .line 196
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 202
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 204
    iget-wide v4, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 180
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 186
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 189
    iget-wide v4, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 174
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method remove(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 375
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 376
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 379
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 382
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 393
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 395
    new-array v5, v5, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 396
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    .line 397
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 399
    :goto_2
    iget-object v2, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/common/api/internal/zap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method setCurrent(Ljava/lang/Object;)V
    .locals 5

    .line 421
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 422
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 423
    iget-wide v1, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    .line 424
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 425
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 150
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/BehaviorProcessor;)V

    .line 151
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 152
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->add(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-boolean p1, v0, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->remove(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitFirst()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 160
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-ne v0, v1, :cond_2

    .line 161
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .line 261
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    array-length v0, v0

    return v0
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 409
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
