.class Lorg/apache/commons/collections/MultiHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "MultiHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/MultiHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/MultiHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/MultiHashMap;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/MultiHashMap$Values;->this$0:Lorg/apache/commons/collections/MultiHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/MultiHashMap;Lorg/apache/commons/collections/MultiHashMap$1;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/MultiHashMap$Values;-><init>(Lorg/apache/commons/collections/MultiHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$Values;->this$0:Lorg/apache/commons/collections/MultiHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/MultiHashMap;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 396
    new-instance v0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/MultiHashMap$Values;->this$0:Lorg/apache/commons/collections/MultiHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;-><init>(Lorg/apache/commons/collections/MultiHashMap;Lorg/apache/commons/collections/MultiHashMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 3

    .line 401
    invoke-virtual {p0}, Lorg/apache/commons/collections/MultiHashMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 402
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
