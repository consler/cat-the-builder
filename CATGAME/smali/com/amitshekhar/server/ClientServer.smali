.class public Lcom/amitshekhar/server/ClientServer;
.super Ljava/lang/Object;
.source "ClientServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientServer"


# instance fields
.field private mIsRunning:Z

.field private final mPort:I

.field private final mRequestHandler:Lcom/amitshekhar/server/RequestHandler;

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/amitshekhar/sqlite/DBFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "port"    # I
    .param p3, "dbFactory"    # Lcom/amitshekhar/sqlite/DBFactory;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/amitshekhar/server/RequestHandler;

    invoke-direct {v0, p1, p3}, Lcom/amitshekhar/server/RequestHandler;-><init>(Landroid/content/Context;Lcom/amitshekhar/sqlite/DBFactory;)V

    iput-object v0, p0, Lcom/amitshekhar/server/ClientServer;->mRequestHandler:Lcom/amitshekhar/server/RequestHandler;

    .line 51
    iput p2, p0, Lcom/amitshekhar/server/ClientServer;->mPort:I

    .line 52
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/amitshekhar/server/ClientServer;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 3

    .line 74
    const-string v0, "ClientServer"

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/amitshekhar/server/ClientServer;->mPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/amitshekhar/server/ClientServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 75
    :goto_0
    iget-boolean v1, p0, Lcom/amitshekhar/server/ClientServer;->mIsRunning:Z

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/amitshekhar/server/ClientServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 77
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lcom/amitshekhar/server/ClientServer;->mRequestHandler:Lcom/amitshekhar/server/RequestHandler;

    invoke-virtual {v2, v1}, Lcom/amitshekhar/server/RequestHandler;->handle(Ljava/net/Socket;)V

    .line 78
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ignore":Ljava/lang/Exception;
    const-string v2, "Exception."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 82
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Web server error."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 80
    :catch_2
    move-exception v0

    .line 86
    :cond_0
    :goto_1
    nop

    .line 87
    :goto_2
    return-void
.end method

.method public setCustomDatabaseFiles(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 90
    .local p1, "customDatabaseFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/io/File;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/amitshekhar/server/ClientServer;->mRequestHandler:Lcom/amitshekhar/server/RequestHandler;

    invoke-virtual {v0, p1}, Lcom/amitshekhar/server/RequestHandler;->setCustomDatabaseFiles(Ljava/util/HashMap;)V

    .line 91
    return-void
.end method

.method public setInMemoryRoomDatabases(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "databases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;>;"
    iget-object v0, p0, Lcom/amitshekhar/server/ClientServer;->mRequestHandler:Lcom/amitshekhar/server/RequestHandler;

    invoke-virtual {v0, p1}, Lcom/amitshekhar/server/RequestHandler;->setInMemoryRoomDatabases(Ljava/util/HashMap;)V

    .line 95
    return-void
.end method

.method public start()V
    .locals 1

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amitshekhar/server/ClientServer;->mIsRunning:Z

    .line 56
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method

.method public stop()V
    .locals 3

    .line 61
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amitshekhar/server/ClientServer;->mIsRunning:Z

    .line 62
    iget-object v0, p0, Lcom/amitshekhar/server/ClientServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/amitshekhar/server/ClientServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amitshekhar/server/ClientServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClientServer"

    const-string v2, "Error closing the server socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
