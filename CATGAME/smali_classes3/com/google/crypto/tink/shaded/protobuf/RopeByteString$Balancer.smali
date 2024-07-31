.class Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;

    .line 623
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "x2"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->balance(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private balance(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 4
    .param p1, "left"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "right"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 630
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 631
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 634
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 635
    .local v0, "partialString":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 637
    .local v1, "newLeft":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;)V

    move-object v0, v2

    .line 638
    .end local v1    # "newLeft":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    goto :goto_0

    .line 641
    :cond_0
    return-object v0
.end method

.method private doBalance(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 3
    .param p1, "root"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 649
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->insert(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto :goto_0

    .line 651
    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    if-eqz v0, :cond_1

    .line 652
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    .line 653
    .local v0, "rbs":Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->access$400(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 654
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->access$500(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 655
    .end local v0    # "rbs":Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;
    nop

    .line 659
    :goto_0
    return-void

    .line 656
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDepthBinForLength(I)I
    .locals 2
    .param p1, "length"    # I

    .line 712
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 713
    .local v0, "depth":I
    if-gez v0, :cond_0

    .line 716
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    .line 717
    .local v1, "insertionPoint":I
    add-int/lit8 v0, v1, -0x1

    .line 720
    .end local v1    # "insertionPoint":I
    :cond_0
    return v0
.end method

.method private insert(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 7
    .param p1, "byteString"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 674
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 675
    .local v0, "depthBin":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 681
    .local v1, "binEnd":I
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_2

    .line 684
    :cond_0
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->minLength(I)I

    move-result v2

    .line 687
    .local v2, "binStart":I
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 688
    .local v3, "newTree":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :goto_0
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 689
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 690
    .local v4, "left":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    new-instance v6, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;)V

    move-object v3, v6

    .line 691
    .end local v4    # "left":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    goto :goto_0

    .line 694
    :cond_1
    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    invoke-direct {v4, v3, p1, v5}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;)V

    move-object v3, v4

    .line 697
    :goto_1
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 698
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 699
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 700
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 701
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 702
    .restart local v4    # "left":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    new-instance v6, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$1;)V

    move-object v3, v6

    .line 703
    .end local v4    # "left":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    goto :goto_1

    .line 707
    :cond_2
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 682
    .end local v2    # "binStart":I
    .end local v3    # "newTree":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 709
    :goto_3
    return-void
.end method
