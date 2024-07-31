.class final Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;
.super Ljava/lang/Object;
.source "ObservablePublish.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 129
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 144
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 146
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 209
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 212
    .local v0, "c":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 213
    return v2

    .line 216
    :cond_0
    array-length v1, v0

    .line 218
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 219
    .local v3, "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    aput-object p1, v3, v1

    .line 222
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const/4 v2, 0x1

    return v2

    .line 227
    .end local v0    # "c":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    .end local v1    # "len":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .line 151
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 153
    .local v0, "ps":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    if-eq v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 159
    .end local v0    # "ps":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 163
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 193
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .local v0, "arr$":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 195
    .local v3, "inner":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-interface {v4}, Lio/reactivex/Observer;->onComplete()V

    .line 194
    .end local v3    # "inner":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 180
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 182
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 183
    move-object v1, v0

    .local v1, "arr$":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 184
    .local v4, "inner":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    iget-object v5, v4, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-interface {v5, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 183
    .end local v4    # "inner":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "arr$":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    goto :goto_1

    .line 187
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 189
    :goto_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .local v0, "arr$":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 174
    .local v3, "inner":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-interface {v4, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 173
    .end local v3    # "inner":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 168
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 169
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 241
    .local v0, "c":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    array-length v1, v0

    .line 242
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 243
    return-void

    .line 247
    :cond_0
    const/4 v2, -0x1

    .line 248
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 249
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    move v2, v3

    .line 251
    goto :goto_2

    .line 248
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 256
    return-void

    .line 262
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 263
    sget-object v3, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .local v3, "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    goto :goto_3

    .line 266
    .end local v3    # "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 268
    .local v4, "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 273
    .end local v4    # "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    .restart local v3    # "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 274
    return-void

    .line 278
    .end local v0    # "c":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    .end local v1    # "len":I
    .end local v2    # "j":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method
