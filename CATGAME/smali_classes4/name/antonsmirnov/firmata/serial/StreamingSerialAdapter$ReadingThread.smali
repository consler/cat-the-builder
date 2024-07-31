.class Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;
.super Ljava/lang/Thread;
.source "StreamingSerialAdapter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;


# direct methods
.method public constructor <init>(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    invoke-virtual {p0, p0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 65
    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 72
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->access$000(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->access$100(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 74
    .local v1, "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    invoke-interface {v1, p1}, Lname/antonsmirnov/firmata/serial/ISerialListener;->onException(Ljava/lang/Throwable;)V

    .end local v1    # "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    :goto_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->access$000(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->access$200(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->access$100(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/serial/ISerialListener;

    .line 83
    .local v1, "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    iget-object v2, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-interface {v1, v2}, Lname/antonsmirnov/firmata/serial/ISerialListener;->onDataReceived(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "eachListener":Lname/antonsmirnov/firmata/serial/ISerialListener;
    goto :goto_1

    .line 87
    :cond_0
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->handleException(Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->this$0:Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;

    invoke-static {v0}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;->access$200(Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    :goto_2
    nop

    .line 93
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 68
    invoke-direct {p0, p2}, Lname/antonsmirnov/firmata/serial/StreamingSerialAdapter$ReadingThread;->handleException(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
