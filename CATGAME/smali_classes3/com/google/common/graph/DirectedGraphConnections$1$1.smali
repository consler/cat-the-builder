.class Lcom/google/common/graph/DirectedGraphConnections$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/graph/DirectedGraphConnections$1;

.field final synthetic val$nodeConnections:Ljava/util/Iterator;

.field final synthetic val$seenNodes:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections$1;Ljava/util/Iterator;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/graph/DirectedGraphConnections$1;

    .line 240
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1$1;, "Lcom/google/common/graph/DirectedGraphConnections$1$1;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->this$1:Lcom/google/common/graph/DirectedGraphConnections$1;

    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$nodeConnections:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$seenNodes:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1$1;, "Lcom/google/common/graph/DirectedGraphConnections$1$1;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$nodeConnections:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$nodeConnections:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;

    .line 245
    .local v0, "nodeConnection":Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;, "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;"
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$seenNodes:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;->node:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 246
    .local v1, "added":Z
    if-eqz v1, :cond_0

    .line 247
    iget-object v2, v0, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;->node:Ljava/lang/Object;

    return-object v2

    .line 249
    .end local v0    # "nodeConnection":Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;, "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;"
    .end local v1    # "added":Z
    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
