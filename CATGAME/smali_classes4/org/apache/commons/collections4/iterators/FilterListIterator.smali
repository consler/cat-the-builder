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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 77
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    .local p1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 87
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 88
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    .local p1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TE;>;"
    .local p2, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 98
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 99
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 100
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 67
    iput v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    .line 110
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 111
    return-void
.end method

.method private clearNextObject()V
    .locals 1

    .line 222
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 224
    return-void
.end method

.method private clearPreviousObject()V
    .locals 1

    .line 254
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 256
    return-void
.end method

.method private setNextObject()Z
    .locals 3

    .line 231
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    if-nez v0, :cond_2

    .line 240
    return v1

    .line 242
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    .line 247
    return v1

    .line 249
    .end local v0    # "object":Ljava/lang/Object;, "TE;"
    :cond_3
    goto :goto_0

    .line 250
    :cond_4
    return v1
.end method

.method private setPreviousObject()Z
    .locals 3

    .line 263
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    .line 265
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return v1

    .line 268
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    .line 271
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    if-nez v0, :cond_2

    .line 272
    return v1

    .line 274
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->previousObjectSet:Z

    .line 279
    return v1

    .line 281
    .end local v0    # "object":Ljava/lang/Object;, "TE;"
    :cond_3
    goto :goto_0

    .line 282
    :cond_4
    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.add(Object) is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
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
    .local v0, "temp":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearNextObject()V

    .line 141
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
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
    .local v0, "temp":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterListIterator;->clearPreviousObject()V

    .line 157
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 162
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 168
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.remove() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.set(Object) is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    .local p1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 199
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterListIterator;, "Lorg/apache/commons/collections4/iterators/FilterListIterator<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 218
    return-void
.end method
