.class final Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "varyHeaders"    # Lcom/koushikdutta/async/http/cache/RawHeaders;
    .param p3, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p4, "responseHeaders"    # Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    .line 605
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 606
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 607
    iput-object p4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    .line 621
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 622
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 624
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, "reader":Lcom/koushikdutta/async/http/cache/StrictLineReader;
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lcom/koushikdutta/async/http/cache/StrictLineReader;

    sget-object v5, Lcom/koushikdutta/async/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v4

    .line 570
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    .line 571
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 572
    new-instance v4, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 573
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readInt()I

    move-result v4

    .line 574
    .local v4, "varyRequestHeaderLineCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 575
    iget-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/koushikdutta/async/http/cache/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 574
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 578
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 579
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/http/cache/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readInt()I

    move-result v5

    .line 581
    .local v5, "responseHeaderLineCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 582
    iget-object v7, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/cache/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 581
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 594
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    .line 595
    iput-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 596
    iput-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    .end local v4    # "varyRequestHeaderLineCount":I
    .end local v5    # "responseHeaderLineCount":I
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 600
    nop

    .line 601
    return-void

    .line 599
    :catchall_0
    move-exception v4

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    throw v4
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    .line 511
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    .line 511
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method

.method private isHttps()Z
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Lcom/koushikdutta/async/http/cache/StrictLineReader;)[Ljava/security/cert/Certificate;
    .locals 7
    .param p1, "reader"    # Lcom/koushikdutta/async/http/cache/StrictLineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readInt()I

    move-result v0

    .line 660
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 661
    const/4 v1, 0x0

    return-object v1

    .line 664
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 665
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-array v2, v0, [Ljava/security/cert/Certificate;

    .line 666
    .local v2, "result":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 667
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "line":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 669
    .local v5, "bytes":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytes":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 672
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 673
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "result":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "certificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    if-nez p2, :cond_0

    .line 680
    const-string v0, "-1\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 681
    return-void

    .line 684
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 685
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p2, v3

    .line 686
    .local v4, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    .line 687
    .local v5, "bytes":[B
    invoke-static {v5, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, "line":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v4    # "certificate":Ljava/security/cert/Certificate;
    .end local v5    # "bytes":[B
    .end local v6    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 692
    :cond_1
    nop

    .line 693
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public matches(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 697
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 698
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 700
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0
.end method

.method public writeTo(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;)V
    .locals 7
    .param p1, "editor"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->newOutputStream(I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 628
    .local v0, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/koushikdutta/async/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 630
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 633
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v4

    const-string v5, ": "

    if-ge v2, v4, :cond_0

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v6, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 635
    invoke-virtual {v5, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 634
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 640
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v6, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 642
    invoke-virtual {v6, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 646
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 649
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 651
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 652
    return-void
.end method
