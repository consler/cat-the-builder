.class Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;
.super Ljava/lang/Thread;
.source "BufferingSerialWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferReadingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;


# direct methods
.method private constructor <init>(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;)V
    .locals 0

    .line 68
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>.BufferReadingThread;"
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;
    .param p2, "x1"    # Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$1;

    .line 68
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>.BufferReadingThread;"
    invoke-direct {p0, p1}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;-><init>(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>.BufferReadingThread;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->access$000(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->access$100(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 74
    .local v1, "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    invoke-interface {v1, p0}, Lname/antonsmirnov/firmata/serial/ISerialListener;->onDataReceived(Ljava/lang/Object;)V

    .end local v1    # "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    goto :goto_1

    :cond_1
    goto :goto_0

    .line 77
    :cond_2
    return-void
.end method
