.class public Lcom/amitshekhar/DebugDB;
.super Ljava/lang/Object;
.source "DebugDB.java"


# static fields
.field private static final DEFAULT_PORT:I = 0x1f90

.field private static final TAG:Ljava/lang/String;

.field private static addressLog:Ljava/lang/String;

.field private static clientServer:Lcom/amitshekhar/server/ClientServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amitshekhar/DebugDB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amitshekhar/DebugDB;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, "not available"

    sput-object v0, Lcom/amitshekhar/DebugDB;->addressLog:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getAddressLog()Ljava/lang/String;
    .locals 2

    .line 67
    sget-object v0, Lcom/amitshekhar/DebugDB;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/amitshekhar/DebugDB;->addressLog:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/amitshekhar/DebugDB;->addressLog:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/amitshekhar/sqlite/DBFactory;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbFactory"    # Lcom/amitshekhar/sqlite/DBFactory;

    .line 53
    :try_start_0
    sget v0, Lcom/amitshekhar/R$string;->PORT_NUMBER:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v0, "portNumber":I
    goto :goto_0

    .line 54
    .end local v0    # "portNumber":I
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/amitshekhar/DebugDB;->TAG:Ljava/lang/String;

    const-string v2, "PORT_NUMBER should be integer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/16 v1, 0x1f90

    .line 57
    .local v1, "portNumber":I
    sget-object v2, Lcom/amitshekhar/DebugDB;->TAG:Ljava/lang/String;

    const-string v3, "Using Default port : 8080"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 60
    .end local v1    # "portNumber":I
    .local v0, "portNumber":I
    :goto_0
    new-instance v1, Lcom/amitshekhar/server/ClientServer;

    invoke-direct {v1, p0, v0, p1}, Lcom/amitshekhar/server/ClientServer;-><init>(Landroid/content/Context;ILcom/amitshekhar/sqlite/DBFactory;)V

    sput-object v1, Lcom/amitshekhar/DebugDB;->clientServer:Lcom/amitshekhar/server/ClientServer;

    .line 61
    invoke-virtual {v1}, Lcom/amitshekhar/server/ClientServer;->start()V

    .line 62
    invoke-static {p0, v0}, Lcom/amitshekhar/utils/NetworkUtils;->getAddressLog(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amitshekhar/DebugDB;->addressLog:Ljava/lang/String;

    .line 63
    sget-object v2, Lcom/amitshekhar/DebugDB;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static isServerRunning()Z
    .locals 1

    .line 91
    sget-object v0, Lcom/amitshekhar/DebugDB;->clientServer:Lcom/amitshekhar/server/ClientServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amitshekhar/server/ClientServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setCustomDatabaseFiles(Ljava/util/HashMap;)V
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

    .line 79
    .local p0, "customDatabaseFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/io/File;Ljava/lang/String;>;>;"
    sget-object v0, Lcom/amitshekhar/DebugDB;->clientServer:Lcom/amitshekhar/server/ClientServer;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p0}, Lcom/amitshekhar/server/ClientServer;->setCustomDatabaseFiles(Ljava/util/HashMap;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static setInMemoryRoomDatabases(Ljava/util/HashMap;)V
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

    .line 85
    .local p0, "databases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;>;"
    sget-object v0, Lcom/amitshekhar/DebugDB;->clientServer:Lcom/amitshekhar/server/ClientServer;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p0}, Lcom/amitshekhar/server/ClientServer;->setInMemoryRoomDatabases(Ljava/util/HashMap;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static shutDown()V
    .locals 1

    .line 72
    sget-object v0, Lcom/amitshekhar/DebugDB;->clientServer:Lcom/amitshekhar/server/ClientServer;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/amitshekhar/server/ClientServer;->stop()V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/amitshekhar/DebugDB;->clientServer:Lcom/amitshekhar/server/ClientServer;

    .line 76
    :cond_0
    return-void
.end method
