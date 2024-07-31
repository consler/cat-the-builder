.class final Lorg/apache/commons/collections/DoubleOrderedMap$Node;
.super Ljava/lang/Object;
.source "DoubleOrderedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/DoubleOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private blackColor:[Z

.field private calculatedHashCode:Z

.field private data:[Ljava/lang/Comparable;

.field private hashcodeValue:I

.field private leftNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

.field private parentNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

.field private rightNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/Comparable;
    .param p2, "value"    # Ljava/lang/Comparable;

    .line 1773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    .line 1776
    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v4, 0x0

    aput-object v4, v1, v2

    aput-object v4, v1, v3

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->leftNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 1777
    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v4, v1, v2

    aput-object v4, v1, v3

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->rightNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 1778
    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v4, v1, v2

    aput-object v4, v1, v3

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->parentNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 1779
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    .line 1780
    iput-boolean v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->calculatedHashCode:Z

    .line 1781
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->setBlack(I)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "x2"    # I

    .line 1756
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->isRed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->isBlack(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->setRed(I)V

    return-void
.end method

.method static synthetic access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "x2"    # I

    .line 1756
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->setRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "x2"    # I

    .line 1756
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->setParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "x2"    # I

    .line 1756
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->setLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method static synthetic access$1800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "x2"    # I

    .line 1756
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->swapColors(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->getLeft(I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->getRight(I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 1756
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->getParent(I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 1918
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    iget-object v1, p1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    aget-boolean v1, v1, p2

    aput-boolean v1, v0, p2

    .line 1919
    return-void
.end method

.method private getData(I)Ljava/lang/Comparable;
    .locals 1
    .param p1, "index"    # I

    .line 1791
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getLeft(I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p1, "index"    # I

    .line 1812
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->leftNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getParent(I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p1, "index"    # I

    .line 1854
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->parentNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getRight(I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p1, "index"    # I

    .line 1833
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->rightNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private isBlack(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1879
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private isRed(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1890
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    aget-boolean v0, v0, p1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setBlack(I)V
    .locals 2
    .param p1, "index"    # I

    .line 1899
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1900
    return-void
.end method

.method private setLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 1801
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->leftNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object p1, v0, p2

    .line 1802
    return-void
.end method

.method private setParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 1843
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->parentNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object p1, v0, p2

    .line 1844
    return-void
.end method

.method private setRed(I)V
    .locals 2
    .param p1, "index"    # I

    .line 1908
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1909
    return-void
.end method

.method private setRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 1822
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->rightNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object p1, v0, p2

    .line 1823
    return-void
.end method

.method private swapColors(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 4
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 1866
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    aget-boolean v1, v0, p2

    iget-object v2, p1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->blackColor:[Z

    aget-boolean v3, v2, p2

    xor-int/2addr v1, v3

    aput-boolean v1, v0, p2

    .line 1867
    aget-boolean v1, v2, p2

    aget-boolean v3, v0, p2

    xor-int/2addr v1, v3

    aput-boolean v1, v2, p2

    .line 1868
    aget-boolean v1, v0, p2

    aget-boolean v2, v2, p2

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    .line 1869
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1965
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1966
    return v0

    .line 1969
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1970
    return v2

    .line 1973
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1975
    .local v1, "e":Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v3, v3, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v3, v3, v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 1927
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 1934
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1984
    iget-boolean v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->calculatedHashCode:Z

    if-nez v0, :cond_0

    .line 1985
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->hashcodeValue:I

    .line 1987
    iput-boolean v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->calculatedHashCode:Z

    .line 1990
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->hashcodeValue:I

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ignored"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1949
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.Entry.setValue is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
