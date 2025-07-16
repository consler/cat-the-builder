.class public Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;
.source "PredicatedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/PredicatedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PredicatedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/list/PredicatedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections4/list/PredicatedList;

    .line 180
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections4/list/PredicatedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/list/PredicatedList;->access$000(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections4/list/PredicatedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/list/PredicatedList;->access$100(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
