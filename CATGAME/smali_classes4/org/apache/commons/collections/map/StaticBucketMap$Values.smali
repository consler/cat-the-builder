.class Lorg/apache/commons/collections/map/StaticBucketMap$Values;
.super Ljava/util/AbstractCollection;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V
    .locals 0

    .line 637
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 648
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 640
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
