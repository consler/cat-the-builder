.class public Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;
.super Ljava/lang/Object;
.source "StreamingSerialAdapter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/serial/ISerial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;
    }
.end annotation


# instance fields
.field private transient inStream:Ljava/io/InputStream;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/serial/ISerialListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient outStream:Ljava/io/OutputStream;

.field private shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private thread:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->listeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;

    .line 39
    invoke-direct {p0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->setInStream(Ljava/io/InputStream;)V

    .line 41
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->setOutStream(Ljava/io/OutputStream;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    .line 13
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    .line 13
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    .line 13
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method private checkIsStoppingOrThrow(Ljava/io/IOException;I)I
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    return p2

    .line 148
    :cond_0
    new-instance v0, Lname/antonsmirnov/firmata/serial/SerialException;

    invoke-direct {v0, p1}, Lname/antonsmirnov/firmata/serial/SerialException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private checkIsStoppingOrThrow(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->checkIsStoppingOrThrow(Ljava/io/IOException;I)I

    .line 142
    return-void
.end method


# virtual methods
.method public addListener(Lname/antonsmirnov/firmata/serial/ISerialListener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 47
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->checkIsStoppingOrThrow(Ljava/io/IOException;I)I

    move-result v1

    return v1
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 134
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->checkIsStoppingOrThrow(Ljava/io/IOException;)V

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public getInStream()Ljava/io/InputStream;
    .locals 1

    .line 19
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutStream()Ljava/io/OutputStream;
    .locals 1

    .line 27
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isStopping()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->checkIsStoppingOrThrow(Ljava/io/IOException;I)I

    move-result v1

    return v1
.end method

.method public removeListener(Lname/antonsmirnov/firmata/serial/ISerialListener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 51
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public setInStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 23
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->inStream:Ljava/io/InputStream;

    .line 24
    return-void
.end method

.method public setOutStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 31
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->outStream:Ljava/io/OutputStream;

    .line 32
    return-void
.end method

.method protected setStopReading()V
    .locals 2

    .line 117
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->thread:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    new-instance v0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;

    invoke-direct {v0, p0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;-><init>(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->thread:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;

    .line 101
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->thread:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->start()V

    .line 103
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->thread:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->setStopReading()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->thread:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;

    .line 112
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 114
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

    .line 162
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->checkIsStoppingOrThrow(Ljava/io/IOException;)V

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
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

    .line 170
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->checkIsStoppingOrThrow(Ljava/io/IOException;)V

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
