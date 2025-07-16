.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections4/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blackColor:[Z

.field private calculatedHashCode:Z

.field private hashcodeValue:I

.field private final key:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1910
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->key:Ljava/lang/Comparable;

    .line 1911
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->value:Ljava/lang/Comparable;

    const/4 p1, 0x2

    new-array p2, p1, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1912
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    new-array p2, p1, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1913
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    new-array p2, p1, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1914
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    new-array p1, p1, [Z

    .line 1915
    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    const/4 p1, 0x0

    .line 1916
    iput-boolean p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->swapColors(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getData(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p0

    return p0
.end method

.method private copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    iget-object p1, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p2

    aget-boolean p1, p1, p2

    aput-boolean p1, v0, v1

    return-void
.end method

.method private getData(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;
    .locals 1

    .line 1920
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$1;->$SwitchMap$org$apache$commons$collections4$bidimap$TreeBidiMap$DataElement:[I

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1924
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1

    .line 1926
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1922
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method private getLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1935
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1965
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1

    .line 1990
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    return p1
.end method

.method private isLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 2

    .line 2036
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 2037
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1

    .line 2001
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 2

    .line 2041
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 2042
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2

    .line 2011
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method private setLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1931
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p2

    aput-object p1, v0, p2

    return-void
.end method

.method private setParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1954
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p2

    aput-object p1, v0, p2

    return-void
.end method

.method private setRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2

    .line 2021
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p1

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method private setRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p2

    aput-object p1, v0, p2

    return-void
.end method

.method private swapColors(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1977
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v2, v0, v1

    iget-object v3, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v4

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    aput-boolean v2, v0, v1

    .line 1978
    iget-object v0, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v4

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    aput-boolean v2, v0, v1

    .line 1979
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v2, v0, v1

    iget-object p1, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result p2

    aget-boolean p1, p1, p2

    xor-int/2addr p1, v2

    aput-boolean p1, v0, v1

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2091
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2094
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2095
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2053
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->key:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->value:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2103
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    if-nez v0, :cond_0

    .line 2104
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    const/4 v0, 0x1

    .line 2105
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    .line 2107
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    return v0
.end method

.method public setValue(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2075
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Map.Entry.setValue is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1889
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setValue(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
