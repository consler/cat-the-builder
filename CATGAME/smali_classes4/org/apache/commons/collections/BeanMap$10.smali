.class Lorg/apache/commons/collections/BeanMap$10;
.super Ljava/lang/Object;
.source "BeanMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/BeanMap;

.field private final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BeanMap;Ljava/util/Iterator;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap$10;->this$0:Lorg/apache/commons/collections/BeanMap;

    iput-object p2, p0, Lorg/apache/commons/collections/BeanMap$10;->val$iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap$10;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 484
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap$10;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap$10;->this$0:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported for BeanMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
