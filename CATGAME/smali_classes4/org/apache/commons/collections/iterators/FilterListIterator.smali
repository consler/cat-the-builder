.class public Lorg/apache/commons/collections/iterators/FilterListIterator;
.super Ljava/lang/Object;
.source "FilterListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private nextIndex:I

.field private nextObject:Ljava/lang/Object;

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections/Predicate;

.field private previousObject:Ljava/lang/Object;

.field private previousObjectSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 65
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 70
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 65
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 70
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 90
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;Lorg/apache/commons/collections/Predicate;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 65
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 70
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 101
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 102
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 65
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 70
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 113
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private clearNextObject()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    return-void
.end method

.method private clearPreviousObject()V
    .locals 1

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    return-void
.end method

.method private setNextObject()Z
    .locals 3

    .line 230
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    .line 232
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 235
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 241
    iget-object v2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    return v0

    :cond_2
    return v1
.end method

.method private setPreviousObject()Z
    .locals 3

    .line 260
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    .line 262
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 265
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.add(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getListIterator()Ljava/util/ListIterator;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    .line 140
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 144
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 145
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 151
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 160
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 161
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.remove() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.set(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListIterator(Ljava/util/ListIterator;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method
