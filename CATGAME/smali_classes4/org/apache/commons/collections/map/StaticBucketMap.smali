.class public final Lorg/apache/commons/collections/map/StaticBucketMap;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/StaticBucketMap$Values;,
        Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;,
        Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;,
        Lorg/apache/commons/collections/map/StaticBucketMap$KeyIterator;,
        Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;,
        Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;,
        Lorg/apache/commons/collections/map/StaticBucketMap$Lock;,
        Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUCKETS:I = 0xff


# instance fields
.field private buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

.field private locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xff

    .line 117
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/map/StaticBucketMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 131
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 134
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 138
    :cond_0
    new-array v0, p1, [Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    .line 139
    new-array v0, p1, [Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    iput-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    new-instance v2, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/commons/collections/map/StaticBucketMap;Ljava/lang/Object;)I
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 695
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v0, v0, p2

    monitor-enter v0

    add-int/lit8 p2, p2, 0x1

    .line 699
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 700
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

    .line 164
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

    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

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

    .line 689
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 690
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public clear()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 399
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 400
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    .line 401
    monitor-enter v2

    .line 402
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 403
    iput v0, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    .line 404
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

    .line 231
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 233
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 237
    iget-object v2, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_0

    .line 238
    :cond_1
    :goto_1
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    .line 243
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

    .line 254
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 255
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    monitor-enter v2

    .line 256
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v3, v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 259
    iget-object v4, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eq v4, p1, :cond_1

    iget-object v4, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 263
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_1

    .line 260
    :cond_1
    :goto_2
    monitor-exit v2

    const/4 p1, 0x1

    return p1

    .line 265
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

    .line 376
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 418
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 421
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 422
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 208
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 210
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 214
    iget-object v2, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_0

    .line 215
    :cond_1
    :goto_1
    iget-object p1, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    .line 220
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

.method public hashCode()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 433
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 434
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 438
    invoke-virtual {v3}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 439
    iget-object v3, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_1

    .line 441
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

.method public isEmpty()Z
    .locals 1

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap;->size()I

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

    .line 358
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 279
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 281
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 285
    new-instance v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    .line 286
    iput-object p1, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 287
    iput-object p2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 288
    iget-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aput-object v2, p1, v0

    .line 289
    iget-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget p2, p1, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    .line 290
    monitor-exit v1

    return-object v3

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v2, :cond_3

    .line 299
    iget-object v4, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v4, p1, :cond_2

    iget-object v4, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    iget-object v4, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    goto :goto_0

    .line 300
    :cond_2
    :goto_1
    iget-object p1, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 301
    iput-object p2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 302
    monitor-exit v1

    return-object p1

    .line 308
    :cond_3
    new-instance v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    .line 309
    iput-object p1, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 310
    iput-object p2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 311
    iput-object v2, v4, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    .line 312
    iget-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget p2, p1, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    .line 313
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

    .line 387
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 389
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 391
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 324
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 326
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 331
    iget-object v5, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_1

    iget-object v5, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 335
    iget-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    iget-object v3, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aput-object v3, p1, v0

    goto :goto_2

    .line 338
    :cond_2
    iget-object p1, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    iput-object p1, v4, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    .line 340
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object p1, p1, v0

    iget v0, p1, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    .line 341
    iget-object p1, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    .line 347
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
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 184
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 185
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v3, v3, v0

    iget v3, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/2addr v1, v3

    .line 187
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 367
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method
