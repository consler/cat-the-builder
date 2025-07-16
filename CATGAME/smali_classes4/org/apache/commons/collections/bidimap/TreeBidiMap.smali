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

    const-string v0, "key"

    const-string v1, "value"

    .line 85
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 87
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 89
    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 87
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 89
    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/Object;I)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    return p0
.end method

.method static synthetic access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(I)I
    .locals 0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    return p0
.end method

.method static synthetic access$2500(Ljava/lang/Object;)V
    .locals 0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Object;I)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)I
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doHashCode(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1279
    invoke-static {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1305
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 1306
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1265
    instance-of p0, p0, Ljava/lang/Comparable;

    if-eqz p0, :cond_0

    return-void

    .line 1266
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

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

    .line 1263
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

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

    .line 1291
    invoke-static {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 699
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 749
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-static {p1, p0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private doEquals(Ljava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1387
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1390
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 1391
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 1395
    :cond_2
    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v1, :cond_4

    .line 1397
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    :cond_3
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1398
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 1399
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1400
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_3

    :catch_0
    return v2

    :cond_4
    return v0
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 491
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 492
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 493
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doHashCode(I)I
    .locals 3

    .line 1421
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1422
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1423
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1424
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1425
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr p1, v2

    add-int/2addr v1, p1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 3

    .line 505
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 508
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p3

    .line 509
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    .line 510
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    .line 512
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 515
    new-instance v2, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 516
    iget-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v2, p1, v1

    .line 517
    aput-object v2, p1, v0

    .line 518
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    goto :goto_3

    .line 523
    :cond_1
    :goto_1
    invoke-static {v2, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_5

    if-gez v0, :cond_3

    .line 529
    invoke-static {v2, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 530
    invoke-static {v2, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_2

    .line 532
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 534
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 535
    invoke-static {v2, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 536
    invoke-static {v0, v2, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 537
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 538
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    goto :goto_3

    .line 543
    :cond_3
    invoke-static {v2, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 544
    invoke-static {v2, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_1

    .line 546
    :cond_4
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 548
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 549
    invoke-static {v2, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 550
    invoke-static {v0, v2, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 551
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 552
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    :goto_3
    return-object p3

    .line 527
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Cannot store a duplicate key (\""

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, "\") in this Map"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 4

    const/4 v0, 0x0

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

    move-result-object v1

    if-nez v1, :cond_5

    .line 1046
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v2, v1, v0

    goto :goto_4

    .line 1050
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1051
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1054
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1055
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 1056
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_3

    .line 1058
    :cond_7
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1061
    :goto_3
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1066
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->shrink()V

    return-void
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2

    .line 1081
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, p2

    if-eq p1, v0, :cond_7

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1082
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1083
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1085
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1087
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1088
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1090
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1093
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1095
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1097
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_0

    .line 1099
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1100
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1101
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1102
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1104
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1107
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1108
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1109
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1110
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1112
    iget-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object p1, p1, p2

    goto/16 :goto_0

    .line 1115
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1117
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1118
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1119
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1120
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1122
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1125
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1127
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1129
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 1131
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1132
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1133
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1134
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1136
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1139
    :cond_6
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1140
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1141
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1142
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1144
    iget-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object p1, p1, p2

    goto/16 :goto_0

    .line 1149
    :cond_7
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2

    .line 946
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    .line 948
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, p2

    if-eq p1, v0, :cond_6

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 951
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 954
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 956
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 957
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 959
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_0

    .line 961
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    .line 964
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 967
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 968
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 970
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 977
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 979
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 980
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 981
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 982
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 984
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 986
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 987
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    .line 989
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 992
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 993
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 995
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto/16 :goto_0

    .line 1002
    :cond_6
    iget-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object p1, p1, p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 573
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 576
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object p2

    .line 577
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private doToString(I)Ljava/lang/String;
    .locals 5

    .line 1438
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    const-string p1, "{}"

    return-object p1

    .line 1441
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    .line 1442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1443
    new-instance v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    .line 1444
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 1446
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1447
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-ne p1, p0, :cond_2

    move-object p1, v3

    .line 1448
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v4, 0x3d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    if-ne v2, p0, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1452
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v2, ", "

    .line 1454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const/16 p1, 0x7d

    .line 1458
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1459
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 810
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method private static getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 843
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 821
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 832
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1

    if-eqz p0, :cond_0

    .line 730
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private grow()V
    .locals 1

    .line 1322
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    .line 1323
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 4
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
    :goto_0
    invoke-static {p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    if-eqz v2, :cond_3

    if-gez v2, :cond_1

    .line 1352
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1353
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1355
    :cond_0
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1356
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1357
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_1

    .line 1362
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1363
    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1365
    :cond_2
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1366
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1367
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    :goto_1
    return-void

    .line 1349
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Cannot store a duplicate value (\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

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

.method private static isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 775
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-ne p0, p1, :cond_1

    :goto_0
    return v0
.end method

.method private static isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 764
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$900(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-ne p0, p1, :cond_1

    :goto_0
    return v0
.end method

.method private static leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1

    if-eqz p0, :cond_0

    .line 713
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 2

    .line 592
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, p2

    :goto_0
    if-eqz v0, :cond_2

    .line 595
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    .line 600
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private static makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 798
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 786
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .line 1315
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 618
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 621
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_1

    .line 629
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_2

    .line 632
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 634
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 652
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 655
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_1

    .line 663
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_2

    .line 666
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 668
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static oppositeIndex(I)I
    .locals 0

    rsub-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2

    .line 889
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 890
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

    return-void
.end method

.method private rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2

    .line 917
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 918
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

    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 10

    .line 1163
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1164
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1165
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    .line 1166
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1167
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v4

    .line 1168
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v5

    .line 1169
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

    :goto_1
    if-ne p1, v3, :cond_3

    .line 1174
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

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

    if-eqz v3, :cond_5

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

    :goto_3
    if-ne p2, v0, :cond_7

    .line 1199
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

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

    if-eqz v0, :cond_9

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

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1225
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1228
    :cond_a
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1229
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1232
    :cond_b
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1233
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1236
    :cond_c
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1237
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1240
    :cond_d
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1243
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v1, v0, p3

    if-ne v1, p1, :cond_e

    .line 1244
    aput-object p2, v0, p3

    goto :goto_6

    :cond_e
    if-ne v1, p2, :cond_f

    .line 1246
    aput-object p1, v0, p3

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 243
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 246
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/4 v0, 0x1

    .line 247
    aput-object v2, v1, v0

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 146
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 147
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 161
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 162
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

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

    const/4 v0, 0x0

    .line 459
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;I)Z

    move-result p1

    return p1
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
    .locals 1

    .line 178
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 264
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 468
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
    .locals 1

    .line 318
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 319
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
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
    .locals 1

    .line 332
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 333
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 206
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 217
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 218
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 236
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 279
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 477
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
