.class public final Lorg/apache/commons/collections4/map/StaticBucketMap;
.super Lorg/apache/commons/collections4/map/AbstractIterableMap;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/StaticBucketMap$Values;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$EntrySet;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$KeyIterator;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$ValueIterator;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$EntryIterator;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractIterableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BUCKETS:I = 0xff


# instance fields
.field private final buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;-><init>(I)V

    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "numBuckets"    # I

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;-><init>()V

    .line 125
    const/16 v0, 0x11

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
    .local v0, "size":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 129
    add-int/lit8 v0, v0, -0x1

    .line 132
    :cond_0
    new-array v1, v0, [Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    .line 133
    new-array v1, v0, [Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 136
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    new-instance v3, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    aput-object v3, v2, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/StaticBucketMap;

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/StaticBucketMap;

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/commons/collections4/map/StaticBucketMap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/StaticBucketMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 97
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "bucket"    # I

    .line 728
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 729
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 730
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v0, v0, p2

    monitor-enter v0

    .line 733
    add-int/lit8 v1, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 734
    monitor-exit v0

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getHash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 159
    .local v0, "hash":I
    shl-int/lit8 v1, v0, 0xf

    not-int v1, v1

    add-int/2addr v0, v1

    .line 160
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 161
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 162
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 163
    shl-int/lit8 v1, v0, 0xb

    not-int v1, v1

    add-int/2addr v0, v1

    .line 164
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 166
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

    .line 721
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 724
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 725
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public clear()V
    .locals 4

    .line 402
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    .line 404
    .local v1, "lock":Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;
    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 406
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    .line 407
    monitor-exit v1

    .line 402
    .end local v1    # "lock":Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .restart local v1    # "lock":Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 409
    .end local v0    # "i":I
    .end local v1    # "lock":Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 229
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 231
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 234
    .local v2, "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 235
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-object v2, v3

    goto :goto_0

    .line 236
    :cond_1
    :goto_1
    const/4 v3, 0x1

    monitor-exit v1

    return v3

    .line 241
    .end local v2    # "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :cond_2
    monitor-exit v1

    .line 242
    const/4 v1, 0x0

    return v1

    .line 241
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

    .line 253
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 254
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 257
    .local v2, "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_2

    .line 258
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 262
    :cond_0
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-object v2, v3

    goto :goto_1

    .line 259
    :cond_1
    :goto_2
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 264
    .end local v2    # "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :cond_2
    monitor-exit v1

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 266
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 419
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 420
    const/4 v0, 0x1

    return v0

    .line 422
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 423
    const/4 v0, 0x0

    return v0

    .line 425
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 426
    .local v0, "other":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->entrySet()Ljava/util/Set;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 207
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 210
    .local v2, "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 211
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-object v2, v3

    goto :goto_0

    .line 212
    :cond_1
    :goto_1
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object v3

    .line 217
    .end local v2    # "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :cond_2
    monitor-exit v1

    .line 218
    const/4 v1, 0x0

    return-object v1

    .line 217
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hashCode()I
    .locals 5

    .line 436
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 438
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 439
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    monitor-enter v2

    .line 440
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aget-object v3, v3, v1

    .line 442
    .local v3, "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {v3}, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    .line 444
    iget-object v4, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-object v3, v4

    goto :goto_1

    .line 446
    .end local v3    # "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :cond_0
    monitor-exit v2

    .line 438
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

.method public isEmpty()Z
    .locals 1

    .line 194
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->size()I

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 281
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 284
    .local v2, "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 285
    new-instance v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    move-object v2, v4

    .line 286
    iput-object p1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 287
    iput-object p2, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 288
    iget-object v4, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aput-object v2, v4, v0

    .line 289
    iget-object v4, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v4, v4, v0

    iget v5, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    .line 290
    monitor-exit v1

    return-object v3

    .line 296
    :cond_0
    move-object v4, v2

    .local v4, "next":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 297
    move-object v2, v4

    .line 299
    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_2

    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    iget-object v5, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-object v4, v5

    goto :goto_0

    .line 300
    :cond_2
    :goto_1
    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 301
    .local v3, "returnVal":Ljava/lang/Object;, "TV;"
    iput-object p2, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 302
    monitor-exit v1

    return-object v3

    .line 308
    .end local v3    # "returnVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "next":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :cond_3
    new-instance v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    .line 309
    .local v4, "newNode":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    iput-object p1, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 310
    iput-object p2, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 311
    iput-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    .line 312
    iget-object v5, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v5, v5, v0

    iget v6, v5, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    .line 313
    .end local v2    # "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    .end local v4    # "newNode":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    monitor-exit v1

    .line 314
    return-object v3

    .line 313
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 393
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 327
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aget-object v2, v2, v0

    .line 329
    .local v2, "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    .line 331
    .local v3, "prev":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_3

    .line 332
    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v4, p1, :cond_1

    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    move-object v3, v2

    .line 346
    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-object v2, v4

    goto :goto_0

    .line 334
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 336
    iget-object v4, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    aput-object v5, v4, v0

    goto :goto_2

    .line 339
    :cond_2
    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    iput-object v4, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    .line 341
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v4, v4, v0

    iget v5, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    .line 342
    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object v4

    .line 348
    .end local v2    # "n":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    .end local v3    # "prev":Lorg/apache/commons/collections4/map/StaticBucketMap$Node;, "Lorg/apache/commons/collections4/map/StaticBucketMap$Node<TK;TV;>;"
    :cond_3
    monitor-exit v1

    .line 349
    const/4 v1, 0x0

    return-object v1

    .line 348
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()I
    .locals 4

    .line 177
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 179
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 180
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;->size:I

    add-int/2addr v0, v3

    .line 182
    monitor-exit v2

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 184
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lorg/apache/commons/collections4/map/StaticBucketMap;, "Lorg/apache/commons/collections4/map/StaticBucketMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    return-object v0
.end method
