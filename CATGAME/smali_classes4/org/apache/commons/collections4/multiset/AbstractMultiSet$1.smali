.class Lorg/apache/commons/collections4/multiset/AbstractMultiSet$1;
.super Ljava/lang/Object;
.source "AbstractMultiSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createUniqueSetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$1;->this$0:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$1;->transform(Lorg/apache/commons/collections4/MultiSet$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lorg/apache/commons/collections4/MultiSet$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 262
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
