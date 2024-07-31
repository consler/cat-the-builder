.class public final Lcom/squareup/picasso/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lcom/squareup/picasso/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/LruCache$BitmapAndSize;
    }
.end annotation


# instance fields
.field final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/LruCache$BitmapAndSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxByteCount"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/squareup/picasso/LruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/picasso/LruCache$1;-><init>(Lcom/squareup/picasso/LruCache;I)V

    iput-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->calculateMemoryCacheSize(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 76
    return-void
.end method

.method public clearKeyUri(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 84
    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method public evictionCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictionCount()I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/LruCache$BitmapAndSize;

    .line 45
    .local v0, "bitmapAndSize":Lcom/squareup/picasso/LruCache$BitmapAndSize;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/picasso/LruCache$BitmapAndSize;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hitCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->hitCount()I

    move-result v0

    return v0
.end method

.method public maxSize()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    return v0
.end method

.method public missCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->missCount()I

    move-result v0

    return v0
.end method

.method public putCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->putCount()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 49
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 53
    invoke-static {p2}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 58
    .local v0, "byteCount":I
    invoke-virtual {p0}, Lcom/squareup/picasso/LruCache;->maxSize()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    new-instance v2, Lcom/squareup/picasso/LruCache$BitmapAndSize;

    invoke-direct {v2, p2, v0}, Lcom/squareup/picasso/LruCache$BitmapAndSize;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void

    .line 50
    .end local v0    # "byteCount":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || bitmap == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method
