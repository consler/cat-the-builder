.class public Lcom/thoughtworks/xstream/core/util/WeakCache;
.super Ljava/util/AbstractMap;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    return-void
.end method

.method private iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 156
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-interface {p1, v2}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 163
    :cond_3
    invoke-interface {p1, v3}, Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;->visit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 78
    new-instance v0, Lcom/thoughtworks/xstream/core/util/WeakCache$1;

    invoke-direct {v0, p0, p1}, Lcom/thoughtworks/xstream/core/util/WeakCache$1;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 85
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method protected createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/thoughtworks/xstream/core/util/WeakCache$4;

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$4;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Set;)V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    .line 94
    new-instance v2, Lcom/thoughtworks/xstream/core/util/WeakCache$2;

    invoke-direct {v2, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$2;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;[I)V

    invoke-direct {p0, v2, v1}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lcom/thoughtworks/xstream/core/util/WeakCache$3;

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/core/util/WeakCache$3;-><init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/core/util/WeakCache;->iterate(Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
