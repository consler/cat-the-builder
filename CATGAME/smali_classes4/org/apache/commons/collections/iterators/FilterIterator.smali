.class public Lorg/apache/commons/collections/iterators/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private nextObject:Ljava/lang/Object;

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    .line 78
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 79
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private setNextObject()Z
    .locals 2

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 94
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    .line 108
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    .line 113
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() cannot be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method
