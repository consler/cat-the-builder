.class public final Lorg/apache/commons/collections/StaticBucketMap;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/StaticBucketMap$Values;,
        Lorg/apache/commons/collections/StaticBucketMap$KeySet;,
        Lorg/apache/commons/collections/StaticBucketMap$EntrySet;,
        Lorg/apache/commons/collections/StaticBucketMap$KeyIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$Lock;,
        Lorg/apache/commons/collections/StaticBucketMap$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUCKETS:I = 0xff


# instance fields
.field private m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

.field private m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/StaticBucketMap;-><init>(I)V

    .line 115
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "numBuckets"    # I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/16 v0, 0x11

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 132
    .local v0, "size":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 134
    add-int/lit8 v0, v0, -0x1

    .line 137
    :cond_0
    new-array v1, v0, [Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 138
    new-array v1, v0, [Lorg/apache/commons/collections/StaticBucketMap$Lock;

    iput-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    new-instance v3, Lorg/apache/commons/collections/StaticBucketMap$Lock;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/StaticBucketMap$Lock;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    aput-object v3, v2, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/StaticBucketMap;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/StaticBucketMap;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/StaticBucketMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "bucket"    # I

    .line 701
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 702
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 703
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v0, v0, p2

    monitor-enter v0

    .line 706
    add-int/lit8 v1, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 707
    monitor-exit v0

    .line 708
    return-void

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final getHash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 161
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 163
    .local v0, "hash":I
    shl-int/lit8 v1, v0, 0xf

    not-int v1, v1

    add-int/2addr v0, v1

    .line 164
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 165
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 166
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 167
    shl-int/lit8 v1, v0, 0xb

    not-int v1, v1

    add-int/2addr v0, v1

    .line 168
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 169
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 170
    if-gez v0, :cond_1

    mul-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 696
    if-eqz p1, :cond_0

    .line 697
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 698
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final clear()V
    .locals 4

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    .line 406
    .local v1, "lock":Lorg/apache/commons/collections/StaticBucketMap$Lock;
    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 408
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 409
    monitor-exit v1

    .line 403
    .end local v1    # "lock":Lorg/apache/commons/collections/StaticBucketMap$Lock;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .restart local v1    # "lock":Lorg/apache/commons/collections/StaticBucketMap$Lock;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 411
    .end local v0    # "i":I
    .end local v1    # "lock":Lorg/apache/commons/collections/StaticBucketMap$Lock;
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 274
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 280
    .local v2, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 282
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v2, v3

    goto :goto_0

    .line 284
    :cond_1
    :goto_1
    const/4 v3, 0x1

    monitor-exit v1

    return v3

    .line 289
    .end local v2    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    monitor-exit v1

    .line 291
    const/4 v1, 0x0

    return v1

    .line 289
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 301
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 305
    .local v2, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_1
    if-eqz v2, :cond_2

    .line 307
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 313
    :cond_0
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v2, v3

    goto :goto_1

    .line 310
    :cond_1
    :goto_2
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 315
    .end local v2    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    monitor-exit v1

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 318
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 334
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 418
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 419
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 421
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_2

    return v0

    .line 423
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 425
    .local v0, "other":Ljava/util/Map;
    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 249
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 251
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 255
    .local v2, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 257
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v2, v3

    goto :goto_0

    .line 259
    :cond_1
    :goto_1
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object v3

    .line 264
    .end local v2    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    monitor-exit v1

    .line 266
    const/4 v1, 0x0

    return-object v1

    .line 264
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final hashCode()I
    .locals 5

    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 437
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v3, v3, v1

    .line 441
    .local v3, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_1
    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    .line 444
    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v3, v4

    goto :goto_1

    .line 446
    .end local v3    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_0
    monitor-exit v2

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 448
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap;->size()I

    move-result v0

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

    .line 178
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 201
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 207
    .local v2, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 209
    new-instance v4, Lorg/apache/commons/collections/StaticBucketMap$Node;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    move-object v2, v4

    .line 210
    iput-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 211
    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 212
    iget-object v4, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v2, v4, v0

    .line 213
    iget-object v4, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v4, v4, v0

    iget v5, v4, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 214
    monitor-exit v1

    return-object v3

    .line 220
    :cond_0
    move-object v4, v2

    .local v4, "next":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-eqz v4, :cond_3

    .line 222
    move-object v2, v4

    .line 224
    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_2

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    iget-object v5, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v4, v5

    goto :goto_0

    .line 226
    :cond_2
    :goto_1
    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 227
    .local v3, "returnVal":Ljava/lang/Object;
    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 228
    monitor-exit v1

    return-object v3

    .line 234
    .end local v3    # "returnVal":Ljava/lang/Object;
    .end local v4    # "next":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_3
    new-instance v4, Lorg/apache/commons/collections/StaticBucketMap$Node;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    .line 235
    .local v4, "newNode":Lorg/apache/commons/collections/StaticBucketMap$Node;
    iput-object p1, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 236
    iput-object p2, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 237
    iput-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 238
    iget-object v5, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v5, v5, v0

    iget v6, v5, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 239
    .end local v2    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    .end local v4    # "newNode":Lorg/apache/commons/collections/StaticBucketMap$Node;
    monitor-exit v1

    .line 241
    return-object v3

    .line 239
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .param p1, "other"    # Ljava/util/Map;

    .line 342
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 344
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 347
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 356
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 358
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 361
    .local v2, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    const/4 v3, 0x0

    .line 363
    .local v3, "prev":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-eqz v2, :cond_3

    .line 365
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v4, p1, :cond_1

    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    move-object v3, v2

    .line 383
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v2, v4

    goto :goto_0

    .line 368
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 371
    iget-object v4, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v5, v4, v0

    goto :goto_2

    .line 376
    :cond_2
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 378
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v4, v4, v0

    iget v5, v4, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 379
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object v4

    .line 385
    .end local v2    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    .end local v3    # "prev":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_3
    monitor-exit v1

    .line 387
    const/4 v1, 0x0

    return-object v1

    .line 385
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()I
    .locals 3

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 190
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/2addr v0, v2

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 326
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method
