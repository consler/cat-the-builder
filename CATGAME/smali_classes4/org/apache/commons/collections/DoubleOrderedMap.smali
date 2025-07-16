.class public final Lorg/apache/commons/collections/DoubleOrderedMap;
.super Ljava/util/AbstractMap;
.source "DoubleOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/DoubleOrderedMap$Node;,
        Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
    }
.end annotation


# static fields
.field private static final FIRST_INDEX:I = 0x0

.field private static final KEY:I = 0x0

.field private static final NUMBER_OF_INDICES:I = 0x2

.field private static final SUM_OF_INDICES:I = 0x1

.field private static final VALUE:I = 0x1

.field private static final dataName:[Ljava/lang/String;


# instance fields
.field private collectionOfValues:[Ljava/util/Collection;

.field private modifications:I

.field private nodeCount:I

.field private rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

.field private setOfEntries:[Ljava/util/Set;

.field private setOfKeys:[Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "key"

    const-string v1, "value"

    .line 115
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 127
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 117
    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 118
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 119
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    .line 120
    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    .line 121
    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    new-array v0, v0, [Ljava/util/Collection;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    .line 122
    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 117
    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 118
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 119
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    .line 120
    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    .line 121
    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    new-array v0, v0, [Ljava/util/Collection;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    .line 122
    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 0

    .line 107
    iget p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    return p0
.end method

.method static synthetic access$2300(Lorg/apache/commons/collections/DoubleOrderedMap;)[Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 107
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 0

    .line 107
    iget p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return p0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1172
    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1199
    invoke-static {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1200
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1157
    instance-of p0, p0, Ljava/lang/Comparable;

    if-eqz p0, :cond_0

    return-void

    .line 1158
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " must be Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1153
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " cannot be null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1184
    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 497
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 579
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {p1, p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1100(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 432
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 434
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 436
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 881
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 883
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->swapPosition(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 887
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 892
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 894
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-nez v3, :cond_2

    .line 895
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v1, v3, v0

    goto :goto_2

    .line 896
    :cond_2
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 898
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 900
    :cond_3
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 903
    :goto_2
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 904
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 905
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 907
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 908
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_4

    .line 913
    :cond_4
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_5

    .line 916
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v2, v1, v0

    goto :goto_4

    .line 920
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 921
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 924
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 925
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 928
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 930
    :cond_7
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 934
    :goto_3
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 940
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->shrink()V

    return-void
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 957
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p2

    if-eq p1, v0, :cond_7

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 959
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 960
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 963
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 965
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 966
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 968
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 971
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 976
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto :goto_0

    .line 978
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 980
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 981
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 983
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 987
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 989
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 990
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 991
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 993
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object p1, p1, p2

    goto/16 :goto_0

    .line 996
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 998
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1000
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1001
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1003
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1006
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1008
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1010
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 1012
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1013
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1014
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1015
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1017
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1021
    :cond_6
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1023
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1024
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1025
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1027
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object p1, p1, p2

    goto/16 :goto_0

    .line 1032
    :cond_7
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 808
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    .line 810
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p2

    if-eq p1, v0, :cond_6

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 812
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 813
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 816
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 818
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 819
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 821
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto :goto_0

    .line 823
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    .line 826
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 829
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 830
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 832
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 840
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 843
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 844
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 845
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 846
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 848
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 850
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 851
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    .line 853
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 856
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 857
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 859
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto/16 :goto_0

    .line 866
    :cond_6
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object p1, p1, p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 408
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object p2

    .line 414
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private static getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 648
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method private static getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 688
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 660
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 674
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private grow()V
    .locals 1

    .line 1217
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1219
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1243
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1246
    :goto_0
    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    if-eqz v2, :cond_3

    if-gez v2, :cond_1

    .line 1253
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1254
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1256
    :cond_0
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1257
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1258
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_1

    .line 1263
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1264
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1266
    :cond_2
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1267
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1268
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :goto_1
    return-void

    .line 1249
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Cannot store a duplicate value (\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\") in this Map"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 609
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1300(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-ne p0, p1, :cond_1

    :goto_0
    return v0
.end method

.method private static isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 595
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-ne p0, p1, :cond_1

    :goto_0
    return v0
.end method

.method private static leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1

    if-eqz p0, :cond_0

    .line 515
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 2

    .line 468
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p2

    :goto_0
    if-eqz v0, :cond_2

    .line 471
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    .line 478
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private static makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 636
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 623
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .line 1209
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 537
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 541
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto :goto_1

    .line 550
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_2

    .line 553
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 555
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private oppositeIndex(I)I
    .locals 0

    rsub-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 741
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 743
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 745
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 746
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 749
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 751
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 754
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, v1, p2

    goto :goto_0

    .line 755
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 756
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 758
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 761
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 762
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 773
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 775
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 777
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 778
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 781
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 783
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 786
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, v1, p2

    goto :goto_0

    .line 787
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 788
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 790
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 793
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 794
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private shrink()V
    .locals 1

    .line 1227
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1229
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 10

    .line 1047
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1048
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1049
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    .line 1050
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    .line 1051
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v4

    .line 1052
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v5

    .line 1053
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 1056
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v9

    invoke-static {v9, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v9

    if-ne p2, v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    if-ne p1, v3, :cond_3

    .line 1062
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v7, :cond_2

    .line 1065
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1066
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 1068
    :cond_2
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1069
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 1072
    :cond_3
    invoke-static {p1, v3, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v3, :cond_5

    if-eqz v7, :cond_4

    .line 1076
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 1078
    :cond_4
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1082
    :cond_5
    :goto_2
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1083
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :goto_3
    if-ne p2, v0, :cond_7

    .line 1087
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v6, :cond_6

    .line 1090
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1091
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_5

    .line 1093
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1094
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_5

    .line 1097
    :cond_7
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v0, :cond_9

    if-eqz v6, :cond_8

    .line 1101
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_4

    .line 1103
    :cond_8
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1107
    :cond_9
    :goto_4
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1108
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1112
    :goto_5
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1113
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1116
    :cond_a
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1117
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1120
    :cond_b
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1121
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1124
    :cond_c
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1125
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1128
    :cond_d
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1131
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v0, p3

    if-ne v1, p1, :cond_e

    .line 1132
    aput-object p2, v0, p3

    goto :goto_6

    :cond_e
    if-ne v1, p2, :cond_f

    .line 1134
    aput-object p1, v0, p3

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1441
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    const/4 v0, 0x0

    .line 1443
    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 1444
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/4 v0, 0x1

    .line 1445
    aput-object v2, v1, v0

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1305
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1307
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1321
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    .line 1323
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .line 1587
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1588
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$6;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$6;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 1645
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public entrySetByValue()Ljava/util/Set;
    .locals 3

    .line 204
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 205
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$1;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$1;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1341
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 168
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .line 1462
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1463
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$4;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$4;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 1498
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySetByValue()Ljava/util/Set;
    .locals 3

    .line 284
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 285
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$2;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$2;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1368
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1373
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1375
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, p1, v1

    const/4 p2, 0x1

    .line 1376
    aput-object v0, p1, p2

    .line 1378
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    goto :goto_1

    .line 1381
    :cond_0
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-eqz v3, :cond_4

    if-gez v3, :cond_2

    .line 1388
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1389
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1391
    :cond_1
    new-instance p1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1394
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1395
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1396
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1397
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1398
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    goto :goto_1

    .line 1403
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1404
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1406
    :cond_3
    new-instance p1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1409
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1410
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1411
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1412
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1413
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1384
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cannot store a duplicate key (\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\") in this Map"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1433
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 180
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1286
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 1516
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1517
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$5;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$5;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 1566
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public valuesByValue()Ljava/util/Collection;
    .locals 3

    .line 343
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 344
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$3;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$3;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v1

    return-object v0
.end method
