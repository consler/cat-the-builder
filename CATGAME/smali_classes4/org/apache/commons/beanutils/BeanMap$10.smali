.class Lorg/apache/commons/beanutils/BeanMap$10;
.super Ljava/util/AbstractSet;
.source "BeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/beanutils/BeanMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/beanutils/BeanMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/beanutils/BeanMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/beanutils/BeanMap;

    .line 519
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanMap$10;->this$0:Lorg/apache/commons/beanutils/BeanMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap$10;->this$0:Lorg/apache/commons/beanutils/BeanMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/BeanMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap$10;->this$0:Lorg/apache/commons/beanutils/BeanMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/BeanMap;->access$100(Lorg/apache/commons/beanutils/BeanMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
