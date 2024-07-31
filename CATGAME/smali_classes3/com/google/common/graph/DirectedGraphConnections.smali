.class final Lcom/google/common/graph/DirectedGraphConnections;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"

# interfaces
.implements Lcom/google/common/graph/GraphConnections;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;,
        Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/GraphConnections<",
        "TN;TV;>;"
    }
.end annotation


# static fields
.field private static final PRED:Ljava/lang/Object;


# instance fields
.field private final adjacentNodeValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final orderedNodeConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<",
            "TN;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private predecessorCount:I

.field private successorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/List;II)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "predecessorCount"    # I
    .param p4, "successorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<",
            "TN;>;>;II)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "adjacentNodeValues":Ljava/util/Map;, "Ljava/util/Map<TN;Ljava/lang/Object;>;"
    .local p2, "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 147
    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    .line 148
    invoke-static {p3}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    .line 149
    invoke-static {p4}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    .line 150
    nop

    .line 151
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 53
    invoke-static {p0}, Lcom/google/common/graph/DirectedGraphConnections;->isPredecessor(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/graph/DirectedGraphConnections;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 53
    iget v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 53
    invoke-static {p0}, Lcom/google/common/graph/DirectedGraphConnections;->isSuccessor(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/graph/DirectedGraphConnections;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 53
    iget v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    return v0
.end method

.method private static isPredecessor(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 544
    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    instance-of v0, p0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSuccessor(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 548
    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static of(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/DirectedGraphConnections;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;)",
            "Lcom/google/common/graph/DirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 157
    .local p0, "incidentEdgeOrder":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TN;>;"
    const/4 v0, 0x4

    .line 160
    .local v0, "initialCapacity":I
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections$8;->$SwitchMap$com$google$common$graph$ElementOrder$Type:[I

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/graph/ElementOrder$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    goto :goto_0

    .line 168
    .end local v1    # "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 162
    :cond_1
    const/4 v1, 0x0

    .line 163
    .restart local v1    # "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    nop

    .line 171
    :goto_0
    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections;

    new-instance v3, Ljava/util/HashMap;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v4}, Lcom/google/common/graph/DirectedGraphConnections;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object v2
.end method

.method static ofImmutable(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/graph/DirectedGraphConnections;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;",
            "Lcom/google/common/base/Function<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/DirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 180
    .local p0, "thisNode":Ljava/lang/Object;, "TN;"
    .local p1, "incidentEdges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    .local p2, "successorNodeToValueFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TN;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v0, "adjacentNodeValues":Ljava/util/Map;, "Ljava/util/Map<TN;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 183
    .local v1, "orderedNodeConnectionsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    const/4 v2, 0x0

    .line 184
    .local v2, "predecessorCount":I
    const/4 v3, 0x0

    .line 186
    .local v3, "successorCount":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/EndpointPair;

    .line 187
    .local v5, "incidentEdge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    new-instance v6, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-interface {p2, p0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v6, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v6, p0}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 193
    new-instance v6, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v6, p0}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 196
    :cond_0
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    .line 199
    .local v6, "predecessor":Ljava/lang/Object;, "TN;"
    sget-object v7, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 200
    .local v7, "existingValue":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 201
    new-instance v8, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v8, v7}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    new-instance v8, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v8, v6}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 205
    nop

    .end local v6    # "predecessor":Ljava/lang/Object;, "TN;"
    .end local v7    # "existingValue":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 206
    goto :goto_2

    .line 207
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 209
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    .line 210
    .local v6, "successor":Ljava/lang/Object;, "TN;"
    invoke-interface {p2, v6}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 212
    .local v7, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 213
    .local v8, "existingValue":Ljava/lang/Object;
    if-eqz v8, :cond_4

    .line 214
    sget-object v9, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 215
    new-instance v9, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v9, v7}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_4
    new-instance v9, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v9, v6}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 221
    .end local v5    # "incidentEdge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    .end local v6    # "successor":Ljava/lang/Object;, "TN;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .end local v8    # "existingValue":Ljava/lang/Object;
    :goto_2
    goto/16 :goto_0

    .line 223
    :cond_5
    new-instance v4, Lcom/google/common/graph/DirectedGraphConnections;

    .line 225
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, v0, v5, v2, v3}, Lcom/google/common/graph/DirectedGraphConnections;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    .line 223
    return-object v4
.end method


