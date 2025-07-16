.class Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "BoundedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/buffer/BoundedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyingIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/buffer/BoundedBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/buffer/BoundedBuffer;Ljava/util/Iterator;)V
    .locals 0

    .line 184
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 183
    iput-object p1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;->this$0:Lorg/apache/commons/collections/buffer/BoundedBuffer;

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;->this$0:Lorg/apache/commons/collections/buffer/BoundedBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->access$000(Lorg/apache/commons/collections/buffer/BoundedBuffer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 190
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;->this$0:Lorg/apache/commons/collections/buffer/BoundedBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->access$100(Lorg/apache/commons/collections/buffer/BoundedBuffer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
