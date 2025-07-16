.class public Lorg/apache/commons/collections4/iterators/FilterListIterator;
.super Ljava/lang/Object;
.source "FilterListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private nextIndex:I

.field private nextObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private previousObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private previousObjectSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 87
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 98
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 99
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 110
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method private clearNextObject()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    return-void
.end method

.method private clearPreviousObject()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    return-void
.end method

.method private setNextObject()Z
    .locals 3

    .line 231
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    if-nez v0, :cond_2

    return v1

    .line 242
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    return v0

    :cond_3
    return v1
.end method

.method private setPreviousObject()Z
    .locals 3

    .line 263
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    .line 265
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 268
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    .line 271
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    if-nez v0, :cond_2

    return v1

    .line 274
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 276
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.add(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "+TE;>;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 138
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 140
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 154
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 156
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 162
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.remove() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.set(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListIterator(Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method
