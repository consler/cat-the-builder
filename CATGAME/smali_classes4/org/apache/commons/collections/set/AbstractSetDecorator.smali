.class public abstract Lorg/apache/commons/collections/set/AbstractSetDecorator;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractSetDecorator.java"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>()V

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .param p1, "set"    # Ljava/util/Set;

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected getSet()Ljava/util/Set;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSetDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
