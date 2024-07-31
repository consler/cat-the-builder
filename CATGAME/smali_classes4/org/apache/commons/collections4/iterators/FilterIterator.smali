.class public Lorg/apache/commons/collections4/iterators/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 60
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .local p2, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 72
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 73
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 74
    return-void
.end method

.method private setNextObject()Z
    .locals 2

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 179
    return v1

    .line 181
    .end local v0    # "object":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

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

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterIterator;->setNextObject()Z

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

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 102
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() cannot be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 145
    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/iterators/FilterIterator;, "Lorg/apache/commons/collections4/iterators/FilterIterator<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->nextObjectSet:Z

    .line 166
    return-void
.end method
