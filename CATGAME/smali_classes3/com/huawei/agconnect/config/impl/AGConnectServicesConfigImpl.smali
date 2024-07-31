.class public Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;
.super Lcom/huawei/agconnect/config/AGConnectServicesConfig;
.source "AGConnectServicesConfigImpl.java"


# static fields
.field private static final PATH_SEPARATOR:C = '/'


# instance fields
.field private volatile mConfigReader:Lcom/huawei/agconnect/config/impl/ConfigReader;

.field private final mConfigReaderLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mLazyInput:Lcom/huawei/agconnect/config/LazyInputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mConfigReaderLock:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private static fixPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2f

    if-lez v1, :cond_0

    .line 120
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static newLazyInputStream(Landroid/content/Context;Ljava/io/InputStream;)Lcom/huawei/agconnect/config/LazyInputStream;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;

    .line 93
    new-instance v0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl$1;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 50
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_3

    .line 67
    iget-object v0, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mConfigReader:Lcom/huawei/agconnect/config/impl/ConfigReader;

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mConfigReaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mConfigReader:Lcom/huawei/agconnect/config/impl/ConfigReader;

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mLazyInput:Lcom/huawei/agconnect/config/LazyInputStream;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mLazyInput:Lcom/huawei/agconnect/config/LazyInputStream;

    invoke-virtual {v1}, Lcom/huawei/agconnect/config/LazyInputStream;->loadInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 72
    .local v1, "input":Ljava/io/InputStream;
    new-instance v2, Lcom/huawei/agconnect/config/impl/InputStreamReader;

    invoke-direct {v2, v1}, Lcom/huawei/agconnect/config/impl/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mConfigReader:Lcom/huawei/agconnect/config/impl/ConfigReader;

    .line 73
    iget-object v2, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mLazyInput:Lcom/huawei/agconnect/config/LazyInputStream;

    invoke-virtual {v2}, Lcom/huawei/agconnect/config/LazyInputStream;->close()V

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mLazyInput:Lcom/huawei/agconnect/config/LazyInputStream;

    .line 75
    .end local v1    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;

    iget-object v2, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mConfigReader:Lcom/huawei/agconnect/config/impl/ConfigReader;

    .line 79
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fixed":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mConfigReader:Lcom/huawei/agconnect/config/impl/ConfigReader;

    invoke-interface {v1, v0, p2}, Lcom/huawei/agconnect/config/impl/ConfigReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    .end local v0    # "fixed":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overlayWith(Lcom/huawei/agconnect/config/LazyInputStream;)V
    .locals 0
    .param p1, "input"    # Lcom/huawei/agconnect/config/LazyInputStream;

    .line 103
    iput-object p1, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mLazyInput:Lcom/huawei/agconnect/config/LazyInputStream;

    .line 104
    return-void
.end method

.method public overlayWith(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .line 89
    iget-object v0, p0, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->newLazyInputStream(Landroid/content/Context;Ljava/io/InputStream;)Lcom/huawei/agconnect/config/LazyInputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/agconnect/config/impl/AGConnectServicesConfigImpl;->overlayWith(Lcom/huawei/agconnect/config/LazyInputStream;)V

    .line 90
    return-void
.end method
