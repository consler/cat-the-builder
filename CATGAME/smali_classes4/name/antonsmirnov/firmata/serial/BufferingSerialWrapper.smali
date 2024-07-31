.class public Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;
.super Ljava/lang/Object;
.source "BufferingSerialWrapper.java"

# interfaces
.implements Lname/antonsmirnov/firmata/serial/ISerial;
.implements Lname/antonsmirnov/firmata/serial/ISerialListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcreteSerialImpl:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/serial/ISerial;",
        "Lname/antonsmirnov/firmata/serial/ISerialListener<",
        "TConcreteSerialImpl;>;"
    }
.end annotation


# instance fields
.field private buffer:Lname/antonsmirnov/firmata/serial/IByteBuffer;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/serial/ISerialListener;",
            ">;"
        }
    .end annotation
.end field

.field private readingThread:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<",
            "TConcreteSerialImpl;>.BufferReadingThread;"
        }
    .end annotation
.end field

.field private serial:Lname/antonsmirnov/firmata/serial/ISerial;

.field private shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private threadPriority:I


# direct methods
.method public constructor <init>(Lname/antonsmirnov/firmata/serial/ISerial;Lname/antonsmirnov/firmata/serial/IByteBuffer;)V
    .locals 1
    .param p1, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .param p2, "buffer"    # Lname/antonsmirnov/firmata/serial/IByteBuffer;

    .line 32
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->threadPriority:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->listeners:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    .line 34
    invoke-interface {p1, p0}, Lname/antonsmirnov/firmata/serial/ISerial;->addListener(Lname/antonsmirnov/firmata/serial/ISerialListener;)V

    .line 36
    iput-object p2, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->buffer:Lname/antonsmirnov/firmata/serial/IByteBuffer;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;

    .line 11
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;

    .line 11
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->listeners:Ljava/util/List;

    return-object v0
.end method

.method private startReadingThread()V
    .locals 2

    .line 83
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    new-instance v0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;-><init>(Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$1;)V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->readingThread:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;

    .line 84
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->readingThread:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;->start()V

    .line 86
    return-void
.end method

.method private stopReadingThread()V
    .locals 2

    .line 100
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->readingThread:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->readingThread:Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper$BufferReadingThread;

    .line 106
    return-void
.end method


# virtual methods
.method public addListener(Lname/antonsmirnov/firmata/serial/ISerialListener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 46
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public available()I
    .locals 1

    .line 40
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->buffer:Lname/antonsmirnov/firmata/serial/IByteBuffer;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/serial/IByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 109
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->buffer:Lname/antonsmirnov/firmata/serial/IByteBuffer;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/serial/IByteBuffer;->clear()V

    .line 110
    return-void
.end method

.method public getShouldStop()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 62
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    .line 18
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->threadPriority:I

    return v0
.end method

.method public isStopping()Z
    .locals 1

    .line 96
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteSerialImpl;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    .local p1, "serialImpl":Ljava/lang/Object;, "TConcreteSerialImpl;"
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->buffer:Lname/antonsmirnov/firmata/serial/IByteBuffer;

    iget-object v1, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v1}, Lname/antonsmirnov/firmata/serial/ISerial;->read()I

    move-result v1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lname/antonsmirnov/firmata/serial/IByteBuffer;->add(B)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lname/antonsmirnov/firmata/serial/SerialException;
    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->onException(Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "e":Lname/antonsmirnov/firmata/serial/SerialException;
    :goto_0
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 134
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 135
    .local v1, "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    invoke-interface {v1, p1}, Lname/antonsmirnov/firmata/serial/ISerialListener;->onException(Ljava/lang/Throwable;)V

    .end local v1    # "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public read()I
    .locals 1

    .line 113
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->buffer:Lname/antonsmirnov/firmata/serial/IByteBuffer;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/serial/IByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public removeListener(Lname/antonsmirnov/firmata/serial/ISerialListener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 50
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 0
    .param p1, "threadPriority"    # I

    .line 27
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iput p1, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->threadPriority:I

    .line 28
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 54
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    invoke-direct {p0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->startReadingThread()V

    .line 55
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/serial/ISerial;->start()V

    .line 56
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 89
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    invoke-direct {p0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->stopReadingThread()V

    .line 90
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/serial/ISerial;->stop()V

    .line 92
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->clear()V

    .line 93
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "outcomingByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 117
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 118
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "outcomingBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;, "Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper<TConcreteSerialImpl;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/BufferingSerialWrapper;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/serial/ISerial;->write([B)V

    .line 122
    return-void
.end method
