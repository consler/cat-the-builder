.class public Lcom/koushikdutta/async/future/Continuation;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;
.implements Ljava/lang/Runnable;
.implements Lcom/koushikdutta/async/future/Cancellable;


# instance fields
.field callback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field cancelCallback:Ljava/lang/Runnable;

.field private inNext:Z

.field mCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/callback/ContinuationCallback;",
            ">;"
        }
    .end annotation
.end field

.field started:Z

.field private waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .param p2, "cancelCallback"    # Ljava/lang/Runnable;

    .line 44
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    .line 45
    iput-object p2, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/future/Continuation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/future/Continuation;

    .line 8
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/koushikdutta/async/future/Continuation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/future/Continuation;
    .param p1, "x1"    # Z

    .line 8
    iput-boolean p1, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/future/Continuation;)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/future/Continuation;

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->next()V

    return-void
.end method

.method private hook(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;
    .locals 1
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/ContinuationCallback;

    .line 80
    instance-of v0, p1, Lcom/koushikdutta/async/future/DependentCancellable;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/future/DependentCancellable;

    .line 82
    .local v0, "child":Lcom/koushikdutta/async/future/DependentCancellable;
    invoke-interface {v0, p0}, Lcom/koushikdutta/async/future/DependentCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    .line 84
    .end local v0    # "child":Lcom/koushikdutta/async/future/DependentCancellable;
    :cond_0
    return-object p1
.end method

.method private next()V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/callback/ContinuationCallback;

    .line 117
    .local v0, "cb":Lcom/koushikdutta/async/callback/ContinuationCallback;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    .line 118
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    .line 119
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->wrap()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/callback/ContinuationCallback;->onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    .line 126
    nop

    .line 127
    .end local v0    # "cb":Lcom/koushikdutta/async/callback/ContinuationCallback;
    goto :goto_0

    .line 125
    .restart local v0    # "cb":Lcom/koushikdutta/async/callback/ContinuationCallback;
    :goto_2
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->inNext:Z

    throw v1

    .line 128
    .end local v0    # "cb":Lcom/koushikdutta/async/callback/ContinuationCallback;
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->waiting:Z

    if-eqz v0, :cond_2

    .line 129
    return-void

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    return-void

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    return-void

    .line 135
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V

    .line 136
    return-void
.end method

.method private wrap()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 50
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/Continuation$2;-><init>(Lcom/koushikdutta/async/future/Continuation;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;
    .locals 2
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/ContinuationCallback;

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/Continuation;->hook(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    return-object p0
.end method

.method public add(Lcom/koushikdutta/async/future/DependentFuture;)Lcom/koushikdutta/async/future/Continuation;
    .locals 1
    .param p1, "future"    # Lcom/koushikdutta/async/future/DependentFuture;

    .line 98
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/future/DependentFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    .line 99
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Continuation$3;-><init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/DependentFuture;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 106
    return-object p0
.end method

.method public cancel()Z
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getCancelCallback()Ljava/lang/Runnable;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public insert(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;
    .locals 3
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/ContinuationCallback;

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/Continuation;->hook(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 94
    return-object p0
.end method

.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "continuation"    # Lcom/koushikdutta/async/future/Continuation;
    .param p2, "next"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/Continuation;->setCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 161
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    .line 162
    return-void
.end method

.method reportCompleted(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 71
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->setComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 75
    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    .line 167
    return-void
.end method

.method public setCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 16
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 17
    return-void
.end method

.method public setCancelCallback(Lcom/koushikdutta/async/future/Cancellable;)V
    .locals 1
    .param p1, "cancel"    # Lcom/koushikdutta/async/future/Cancellable;

    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    .line 28
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Continuation$1;-><init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/Cancellable;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method public setCancelCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "cancelCallback"    # Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method public start()Lcom/koushikdutta/async/future/Continuation;
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->started:Z

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->started:Z

    .line 154
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->next()V

    .line 155
    return-object p0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
