.class public abstract Lcom/huawei/updatesdk/a/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const-string v3, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const-string v4, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v6, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v7, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/a/a/a/c;->a:[Ljava/lang/String;

    const-string v1, "TEA"

    const-string v2, "SHA0"

    const-string v3, "MD2"

    const-string v4, "MD4"

    const-string v5, "RIPEMD"

    const-string v6, "aNULL"

    const-string v7, "eNULL"

    const-string v8, "RC4"

    const-string v9, "DES"

    const-string v10, "DESX"

    const-string v11, "DES40"

    const-string v12, "RC2"

    const-string v13, "MD5"

    const-string v14, "ANON"

    const-string v15, "NULL"

    const-string v16, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const-string v17, "TLS_RSA"

    const-string v18, "SSL_RSA"

    const-string v19, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/a/a/a/c;->b:[Ljava/lang/String;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v3, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const-string v4, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v5, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const-string v6, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v7, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const-string v8, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const-string v9, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const-string v10, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const-string v11, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v12, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v13, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v14, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v15, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const-string v16, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const-string v17, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v18, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const-string v19, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const-string v20, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/a/a/a/c;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "TLSv1.3"

    :goto_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const-string v0, "TLSv1.2"

    goto :goto_0

    :cond_1
    const-string v0, "TLS"

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static a(Ljavax/net/ssl/SSLSocket;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "TLSv1.2"

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    const-string v0, "TLSv1.3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    const-string v0, "TLSv1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static a(Ljavax/net/ssl/SSLSocket;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public static b(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/a/c;->a(Ljavax/net/ssl/SSLSocket;)V

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/a/c;->c(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method private static b(Ljavax/net/ssl/SSLSocket;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-nez v6, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static c(Ljavax/net/ssl/SSLSocket;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    sget-object v2, Lcom/huawei/updatesdk/a/a/a/c;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/huawei/updatesdk/a/a/a/c;->b:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/huawei/updatesdk/a/a/a/c;->c:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/huawei/updatesdk/a/a/a/c;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/huawei/updatesdk/a/a/a/c;->b:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/huawei/updatesdk/a/a/a/c;->c:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-static {p0, v0}, Lcom/huawei/updatesdk/a/a/a/c;->a(Ljavax/net/ssl/SSLSocket;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v1}, Lcom/huawei/updatesdk/a/a/a/c;->b(Ljavax/net/ssl/SSLSocket;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
