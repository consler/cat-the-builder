.class abstract Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.super Lio/reactivex/internal/subscriptions/BasicQueueSubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseArraySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicQueueSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f442a7d211232e5L


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field index:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicQueueSubscription;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->array:[Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->cancelled:Z

    .line 99
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->array:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->index:I

    .line 80
    return-void
.end method

.method abstract fastPath()V
.end method

.method public final isEmpty()Z
    .locals 2

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->index:I

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->index:I

    .line 63
    .local v0, "i":I
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->array:[Ljava/lang/Object;

    .line 64
    .local v1, "arr":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 65
    const/4 v2, 0x0

    return-object v2

    .line 68
    :cond_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->index:I

    .line 69
    aget-object v2, v1, v0

    const-string v3, "array element is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final request(J)V
    .locals 4
    .param p1, "n"    # J

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->fastPath()V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;->slowPath(J)V

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<TT;>;"
    and-int/lit8 v0, p1, 0x1

    return v0
.end method

.method abstract slowPath(J)V
.end method
