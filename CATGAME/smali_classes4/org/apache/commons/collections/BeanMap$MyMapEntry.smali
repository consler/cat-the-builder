.class public Lorg/apache/commons/collections/BeanMap$MyMapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;
.source "BeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/BeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyMapEntry"
.end annotation


# instance fields
.field private owner:Lorg/apache/commons/collections/BeanMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/BeanMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "owner"    # Lorg/apache/commons/collections/BeanMap;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 661
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    .line 663
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 672
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 673
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 675
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v2, v0, p1}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 677
    .local v2, "newValue":Ljava/lang/Object;
    invoke-super {p0, v2}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    return-object v1
.end method
