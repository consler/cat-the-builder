.class Lcom/google/common/graph/DirectedGraphConnections$6;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections;->incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<",
        "TN;>;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/DirectedGraphConnections;

.field final synthetic val$thisNode:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 390
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$6;, "Lcom/google/common/graph/DirectedGraphConnections$6;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$6;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections$6;->val$thisNode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;)Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<",
            "TN;>;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 393
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$6;, "Lcom/google/common/graph/DirectedGraphConnections$6;"
    .local p1, "connection":Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;, "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;"
    instance-of v0, p1, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$6;->val$thisNode:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;->node:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    iget-object v0, p1, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;->node:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections$6;->val$thisNode:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$6;, "Lcom/google/common/graph/DirectedGraphConnections$6;"
    check-cast p1, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/DirectedGraphConnections$6;->apply(Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
