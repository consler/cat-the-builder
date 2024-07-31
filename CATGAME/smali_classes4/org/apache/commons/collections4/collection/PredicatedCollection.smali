.class public Lorg/apache/commons/collections4/collection/PredicatedCollection;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "PredicatedCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x48fc5e4b3b8f598aL


# instance fields
.field protected final predicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection;, "Lorg/apache/commons/collections4/collection/PredicatedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 125
    if-eqz p2, :cond_1

    .line 128
    iput-object p2, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 131
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 132
    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Predicate must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 78
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;-><init>(Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public static notNullBuilder()Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;

    invoke-static {}, Lorg/apache/commons/collections4/functors/NotNullPredicate;->notNullPredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;-><init>(Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method public static predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/collection/PredicatedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/collection/PredicatedCollection<",
            "TT;>;"
        }
    .end annotation

    .line 108
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    new-instance v0, Lorg/apache/commons/collections4/collection/PredicatedCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection;, "Lorg/apache/commons/collections4/collection/PredicatedCollection<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection;, "Lorg/apache/commons/collections4/collection/PredicatedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 178
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected validate(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection;, "Lorg/apache/commons/collections4/collection/PredicatedCollection<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add Object \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' - Predicate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' rejected it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
