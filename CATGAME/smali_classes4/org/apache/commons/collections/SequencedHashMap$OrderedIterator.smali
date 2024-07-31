.class Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;
.super Ljava/lang/Object;
.source "SequencedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/SequencedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderedIterator"
.end annotation


# instance fields
.field private transient expectedModCount:J

.field private pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

.field private returnType:I

.field private final synthetic this$0:Lorg/apache/commons/collections/SequencedHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/SequencedHashMap;I)V
    .locals 2
    .param p2, "returnType"    # I

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    .line 705
    invoke-static {p1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 712
    iget-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {p1}, Lorg/apache/commons/collections/SequencedHashMap;->access$300(Lorg/apache/commons/collections/SequencedHashMap;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    .line 731
    const/high16 p1, -0x80000000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    .line 732
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 742
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .line 757
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v0}, Lorg/apache/commons/collections/SequencedHashMap;->access$300(Lorg/apache/commons/collections/SequencedHashMap;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 760
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 765
    iget v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    .line 767
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 768
    iget v1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 774
    return-object v0

    .line 777
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad iterator type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 770
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 761
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 758
    :cond_4
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 794
    iget v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 797
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v0}, Lorg/apache/commons/collections/SequencedHashMap;->access$300(Lorg/apache/commons/collections/SequencedHashMap;)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v2}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 804
    iget-wide v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    .line 807
    iget v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    .line 808
    return-void

    .line 798
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 795
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() must follow next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
