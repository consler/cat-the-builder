.class public Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;
.source "PredicatedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/PredicatedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PredicatedListIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/list/PredicatedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/PredicatedList;Ljava/util/ListIterator;)V
    .locals 0

    .line 146
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    .line 145
    iput-object p1, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections/list/PredicatedList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections/list/PredicatedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->access$000(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections/list/PredicatedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->access$100(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
