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

    .line 661
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 672
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 675
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v2, v0, p1}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-object p1, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 677
    invoke-super {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