# virtual methods
.method public addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    .line 488
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    .local p2, "unused":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 491
    .local v0, "previousValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 492
    const/4 v1, 0x1

    .local v1, "addedPredecessor":Z
    goto :goto_0

    .line 493
    .end local v1    # "addedPredecessor":Z
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const/4 v1, 0x0

    .restart local v1    # "addedPredecessor":Z
    goto :goto_0

    .line 497
    .end local v1    # "addedPredecessor":Z
    :cond_1
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 499
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v2, v0}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/4 v1, 0x1

    .restart local v1    # "addedPredecessor":Z
    goto :goto_0

    .line 502
    .end local v1    # "addedPredecessor":Z
    :cond_2
    const/4 v1, 0x0

    .line 505
    .restart local v1    # "addedPredecessor":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 506
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    .line 508
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 509
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_3
    return-void
.end method

.method public addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "previousValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 521
    const/4 v1, 0x0

    .local v1, "previousSuccessor":Ljava/lang/Object;
    goto :goto_0

    .line 522
    .end local v1    # "previousSuccessor":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v2, p2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    move-object v1, v0

    check-cast v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "previousSuccessor":Ljava/lang/Object;
    goto :goto_0

    .line 525
    .end local v1    # "previousSuccessor":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v2, p2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const/4 v1, 0x0

    .restart local v1    # "previousSuccessor":Ljava/lang/Object;
    goto :goto_0

    .line 529
    .end local v1    # "previousSuccessor":Ljava/lang/Object;
    :cond_2
    move-object v1, v0

    .line 532
    .restart local v1    # "previousSuccessor":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_3

    .line 533
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    .line 535
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 536
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_3
    return-object v1
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "thisNode":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 368
    nop

    .line 371
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$4;

    invoke-direct {v1, p0, p1}, Lcom/google/common/graph/DirectedGraphConnections$4;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/lang/Object;)V

    .line 370
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections;->successors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$5;

    invoke-direct {v2, p0, p1}, Lcom/google/common/graph/DirectedGraphConnections$5;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/lang/Object;)V

    .line 378
    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v1

    .line 369
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .local v0, "resultWithDoubleSelfLoop":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    goto :goto_0

    .line 387
    .end local v0    # "resultWithDoubleSelfLoop":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    :cond_0
    nop

    .line 389
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$6;

    invoke-direct {v1, p0, p1}, Lcom/google/common/graph/DirectedGraphConnections$6;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/lang/Object;)V

    .line 388
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 402
    .restart local v0    # "resultWithDoubleSelfLoop":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 403
    .local v1, "alreadySeenSelfLoop":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/graph/DirectedGraphConnections$7;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/util/Iterator;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v2
.end method

.method public predecessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$2;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public removePredecessor(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 437
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    .local v0, "previousValue":Ljava/lang/Object;
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/4 v1, 0x1

    .local v1, "removedPredecessor":Z
    goto :goto_0

    .line 443
    .end local v1    # "removedPredecessor":Z
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    move-object v2, v0

    check-cast v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const/4 v1, 0x1

    .restart local v1    # "removedPredecessor":Z
    goto :goto_0

    .line 447
    .end local v1    # "removedPredecessor":Z
    :cond_1
    const/4 v1, 0x0

    .line 450
    .restart local v1    # "removedPredecessor":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 451
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    .line 453
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 454
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 457
    :cond_2
    return-void
.end method

.method public removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 465
    .local v0, "previousValue":Ljava/lang/Object;
    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    instance-of v2, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-object v1, v0

    check-cast v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "removedValue":Ljava/lang/Object;
    goto :goto_1

    .line 471
    .end local v1    # "removedValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    move-object v1, v0

    .restart local v1    # "removedValue":Ljava/lang/Object;
    goto :goto_1

    .line 466
    .end local v1    # "removedValue":Ljava/lang/Object;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 475
    .restart local v1    # "removedValue":Ljava/lang/Object;
    :goto_1
    if-eqz v1, :cond_3

    .line 476
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    .line 478
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 479
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 483
    :cond_3
    return-object v1
.end method

.method public successors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$3;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$3;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, "value":Ljava/lang/Object;
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 426
    const/4 v1, 0x0

    return-object v1

    .line 428
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 429
    move-object v1, v0

    check-cast v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 431
    :cond_1
    return-object v0
.end method
