.class public Lorg/apache/commons/collections4/properties/SortedProperties;
.super Ljava/util/Properties;
.source "SortedProperties.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/properties/SortedProperties;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 44
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 46
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    nop

    .end local v3    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 48
    .end local p0    # "this":Lorg/apache/commons/collections4/properties/SortedProperties;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 49
    new-instance v2, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;-><init>(Ljava/util/Iterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 42
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
