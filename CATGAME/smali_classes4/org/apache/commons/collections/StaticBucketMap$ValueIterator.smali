.class Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;
.super Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 547
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    iput-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;-><init>(Lorg/apache/commons/collections/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
