.class final Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;",
        ">;"
    }
.end annotation


# instance fields
.field private final breadCrumbs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 3
    .param p1, "root"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    .line 737
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    .line 738
    .local v0, "rbs":Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->getTreeDepth()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 739
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 740
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->access$400(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    .line 741
    .end local v0    # "rbs":Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
    goto :goto_0

    .line 742
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 743
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    .line 745
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;

    .line 731
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method private getLeafByLeft(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
    .locals 3
    .param p1, "root"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 748
    move-object v0, p1

    .line 749
    .local v0, "pos":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :goto_0
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    if-eqz v1, :cond_0

    .line 750
    move-object v1, v0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    .line 751
    .local v1, "rbs":Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 752
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->access$400(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    .line 753
    .end local v1    # "rbs":Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
    goto :goto_0

    .line 754
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    return-object v1
.end method

.method private getNextNonEmptyLeaf()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
    .locals 2

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->access$500(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object v0

    .line 765
    .local v0, "result":Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    return-object v0

    .line 768
    .end local v0    # "result":Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
    :cond_1
    goto :goto_0

    .line 762
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    .line 788
    .local v0, "result":Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->getNextNonEmptyLeaf()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->next:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    .line 789
    return-object v0

    .line 785
    .end local v0    # "result":Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 731
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 794
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
