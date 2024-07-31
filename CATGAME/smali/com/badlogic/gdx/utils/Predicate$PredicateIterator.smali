.class public Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredicateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public end:Z

.field public iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public peeked:Z

.field public predicate:Lcom/badlogic/gdx/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;-><init>(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    .line 32
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 41
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 58
    :cond_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "n":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->predicate:Lcom/badlogic/gdx/utils/Predicate;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/utils/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 63
    return v2

    .line 65
    .end local v0    # "n":Ljava/lang/Object;, "TT;"
    :cond_2
    goto :goto_0

    .line 66
    :cond_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    .line 67
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 74
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    .line 76
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 81
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot remove between a call to hasNext() and next()."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 45
    return-void
.end method

.method public set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;, "Lcom/badlogic/gdx/utils/Predicate$PredicateIterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    .line 49
    iput-object p2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->predicate:Lcom/badlogic/gdx/utils/Predicate;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    .line 52
    return-void
.end method
