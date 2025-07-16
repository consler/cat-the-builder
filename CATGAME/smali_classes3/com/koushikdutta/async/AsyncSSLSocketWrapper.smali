.class public Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static defaultSSLContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field clientMode:Z

.field final dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field engine:Ljavax/net/ssl/SSLEngine;

.field finishedHandshake:Z

.field handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mEndException:Ljava/lang/Exception;

.field mEnded:Z

.field private mHost:Ljava/lang/String;

.field private mPort:I

.field mSink:Lcom/koushikdutta/async/BufferedDataSink;

.field mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field mUnwrapping:Z

.field private mWrapping:Z

.field mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

.field peerCertificates:[Ljava/security/cert/X509Certificate;

.field final pending:Lcom/koushikdutta/async/ByteBufferList;

.field trustManagers:[Ljavax/net/ssl/TrustManager;

.field writeList:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "Default"

    .line 63
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TLS"

    .line 67
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 68
    new-instance v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;

    invoke-direct {v2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 83
    sget-object v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 164
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 366
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    .line 128
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 129
    iput-object p6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 130
    iput-boolean p7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->clientMode:Z

    .line 131
    iput-object p5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 132
    iput-object p4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    .line 134
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    .line 135
    iput p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mPort:I

    .line 136
    invoke-virtual {p4, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 137
    new-instance p2, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    .line 138
    new-instance p1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/BufferedDataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 149
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 161
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static getDefaultSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 93
    sget-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 10

    .line 270
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 275
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 279
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 280
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-interface {p1, p0, v0}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 284
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_c

    .line 285
    :cond_3
    iget-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->clientMode:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 286
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez p1, :cond_4

    .line 288
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 289
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 290
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    .line 294
    :cond_4
    array-length v2, p1

    const/4 v3, 0x0

    move-object v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v6, p1, v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 296
    :try_start_1
    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .line 297
    iget-object v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    check-cast v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const-string v8, "SSL"

    .line 298
    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 299
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 300
    iget-object v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v7, :cond_5

    .line 301
    new-instance v6, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v6}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 302
    iget-object v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    iget-object v8, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v8, v8, v3

    invoke-static {v8}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v9, v9, v3

    invoke-static {v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_5
    iget-object v8, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 306
    :cond_6
    new-instance v5, Ljavax/net/ssl/SSLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hostname <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> has been denied"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_1
    move v3, v0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    :cond_8
    :goto_3
    :try_start_2
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-nez v3, :cond_b

    .line 322
    new-instance p1, Lcom/koushikdutta/async/AsyncSSLException;

    invoke-direct {p1, v5}, Lcom/koushikdutta/async/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    .line 324
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncSSLException;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 325
    :cond_9
    throw p1

    .line 329
    :cond_a
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    .line 331
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-interface {p1, v1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 332
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 334
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 337
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->onDataAvailable()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 354
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_3
    move-exception p1

    .line 351
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    :cond_c
    :goto_5
    return-void

    :catch_4
    move-exception p1

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static handshake(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
    .locals 10

    move-object/from16 v0, p7

    .line 101
    new-instance v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 102
    iput-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 103
    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    move-object v0, p0

    invoke-interface {p0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 113
    :try_start_0
    iget-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 114
    iget-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-direct {v9, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private report(Ljava/lang/Exception;)V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 426
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 427
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v3, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v3}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 428
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->end()V

    .line 430
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 431
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 432
    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method


# virtual methods
.method addToPending(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 246
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 247
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0

    .line 251
    :cond_0
    invoke-static {p2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method calculateAlloc(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    .line 360
    div-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    :cond_0
    return p1
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void
.end method

.method public end()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->end()V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getDataEmitter()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mPort:I

    return v0
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onDataAvailable()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 235
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    .line 495
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->onDataAvailable()V

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 6

    .line 369
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    if-eqz v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    .line 376
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 381
    :cond_2
    iget-boolean v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 383
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    .line 385
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 386
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v4, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 387
    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 388
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 389
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 391
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-lez v4, :cond_4

    .line 392
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 393
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_5

    mul-int/lit8 v0, v0, 0x2

    .line 396
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, -0x1

    goto :goto_1

    .line 400
    :cond_5
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 405
    :goto_0
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    .line 408
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v3}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    .line 409
    iput-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    .line 410
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void
.end method
