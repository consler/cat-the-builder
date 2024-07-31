.class public Lcom/huawei/hms/framework/network/grs/c/b/c;
.super Ljavax/net/ssl/SSLSocketFactory;


# static fields
.field public static final a:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static volatile c:Lcom/huawei/hms/framework/network/grs/c/b/c;

.field private static d:[Ljava/lang/String;


# instance fields
.field private e:Ljavax/net/ssl/SSLContext;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/c;->a:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/c;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/c;->c:Lcom/huawei/hms/framework/network/grs/c/b/c;

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/c;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->e:Ljavax/net/ssl/SSLContext;

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->f:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/c/b/b;->a()Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->e:Ljavax/net/ssl/SSLContext;

    new-instance p1, Lcom/huawei/hms/framework/network/grs/c/b/d;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->f:Landroid/content/Context;

    invoke-direct {p1, v1, p2}, Lcom/huawei/hms/framework/network/grs/c/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->e:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/c/b/c;
    .locals 2

    sget-object v0, Lcom/huawei/hms/framework/network/grs/c/b/c;->c:Lcom/huawei/hms/framework/network/grs/c/b/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/huawei/hms/framework/network/grs/c/b/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/framework/network/grs/c/b/c;->c:Lcom/huawei/hms/framework/network/grs/c/b/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/framework/network/grs/c/b/c;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/framework/network/grs/c/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/framework/network/grs/c/b/c;->c:Lcom/huawei/hms/framework/network/grs/c/b/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->c:Lcom/huawei/hms/framework/network/grs/c/b/c;

    return-object p0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->e:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-static {p2}, Lcom/huawei/hms/framework/network/grs/c/b/b;->e(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/c/b/c;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/c/b/c;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/c/b/c;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c/b/c;->e:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-static {p2}, Lcom/huawei/hms/framework/network/grs/c/b/b;->e(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/hms/framework/network/grs/c/b/c;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
