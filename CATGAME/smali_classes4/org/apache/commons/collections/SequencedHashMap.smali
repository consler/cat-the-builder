.class public Lorg/apache/commons/collections/SequencedHashMap;
.super Ljava/lang/Object;
.source "SequencedHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;,
        Lorg/apache/commons/collections/SequencedHashMap$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY:I = 0x2

.field private static final KEY:I = 0x0

.field private static final REMOVED_MASK:I = -0x80000000

.field private static final VALUE:I = 0x1

.field private static final serialVersionUID:J = 0x2eea2293a9222612L


# instance fields
.field private entries:Ljava/util/HashMap;

.field private transient modCount:J

.field private sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 169
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 171
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 182
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 184
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialSize"    # I
    .param p2, "loadFactor"    # F

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 197
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1, "m"    # Ljava/util/Map;

    .line 207
    invoke-direct {p0}, Lorg/apache/commons/collections/SequencedHashMap;-><init>()V

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->putAll(Ljava/util/Map;)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/SequencedHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/SequencedHashMap;

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/SequencedHashMap;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/SequencedHashMap;

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/SequencedHashMap;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/collections/SequencedHashMap;

    .line 62
    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    return-wide v0
.end method

.method private static final createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 2

    .line 140
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .local v0, "s":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 142
    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 143
    return-object v0
.end method

.method private getEntry(I)Ljava/util/Map$Entry;
    .locals 5
    .param p1, "index"    # I

    .line 859
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 861
    .local v0, "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-ltz p1, :cond_2

    .line 866
    const/4 v1, -0x1

    .line 867
    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_0

    .line 868
    add-int/lit8 v1, v1, 0x1

    .line 869
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 874
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_1

    .line 878
    iget-object v2, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-object v2

    .line 875
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 862
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private insertEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 225
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 228
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 229
    return-void
.end method

.method private removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 216
    iget-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 217
    iget-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 218
    return-void
.end method

.method private removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 471
    .local v0, "e":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_0

    .line 472
    const/4 v1, 0x0

    return-object v1

    .line 473
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 474
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    .line 475
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 500
    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 503
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 506
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 507
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 508
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 829
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap;

    .line 832
    .local v0, "map":Lorg/apache/commons/collections/SequencedHashMap;
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 836
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 839
    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap;->putAll(Ljava/util/Map;)V

    .line 849
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 270
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 271
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .local v1, "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_1

    .line 272
    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 273
    return v0

    .line 271
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .end local v1    # "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :cond_1
    goto :goto_2

    .line 276
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .restart local v1    # "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_4

    .line 277
    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    return v0

    .line 276
    :cond_3
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_1

    .line 281
    .end local v1    # "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 639
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$3;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 514
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 515
    return v0

    .line 516
    :cond_0
    if-ne p1, p0, :cond_1

    .line 517
    const/4 v0, 0x1

    return v0

    .line 519
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_2

    .line 520
    return v0

    .line 522
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 890
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 290
    .local v0, "entry":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_0

    .line 291
    const/4 v1, 0x0

    return-object v1

    .line 293
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getFirst()Ljava/util/Map$Entry;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :goto_0
    return-object v0
.end method

.method public getFirstKey()Ljava/lang/Object;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirstValue()Ljava/lang/Object;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/util/Map$Entry;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :goto_0
    return-object v0
.end method

.method public getLastKey()Ljava/lang/Object;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLastValue()Ljava/lang/Object;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 902
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 912
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 913
    .local v0, "e":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_0

    .line 914
    const/4 v1, -0x1

    return v1

    .line 916
    :cond_0
    const/4 v1, 0x0

    .line 917
    .local v1, "pos":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_1

    .line 918
    add-int/lit8 v1, v1, 0x1

    .line 919
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 921
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 930
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 559
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$1;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 941
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 424
    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 426
    const/4 v0, 0x0

    .line 429
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 432
    .local v1, "e":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-eqz v1, :cond_0

    .line 434
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/SequencedHashMap;->removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    .line 437
    invoke-virtual {v1, p2}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v2, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/collections/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 447
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/SequencedHashMap;->insertEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    .line 454
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "t"    # Ljava/util/Map;

    .line 489
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 490
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 492
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 992
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 993
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 994
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 995
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 996
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 979
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 461
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    .line 462
    .local v0, "e":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public sequence()Ljava/util/List;
    .locals 3

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 960
    .local v0, "l":Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 961
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 965
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 540
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 541
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .local v1, "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_1

    .line 543
    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 544
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 545
    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 546
    iget-object v2, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_0

    .line 547
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 550
    .end local v1    # "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 591
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$2;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1008
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .local v0, "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v0, v1, :cond_0

    .line 1009
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1010
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1008
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 1012
    .end local v0    # "pos":Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :cond_0
    return-void
.end method
