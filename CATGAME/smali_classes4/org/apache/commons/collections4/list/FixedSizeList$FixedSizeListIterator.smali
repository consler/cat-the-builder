.class Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;
.source "FixedSizeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/FixedSizeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedSizeListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/list/FixedSizeList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/FixedSizeList;Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>.FixedSizeListIterator;"
    .local p2, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;->this$0:Lorg/apache/commons/collections4/list/FixedSizeList;

    .line 179
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    .line 180
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 187
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>.FixedSizeListIterator;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->access$000()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;, "Lorg/apache/commons/collections4/list/FixedSizeList<TE;>.FixedSizeListIterator;"
    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->access$000()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
