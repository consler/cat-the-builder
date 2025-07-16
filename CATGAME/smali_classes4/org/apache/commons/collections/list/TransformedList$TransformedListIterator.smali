.class public Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;
.source "TransformedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/TransformedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TransformedListIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/list/TransformedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/TransformedList;Ljava/util/ListIterator;)V
    .locals 0

    .line 137
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    .line 136
    iput-object p1, p0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;->this$0:Lorg/apache/commons/collections/list/TransformedList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;->this$0:Lorg/apache/commons/collections/list/TransformedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/list/TransformedList;->access$000(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;->this$0:Lorg/apache/commons/collections/list/TransformedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/list/TransformedList;->access$100(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
