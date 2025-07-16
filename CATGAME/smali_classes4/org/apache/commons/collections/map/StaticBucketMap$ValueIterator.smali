.class Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;
.super Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 540
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 543
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
