.class public abstract Lcom/huawei/hms/framework/network/grs/c/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v4, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v6, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v7, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/b;->a:[Ljava/lang/String;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v3, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const-string v4, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const-string v5, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v6, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v7, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v8, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/b;->b:[Ljava/lang/String;

    const-string v1, "TLS_RSA"

    const-string v2, "TEA"

    const-string v3, "SHA0"

    const-string v4, "MD2"

    const-string v5, "MD4"

    const-string v6, "RIPEMD"

    const-string v7, "NULL"

    const-string v8, "RC4"

    const-string v9, "DES"

    const-string v10, "DESX"

    const-string v11, "DES40"

    const-string v12, "RC2"

    const-string v13, "MD5"

    const-string v14, "ANON"

    const-string v15, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/b;->c:[Ljava/lang/String;

    const-string v1, "TEA"

    const-string v2, "SHA0"

    const-string v3, "MD2"

    const-string v4, "MD4"

    const-string v5, "RIPEMD"

    const-string v6, "NULL"

    const-string v7, "RC4"

    const-string v8, "DES"

    const-string v9, "DESX"

    const-string v10, "DES40"

    const-string v11, "RC2"

    const-string v12, "MD5"

    const-string v13, "ANON"

    const-string v14, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/b;->d:[Ljava/lang/String;

    const-string v1, "CBC"

    const-string v2, "TEA"

    const-string v3, "SHA0"

    const-string v4, "MD2"

    const-string v5, "MD4"

    const-string v6, "RIPEMD"

    const-string v7, "NULL"

    const-string v8, "RC4"

    const-string v9, "DES"

    const-string v10, "DESX"

    const-string v11, "DES40"

    const-string v12, "RC2"

    const-string v13, "MD5"

    const-string v14, "ANON"

    const-string v15, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c/b/b;->e:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljavax/net/ssl/SSLContext;
    .locals 2

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
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/huawei/hms/framework/network/grs/c/b/b;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/huawei/hms/framework/network/grs/c/b/b;->c(Ljavax/net/ssl/SSLSocket;)Z

    :cond_1
    return-void
.end method

.method private static a(Ljavax/net/ssl/SSLSocket;Z)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le p1, v3, :cond_1

    sget-object p1, Lcom/huawei/hms/framework/network/grs/c/b/b;->e:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c/b/b;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c/b/b;->c:[Ljava/lang/String;

    :goto_0
    array-length v3, v1

    move v4, v0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v3, :cond_6

    aget-object v6, v1, v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    array-length v8, p1

    move v9, v0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, p1, v9

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    move v5, v0

    :goto_3
    if-nez v5, :cond_5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return v5

    :cond_7
    return v0
.end method

.method public static b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before filter algriom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSLUtil"

    invoke-static {v3, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/huawei/hms/framework/network/grs/c/b/b;->b:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/huawei/hms/framework/network/grs/c/b/b;->a:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    array-length v6, v1

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v1, v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-le v10, v11, :cond_1

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_1
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after filter algriom: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static c(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/hms/framework/network/grs/c/b/b;->a(Ljavax/net/ssl/SSLSocket;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Ljavax/net/ssl/SSLSocket;)V
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

.method public static e(Ljavax/net/ssl/SSLSocket;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/huawei/hms/framework/network/grs/c/b/b;->d(Ljavax/net/ssl/SSLSocket;)V

    invoke-static {p0}, Lcom/huawei/hms/framework/network/grs/c/b/b;->a(Ljavax/net/ssl/SSLSocket;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "SSLUtil"

    const-string v1, "current platform level is{%d},protocols is{%s} and safeCipherSuites is{%s}"

    invoke-static {p0, v1, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
