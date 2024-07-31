.class public abstract Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;
.super Ljava/lang/Object;
.source "BaseDynaBeanMapDecorator.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final dynaBean:Lorg/apache/commons/beanutils/DynaBean;

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final readOnly:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;)V
    .locals 1
    .param p1, "dynaBean"    # Lorg/apache/commons/beanutils/DynaBean;

    .line 68
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;Z)V
    .locals 2
    .param p1, "dynaBean"    # Lorg/apache/commons/beanutils/DynaBean;
    .param p2, "readOnly"    # Z

    .line 79
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->dynaBean:Lorg/apache/commons/beanutils/DynaBean;

    .line 84
    iput-boolean p2, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->readOnly:Z

    .line 85
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynaBean is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 332
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    return-object v0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 343
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 109
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 121
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    .line 122
    .local v0, "dynaClass":Lorg/apache/commons/beanutils/DynaClass;
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 123
    .local v1, "dynaProperty":Lorg/apache/commons/beanutils/DynaProperty;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .line 136
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 137
    .local v0, "properties":[Lorg/apache/commons/beanutils/DynaProperty;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 138
    .local v4, "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 140
    .local v6, "prop":Ljava/lang/Object;
    const/4 v7, 0x1

    if-nez p1, :cond_0

    .line 141
    if-nez v6, :cond_1

    .line 142
    return v7

    .line 145
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 146
    return v7

    .line 137
    .end local v4    # "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "prop":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_2
    return v2
.end method

.method protected abstract convertKey(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 165
    .local v0, "properties":[Lorg/apache/commons/beanutils/DynaProperty;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 166
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 167
    .local v4, "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->convertKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 168
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 169
    .local v6, "value":Ljava/lang/Object;
    new-instance v7, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;

    invoke-direct {v7, v5, v6}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v4    # "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 182
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDynaBean()Lorg/apache/commons/beanutils/DynaBean;
    .locals 1

    .line 312
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->dynaBean:Lorg/apache/commons/beanutils/DynaBean;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 193
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 98
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->readOnly:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 209
    return-object v0

    .line 213
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 214
    .local v0, "properties":[Lorg/apache/commons/beanutils/DynaProperty;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 215
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 216
    .local v4, "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->convertKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v4    # "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    .line 222
    .local v2, "dynaClass":Lorg/apache/commons/beanutils/DynaClass;
    instance-of v3, v2, Lorg/apache/commons/beanutils/MutableDynaClass;

    if-nez v3, :cond_2

    .line 223
    iput-object v1, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->keySet:Ljava/util/Set;

    .line 226
    :cond_2
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "property":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    .local v1, "previous":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    return-object v1

    .line 242
    .end local v0    # "property":Ljava/lang/String;
    .end local v1    # "previous":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map is read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 262
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;*>;"
    goto :goto_0

    .line 264
    :cond_0
    return-void

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map is read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 274
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 283
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;, "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<TK;>;"
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 294
    .local v0, "properties":[Lorg/apache/commons/beanutils/DynaProperty;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 296
    .local v4, "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 298
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v4    # "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
