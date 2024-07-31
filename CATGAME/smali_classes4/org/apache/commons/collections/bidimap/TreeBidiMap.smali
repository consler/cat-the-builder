.class public Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedBidiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;
    }
.end annotation


# static fields
.field private static final FIRST_INDEX:I = 0x0

.field private static final INVERSEMAPENTRY:I = 0x3

.field private static final KEY:I = 0x0

.field private static final MAPENTRY:I = 0x2

.field private static final NUMBER_OF_INDICES:I = 0x2

.field private static final SUM_OF_INDICES:I = 0x1

.field private static final VALUE:I = 0x1

.field private static final dataName:[Ljava/lang/String;


# instance fields
.field private entrySet:Ljava/util/Set;

.field private inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

.field private keySet:Ljava/util/Set;

.field private modifications:I

.field private nodeCount:I

.field private rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field private valuesSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 89
    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 89
    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->putAll(Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method static synthetic access$1300(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # I

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 76
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # I

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # I

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 76
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method static synthetic access$2500(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # Ljava/lang/Comparable;
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # I

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doHashCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p1, "x1"    # I

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .line 1279
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1280
    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1305
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 1306
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 1307
    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 1262
    if-eqz p0, :cond_1

    .line 1265
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    .line 1268
    return-void

    .line 1266
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " must be Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

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

    .line 1291
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1292
    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "o1"    # Ljava/lang/Comparable;
    .param p1, "o2"    # Ljava/lang/Comparable;

    .line 699
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .param p0, "from"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "to"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "index"    # I

    .line 746
    if-eqz p1, :cond_1

    .line 747
    if-nez p0, :cond_0

    .line 749
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-static {p1, p0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 754
    :cond_1
    :goto_0
    return-void
.end method

.method private doEquals(Ljava/lang/Object;I)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .line 1384
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1385
    return v0

    .line 1387
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1388
    return v2

    .line 1390
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 1391
    .local v1, "other":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1392
    return v2

    .line 1395
    :cond_2
    iget v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v3, :cond_5

    .line 1397
    :try_start_0
    new-instance v3, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v3, p0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    .local v3, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v3}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1398
    invoke-interface {v3}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1399
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v3}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1400
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    .line 1401
    return v2

    .line 1403
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 1408
    .end local v3    # "it":Lorg/apache/commons/collections/MapIterator;
    :cond_4
    goto :goto_1

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "ex":Ljava/lang/NullPointerException;
    return v2

    .line 1404
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1405
    .local v0, "ex":Ljava/lang/ClassCastException;
    return v2

    .line 1410
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :cond_5
    :goto_1
    return v0
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .line 491
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 492
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 493
    .local v0, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private doHashCode(I)I
    .locals 6
    .param p1, "type"    # I

    .line 1420
    const/4 v0, 0x0

    .line 1421
    .local v0, "total":I
    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v1, :cond_0

    .line 1422
    new-instance v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    .local v1, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1424
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1425
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1426
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 1428
    .end local v1    # "it":Lorg/apache/commons/collections/MapIterator;
    :cond_0
    return v0
.end method

.method private doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Comparable;
    .param p2, "value"    # Ljava/lang/Comparable;
    .param p3, "index"    # I

    .line 505
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v2

    .line 509
    .local v2, "prev":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    .line 510
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    .line 512
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v3, v3, v1

    .line 513
    .local v3, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v3, :cond_1

    .line 515
    new-instance v4, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v4, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 516
    .local v4, "root":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v4, v5, v1

    .line 517
    aput-object v4, v5, v0

    .line 518
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    .line 520
    .end local v4    # "root":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    goto :goto_3

    .line 523
    :cond_1
    :goto_1
    invoke-static {v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 525
    .local v0, "cmp":I
    if-eqz v0, :cond_5

    .line 528
    if-gez v0, :cond_3

    .line 529
    invoke-static {v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 530
    invoke-static {v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    goto :goto_2

    .line 532
    :cond_2
    new-instance v4, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v4, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 534
    .local v4, "newNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-direct {p0, v4}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 535
    invoke-static {v3, v4, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 536
    invoke-static {v4, v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 537
    invoke-direct {p0, v4, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 538
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    .line 540
    goto :goto_3

    .line 543
    .end local v4    # "newNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_3
    invoke-static {v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 544
    invoke-static {v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 557
    .end local v0    # "cmp":I
    :goto_2
    goto :goto_1

    .line 546
    .restart local v0    # "cmp":I
    :cond_4
    new-instance v4, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v4, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 548
    .restart local v4    # "newNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-direct {p0, v4}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 549
    invoke-static {v3, v4, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 550
    invoke-static {v4, v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 551
    invoke-direct {p0, v4, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 552
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    .line 554
    nop

    .line 559
    .end local v0    # "cmp":I
    .end local v4    # "newNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_3
    return-object v2

    .line 527
    .restart local v0    # "cmp":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot store a duplicate key (\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "\") in this Map"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 4
    .param p1, "deletedNode"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1012
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 1015
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1016
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->swapPosition(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1019
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1022
    .local v1, "replacement":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1023
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1025
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1026
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v1, v3, v0

    goto :goto_2

    .line 1027
    :cond_2
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 1028
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_2

    .line 1030
    :cond_3
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1033
    :goto_2
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1034
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1035
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1037
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1038
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_4

    .line 1043
    :cond_4
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1046
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v2, v3, v0

    goto :goto_4

    .line 1050
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1051
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1054
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1055
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-ne p1, v3, :cond_7

    .line 1056
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_3

    .line 1058
    :cond_7
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1061
    :goto_3
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1012
    .end local v1    # "replacement":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1066
    .end local v0    # "index":I
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->shrink()V

    .line 1067
    return-void
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 3
    .param p1, "replacementNode"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "index"    # I

    .line 1079
    move-object v0, p1

    .line 1081
    .local v0, "currentNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v1, v1, p2

    if-eq v0, v1, :cond_7

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1082
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1083
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1085
    .local v1, "siblingNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1086
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1087
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1088
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1090
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1093
    :cond_0
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1095
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1097
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 1099
    :cond_1
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1101
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1102
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1104
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1107
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1108
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1109
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1110
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1112
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v2, p2

    .line 1114
    .end local v1    # "siblingNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    goto/16 :goto_0

    .line 1115
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1117
    .restart local v1    # "siblingNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1118
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1119
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1120
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1122
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1125
    :cond_4
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1127
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1129
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_2

    .line 1131
    :cond_5
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1132
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1133
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1134
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1136
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1139
    :cond_6
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1140
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1141
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1142
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1144
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v2, p2

    .line 1146
    .end local v1    # "siblingNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_2
    goto/16 :goto_0

    .line 1149
    :cond_7
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1150
    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 3
    .param p1, "insertedNode"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "index"    # I

    .line 945
    move-object v0, p1

    .line 946
    .local v0, "currentNode":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 948
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v1, v1, p2

    if-eq v0, v1, :cond_7

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 951
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 952
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 954
    .local v1, "y":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 956
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 957
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 959
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 961
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 962
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 964
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 967
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 968
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 970
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 971
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 974
    .end local v1    # "y":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_2
    :goto_1
    goto :goto_0

    .line 977
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 979
    .restart local v1    # "y":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 980
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 981
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 982
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 984
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_2

    .line 986
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 987
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 989
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 992
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 993
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 995
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 996
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 999
    .end local v1    # "y":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 1002
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v1, v1, p2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1003
    return-void
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .line 573
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 574
    .local v0, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    const/4 v1, 0x0

    .line 575
    .local v1, "rval":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 576
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    .line 577
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 579
    :cond_0
    return-object v1
.end method

.method private doToString(I)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # I

    .line 1438
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    .line 1439
    const-string v0, "{}"

    return-object v0

    .line 1441
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v1

    .line 1442
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1443
    new-instance v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    .line 1444
    .local v1, "it":Lorg/apache/commons/collections/MapIterator;
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v2

    .line 1445
    .local v2, "hasNext":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1446
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1447
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1448
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "(this Map)"

    if-ne v3, p0, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v4, p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1452
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v2

    .line 1453
    if-eqz v2, :cond_3

    .line 1454
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1456
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 1458
    :cond_4
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1459
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 810
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private static getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 843
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 821
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 832
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 2
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 728
    move-object v0, p0

    .line 729
    .local v0, "rval":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v0, :cond_0

    .line 730
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 731
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_0
    return-object v0
.end method

.method private grow()V
    .locals 1

    .line 1322
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    .line 1323
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 1324
    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 6
    .param p1, "newNode"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1346
    .local v0, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    invoke-static {p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 1348
    .local v2, "cmp":I
    if-eqz v2, :cond_3

    .line 1351
    if-gez v2, :cond_1

    .line 1352
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1353
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 1355
    :cond_0
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1356
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1357
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1359
    goto :goto_2

    .line 1362
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1363
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1372
    .end local v2    # "cmp":I
    :goto_1
    goto :goto_0

    .line 1365
    .restart local v2    # "cmp":I
    :cond_2
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1366
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1367
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1369
    nop

    .line 1373
    .end local v2    # "cmp":I
    :goto_2
    return-void

    .line 1349
    .restart local v2    # "cmp":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot store a duplicate value (\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\") in this Map"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 775
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 858
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :goto_1
    return v0
.end method

.method private static isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 764
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$900(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 876
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :goto_1
    return v0
.end method

.method private static leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 2
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 711
    move-object v0, p0

    .line 712
    .local v0, "rval":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v0, :cond_0

    .line 713
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_0
    return-object v0
.end method

.method private lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 4
    .param p1, "data"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "rval":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v1, v1, p2

    .line 594
    .local v1, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 595
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 596
    .local v2, "cmp":I
    if-nez v2, :cond_0

    .line 597
    move-object v0, v1

    .line 598
    goto :goto_2

    .line 600
    :cond_0
    if-gez v2, :cond_1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 602
    .end local v2    # "cmp":I
    goto :goto_0

    .line 604
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 797
    if-eqz p0, :cond_0

    .line 798
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 800
    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .param p0, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p1, "index"    # I

    .line 785
    if-eqz p0, :cond_0

    .line 786
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 788
    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .line 1315
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    .line 1316
    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 4
    .param p1, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "index"    # I

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "rval":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez p1, :cond_0

    .line 617
    const/4 v0, 0x0

    goto :goto_1

    .line 618
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 621
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 629
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 630
    .local v1, "parent":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    move-object v2, p1

    .line 632
    .local v2, "child":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 633
    move-object v2, v1

    .line 634
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_0

    .line 636
    :cond_2
    move-object v0, v1

    .line 638
    .end local v1    # "parent":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .end local v2    # "child":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    return-object v0
.end method

.method private nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 4
    .param p1, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "index"    # I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "rval":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez p1, :cond_0

    .line 651
    const/4 v0, 0x0

    goto :goto_1

    .line 652
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 655
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 663
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 664
    .local v1, "parent":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    move-object v2, p1

    .line 666
    .local v2, "child":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 667
    move-object v2, v1

    .line 668
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_0

    .line 670
    :cond_2
    move-object v0, v1

    .line 672
    .end local v1    # "parent":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .end local v2    # "child":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    return-object v0
.end method

.method private static oppositeIndex(I)I
    .locals 1
    .param p0, "index"    # I

    .line 686
    rsub-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "index"    # I

    .line 889
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 890
    .local v0, "rightChild":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 892
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 893
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 895
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 897
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 899
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v0, v1, p2

    goto :goto_0

    .line 900
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 901
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 903
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 906
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 907
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 908
    return-void
.end method

.method private rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "index"    # I

    .line 917
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 918
    .local v0, "leftChild":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 919
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 920
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 922
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 924
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 926
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v0, v1, p2

    goto :goto_0

    .line 927
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 928
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 930
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 933
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 934
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 935
    return-void
.end method

.method private shrink()V
    .locals 1

    .line 1330
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    .line 1331
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 1332
    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 10
    .param p1, "x"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p2, "y"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .param p3, "index"    # I

    .line 1163
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1164
    .local v0, "xFormerParent":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1165
    .local v1, "xFormerLeftChild":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    .line 1166
    .local v2, "xFormerRightChild":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1167
    .local v3, "yFormerParent":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v4

    .line 1168
    .local v4, "yFormerLeftChild":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v5

    .line 1169
    .local v5, "yFormerRightChild":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 1170
    .local v6, "xWasLeftChild":Z
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v9

    invoke-static {v9, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v9

    if-ne p2, v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    .line 1173
    .local v7, "yWasLeftChild":Z
    :goto_1
    if-ne p1, v3, :cond_3

    .line 1174
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1176
    if-eqz v7, :cond_2

    .line 1177
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1178
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_3

    .line 1180
    :cond_2
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1181
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_3

    .line 1184
    :cond_3
    invoke-static {p1, v3, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1186
    if-eqz v3, :cond_5

    .line 1187
    if-eqz v7, :cond_4

    .line 1188
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_2

    .line 1190
    :cond_4
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1194
    :cond_5
    :goto_2
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1195
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1198
    :goto_3
    if-ne p2, v0, :cond_7

    .line 1199
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1201
    if-eqz v6, :cond_6

    .line 1202
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1203
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_5

    .line 1205
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1206
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_5

    .line 1209
    :cond_7
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1211
    if-eqz v0, :cond_9

    .line 1212
    if-eqz v6, :cond_8

    .line 1213
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_4

    .line 1215
    :cond_8
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1219
    :cond_9
    :goto_4
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1220
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1224
    :goto_5
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1225
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1228
    :cond_a
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1229
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1232
    :cond_b
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1233
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1236
    :cond_c
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1237
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1240
    :cond_d
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1243
    iget-object v8, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v9, v8, p3

    if-ne v9, p1, :cond_e

    .line 1244
    aput-object p2, v8, p3

    goto :goto_6

    .line 1245
    :cond_e
    aget-object v9, v8, p3

    if-ne v9, p2, :cond_f

    .line 1246
    aput-object p1, v8, p3

    .line 1248
    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 243
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 246
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 247
    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 248
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 147
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 161
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 162
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

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

    .line 394
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .line 290
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 178
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 264
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doHashCode(I)I

    move-result v0

    return v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 132
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .line 303
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 2

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 318
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 319
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 320
    .local v0, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 2

    .line 423
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0

    .line 426
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 332
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 333
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 334
    .local v0, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 206
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, p2

    check-cast v1, Ljava/lang/Comparable;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .line 217
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 236
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 372
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    return-object v0
.end method
