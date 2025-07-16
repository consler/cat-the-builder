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

    const/16 v0, 0xff

    .line 114
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/StaticBucketMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 129
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 132
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 137
    :cond_0
    new-array v0, p1, [Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 138
    new-array v0, p1, [Lorg/apache/commons/collections/StaticBucketMap$Lock;

    iput-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    new-instance v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/StaticBucketMap$Lock;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 702
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v0, v0, p2

    monitor-enter v0

    add-int/lit8 p2, p2, 0x1

    .line 706
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 707
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final getHash(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 v0, p1, 0xf

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0xb

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v0, v0

    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    mul-int/lit8 p1, p1, -0x1

    :cond_1
    return p1
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .locals 1

    .line 696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 697
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final clear()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 403
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 405
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    .line 406
    monitor-enter v2

    .line 407
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 408
    iput v0, v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 409
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 274
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 276
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 282
    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_0

    .line 284
    :cond_1
    :goto_1
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    .line 289
    :cond_2
    monitor-exit v1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 299
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 301
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v3, v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 307
    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eq v4, p1, :cond_1

    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 313
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_1

    .line 310
    :cond_1
    :goto_2
    monitor-exit v2

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_2
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
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
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 421
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_2

    return v0

    .line 423
    :cond_2
    check-cast p1, Ljava/util/Map;

    .line 425
    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 249
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 251
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 257
    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_0

    .line 259
    :cond_1
    :goto_1
    iget-object p1, v0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    .line 264
    :cond_2
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 435
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 437
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 444
    iget-object v3, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_1

    .line 446
    :cond_0
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return v1
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
    .locals 6

    .line 201
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 203
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Lorg/apache/commons/collections/StaticBucketMap$Node;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    .line 210
    iput-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 211
    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 212
    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v2, p1, v0

    .line 213
    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 214
    monitor-exit v1

    return-object v3

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v2, :cond_3

    .line 224
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v4, p1, :cond_2

    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    goto :goto_0

    .line 226
    :cond_2
    :goto_1
    iget-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 227
    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 228
    monitor-exit v1

    return-object p1

    .line 234
    :cond_3
    new-instance v2, Lorg/apache/commons/collections/StaticBucketMap$Node;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    .line 235
    iput-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 236
    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 237
    iput-object v2, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 238
    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 239
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .line 342
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 344
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 347
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 356
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 358
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 365
    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_1

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 371
    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    iget-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v3, p1, v0

    goto :goto_2

    .line 376
    :cond_2
    iget-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object p1, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 378
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget v0, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 379
    iget-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    .line 385
    :cond_3
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 188
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 190
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 326
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method
