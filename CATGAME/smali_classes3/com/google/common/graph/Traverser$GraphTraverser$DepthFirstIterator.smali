.class final Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final order:Lcom/google/common/graph/Traverser$Order;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/common/graph/Traverser$GraphTraverser<",
            "TN;>.DepthFirstIterator.NodeAndSuccessors;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;Lcom/google/common/graph/Traverser$Order;)V
    .locals 2
    .param p3, "order"    # Lcom/google/common/graph/Traverser$Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;",
            "Lcom/google/common/graph/Traverser$Order;",
            ")V"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator;"
    .local p2, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 432
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    .line 433
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    .line 437
    iget-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 438
    iput-object p3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    .line 439
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    .line 448
    .local v0, "nodeAndSuccessors":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator.NodeAndSuccessors;"
    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 449
    .local v1, "firstVisit":Z
    iget-object v2, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 450
    .local v2, "lastVisit":Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v5, Lcom/google/common/graph/Traverser$Order;->PREORDER:Lcom/google/common/graph/Traverser$Order;

    if-eq v4, v5, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v5, Lcom/google/common/graph/Traverser$Order;->POSTORDER:Lcom/google/common/graph/Traverser$Order;

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 452
    .local v3, "produceNode":Z
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 453
    iget-object v4, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 456
    :cond_4
    iget-object v4, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 457
    .local v4, "successor":Ljava/lang/Object;, "TN;"
    iget-object v5, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 458
    iget-object v5, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-virtual {p0, v4}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 461
    .end local v4    # "successor":Ljava/lang/Object;, "TN;"
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 462
    iget-object v4, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    return-object v4

    .line 464
    .end local v0    # "nodeAndSuccessors":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator.NodeAndSuccessors;"
    .end local v1    # "firstVisit":Z
    .end local v2    # "lastVisit":Z
    .end local v3    # "produceNode":Z
    :cond_6
    goto :goto_0
.end method

.method withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/Traverser$GraphTraverser<",
            "TN;>.DepthFirstIterator.NodeAndSuccessors;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-static {v1}, Lcom/google/common/graph/Traverser$GraphTraverser;->access$100(Lcom/google/common/graph/Traverser$GraphTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
