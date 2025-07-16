.class Lorg/apache/commons/collections/MultiHashMap$ValueIterator;
.super Ljava/lang/Object;
.source "MultiHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/MultiHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation


# instance fields
.field private backedIterator:Ljava/util/Iterator;

.field private tempIterator:Ljava/util/Iterator;

.field private final synthetic this$0:Lorg/apache/commons/collections/MultiHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/MultiHashMap;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->this$0:Lorg/apache/commons/collections/MultiHashMap;

    .line 423
    invoke-virtual {p1}, Lorg/apache/commons/collections/MultiHashMap;->superValuesIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->backedIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/MultiHashMap;Lorg/apache/commons/collections/MultiHashMap$1;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;-><init>(Lorg/apache/commons/collections/MultiHashMap;)V

    return-void
.end method

.method private searchNextIterator()Z
    .locals 1

    .line 427
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->backedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 431
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->backedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 437
    invoke-direct {p0}, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->searchNextIterator()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 441
    invoke-direct {p0}, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->searchNextIterator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 442
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
