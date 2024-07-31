.class public Lorg/apache/commons/collections4/iterators/IteratorEnumeration;
.super Ljava/lang/Object;
.source "IteratorEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorEnumeration;, "Lorg/apache/commons/collections4/iterators/IteratorEnumeration<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorEnumeration;, "Lorg/apache/commons/collections4/iterators/IteratorEnumeration<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    .line 48
    return-void
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

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorEnumeration;, "Lorg/apache/commons/collections4/iterators/IteratorEnumeration<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorEnumeration;, "Lorg/apache/commons/collections4/iterators/IteratorEnumeration<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorEnumeration;, "Lorg/apache/commons/collections4/iterators/IteratorEnumeration<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorEnumeration;, "Lorg/apache/commons/collections4/iterators/IteratorEnumeration<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    .line 94
    return-void
.end method
