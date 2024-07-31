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

    .line 115
    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 127
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 117
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 118
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 119
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 120
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    .line 121
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    .line 122
    new-array v0, v0, [Ljava/util/Collection;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 117
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 118
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 119
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 120
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    .line 121
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    .line 122
    new-array v0, v0, [Ljava/util/Collection;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->putAll(Ljava/util/Map;)V

    .line 151
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # I

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap;

    .line 107
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    return v0
.end method

.method static synthetic access$2300(Lorg/apache/commons/collections/DoubleOrderedMap;)[Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap;

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "x1"    # I

    .line 107
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap;
    .param p1, "x1"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "x2"    # I

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap;
    .param p1, "x1"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DoubleOrderedMap;

    .line 107
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return v0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .line 1172
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1173
    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1199
    invoke-static {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1200
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    .line 1201
    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 1152
    if-eqz p0, :cond_1

    .line 1157
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    .line 1161
    return-void

    .line 1158
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " must be Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 1184
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1185
    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "o1"    # Ljava/lang/Comparable;
    .param p1, "o2"    # Ljava/lang/Comparable;

    .line 497
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "from"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "to"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 575
    if-eqz p1, :cond_1

    .line 576
    if-nez p0, :cond_0

    .line 579
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {p1, p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1100(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 584
    :cond_1
    :goto_0
    return-void
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .line 432
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 434
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 436
    .local v0, "node":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 4
    .param p1, "deletedNode"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 877
    const/4 v0, 0x0

    .local v0, "index":I
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

    .line 891
    .local v1, "replacement":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
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

    move-result-object v3

    if-nez v3, :cond_5

    .line 916
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v2, v3, v0

    goto :goto_4

    .line 920
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 921
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 924
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 925
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-ne p1, v3, :cond_7

    .line 928
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 930
    :cond_7
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 934
    :goto_3
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 877
    .end local v1    # "replacement":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 940
    .end local v0    # "index":I
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->shrink()V

    .line 941
    return-void
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 3
    .param p1, "replacementNode"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 955
    move-object v0, p1

    .line 957
    .local v0, "currentNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v1, p2

    if-eq v0, v1, :cond_7

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 959
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 960
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 963
    .local v1, "siblingNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 965
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 966
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 968
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 971
    :cond_0
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 976
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_1

    .line 978
    :cond_1
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 979
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 980
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 981
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 983
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 987
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 989
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 990
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 991
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 993
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v2, p2

    .line 995
    .end local v1    # "siblingNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_1
    goto/16 :goto_0

    .line 996
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 998
    .restart local v1    # "siblingNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 999
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1000
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1001
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1003
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1006
    :cond_4
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1008
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1010
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_2

    .line 1012
    :cond_5
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1013
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1014
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1015
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1017
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1021
    :cond_6
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1023
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1024
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1025
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1027
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v2, p2

    .line 1029
    .end local v1    # "siblingNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_2
    goto/16 :goto_0

    .line 1032
    :cond_7
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1033
    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 3
    .param p1, "insertedNode"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 806
    move-object v0, p1

    .line 808
    .local v0, "currentNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 810
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v1, p2

    if-eq v0, v1, :cond_7

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 812
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 813
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 816
    .local v1, "y":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 818
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 819
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 821
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_1

    .line 823
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 826
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 829
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 830
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 832
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 833
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 837
    .end local v1    # "y":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_2
    :goto_1
    goto :goto_0

    .line 840
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 843
    .restart local v1    # "y":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 844
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 845
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 846
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 848
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_2

    .line 850
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 851
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 853
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 856
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 857
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 859
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 860
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 863
    .end local v1    # "y":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 866
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v1, p2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 867
    return-void
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .line 408
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 409
    .local v0, "node":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    const/4 v1, 0x0

    .line 411
    .local v1, "rval":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    .line 414
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 417
    :cond_0
    return-object v1
.end method

.method private static getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 648
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private static getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 688
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 660
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 674
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private grow()V
    .locals 1

    .line 1217
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1219
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 1220
    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 6
    .param p1, "newNode"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
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
    .local v0, "node":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 1248
    .local v2, "cmp":I
    if-eqz v2, :cond_3

    .line 1252
    if-gez v2, :cond_1

    .line 1253
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1254
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_1

    .line 1256
    :cond_0
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1257
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1258
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1260
    goto :goto_2

    .line 1263
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1264
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1273
    .end local v2    # "cmp":I
    :goto_1
    goto :goto_0

    .line 1266
    .restart local v2    # "cmp":I
    :cond_2
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1267
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1268
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1270
    nop

    .line 1274
    .end local v2    # "cmp":I
    :goto_2
    return-void

    .line 1249
    .restart local v2    # "cmp":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot store a duplicate value (\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\") in this Map"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 609
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1300(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 706
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :goto_1
    return v0
.end method

.method private static isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 595
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 726
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :goto_1
    return v0
.end method

.method private static leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 2
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 512
    move-object v0, p0

    .line 514
    .local v0, "rval":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-eqz v0, :cond_0

    .line 515
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 516
    invoke-static {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 520
    :cond_0
    return-object v0
.end method

.method private lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 4
    .param p1, "data"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "rval":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v1, p2

    .line 470
    .local v1, "node":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 471
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 473
    .local v2, "cmp":I
    if-nez v2, :cond_0

    .line 474
    move-object v0, v1

    .line 476
    goto :goto_2

    .line 478
    :cond_0
    if-gez v2, :cond_1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 482
    .end local v2    # "cmp":I
    goto :goto_0

    .line 484
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 635
    if-eqz p0, :cond_0

    .line 636
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 638
    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .param p0, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p1, "index"    # I

    .line 622
    if-eqz p0, :cond_0

    .line 623
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 625
    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .line 1209
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 1210
    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 4
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, "rval":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-nez p1, :cond_0

    .line 536
    const/4 v0, 0x0

    goto :goto_1

    .line 537
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 541
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_1

    .line 550
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 551
    .local v1, "parent":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    move-object v2, p1

    .line 553
    .local v2, "child":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 554
    move-object v2, v1

    .line 555
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_0

    .line 558
    :cond_2
    move-object v0, v1

    .line 561
    .end local v1    # "parent":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .end local v2    # "child":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_1
    return-object v0
.end method

.method private oppositeIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 453
    rsub-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 741
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 743
    .local v0, "rightChild":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
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

    .line 763
    return-void
.end method

.method private rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "index"    # I

    .line 773
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 775
    .local v0, "leftChild":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
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

    .line 795
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

    .line 1230
    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 10
    .param p1, "x"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p2, "y"    # Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .param p3, "index"    # I

    .line 1047
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1048
    .local v0, "xFormerParent":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1049
    .local v1, "xFormerLeftChild":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    .line 1050
    .local v2, "xFormerRightChild":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    .line 1051
    .local v3, "yFormerParent":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v4

    .line 1052
    .local v4, "yFormerLeftChild":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v5

    .line 1053
    .local v5, "yFormerRightChild":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
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
    .local v6, "xWasLeftChild":Z
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

    .line 1061
    .local v7, "yWasLeftChild":Z
    :goto_1
    if-ne p1, v3, :cond_3

    .line 1062
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1064
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

    .line 1074
    if-eqz v3, :cond_5

    .line 1075
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

    .line 1086
    :goto_3
    if-ne p2, v0, :cond_7

    .line 1087
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1089
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

    .line 1099
    if-eqz v0, :cond_9

    .line 1100
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

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1113
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1116
    :cond_a
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1117
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1120
    :cond_b
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1121
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1124
    :cond_c
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1125
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1128
    :cond_d
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1131
    iget-object v8, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v9, v8, p3

    if-ne v9, p1, :cond_e

    .line 1132
    aput-object p2, v8, p3

    goto :goto_6

    .line 1133
    :cond_e
    aget-object v9, v8, p3

    if-ne v9, p2, :cond_f

    .line 1134
    aput-object p1, v8, p3

    .line 1136
    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1441
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1443
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 1444
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1445
    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 1446
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1305
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1307
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 1321
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    .line 1323
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1341
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeyForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 168
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
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

    .line 1372
    .local v0, "node":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-nez v0, :cond_0

    .line 1373
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    move-object v4, p2

    check-cast v4, Ljava/lang/Comparable;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1375
    .local v2, "root":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v2, v3, v1

    .line 1376
    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 1378
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    .line 1379
    .end local v2    # "root":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    goto :goto_2

    .line 1381
    :cond_0
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 1383
    .local v2, "cmp":I
    if-eqz v2, :cond_4

    .line 1387
    if-gez v2, :cond_2

    .line 1388
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1389
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_1

    .line 1391
    :cond_1
    new-instance v3, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    move-object v5, p2

    check-cast v5, Ljava/lang/Comparable;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1394
    .local v3, "newNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-direct {p0, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1395
    invoke-static {v0, v3, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1396
    invoke-static {v3, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1397
    invoke-direct {p0, v3, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1398
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    .line 1400
    goto :goto_2

    .line 1403
    .end local v3    # "newNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1404
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1418
    .end local v2    # "cmp":I
    :goto_1
    goto :goto_0

    .line 1406
    .restart local v2    # "cmp":I
    :cond_3
    new-instance v3, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    move-object v5, p2

    check-cast v5, Ljava/lang/Comparable;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1409
    .restart local v3    # "newNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-direct {p0, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1410
    invoke-static {v0, v3, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1411
    invoke-static {v3, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1412
    invoke-direct {p0, v3, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1413
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    .line 1415
    nop

    .line 1421
    .end local v2    # "cmp":I
    .end local v3    # "newNode":Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 1384
    .restart local v2    # "cmp":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot store a duplicate key (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "\") in this Map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 1433
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 180
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
