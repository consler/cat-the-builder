.class public Lcom/google/crypto/tink/subtle/prf/PrfImpl;
.super Ljava/lang/Object;
.source "PrfImpl.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final prfStreamer:Lcom/google/crypto/tink/subtle/prf/StreamingPrf;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/subtle/prf/StreamingPrf;)V
    .locals 0
    .param p1, "prfStreamer"    # Lcom/google/crypto/tink/subtle/prf/StreamingPrf;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prfStreamer"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/prf/PrfImpl;->prfStreamer:Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    .line 29
    return-void
.end method

.method private static readBytesFromStream(Ljava/io/InputStream;I)[B
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 40
    :try_start_0
    new-array v0, p1, [B

    .line 41
    .local v0, "output":[B
    const/4 v1, 0x0

    .line 42
    .local v1, "offset":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 43
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 44
    .local v2, "bytesRead":I
    if-lez v2, :cond_0

    .line 48
    add-int/2addr v1, v2

    .line 49
    .end local v2    # "bytesRead":I
    goto :goto_0

    .line 45
    .restart local v2    # "bytesRead":I
    :cond_0
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "Provided StreamingPrf terminated before providing requested number of bytes."

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "stream":Ljava/io/InputStream;
    .end local p1    # "outputLength":I
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v2    # "bytesRead":I
    .restart local p0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "outputLength":I
    :cond_1
    return-object v0

    .line 51
    .end local v0    # "output":[B
    .end local v1    # "offset":I
    :catch_0
    move-exception v0

    .line 52
    .local v0, "exception":Ljava/io/IOException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static wrap(Lcom/google/crypto/tink/subtle/prf/StreamingPrf;)Lcom/google/crypto/tink/subtle/prf/PrfImpl;
    .locals 1
    .param p0, "prfStreamer"    # Lcom/google/crypto/tink/subtle/prf/StreamingPrf;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prfStreamer"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/crypto/tink/subtle/prf/PrfImpl;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/prf/PrfImpl;-><init>(Lcom/google/crypto/tink/subtle/prf/StreamingPrf;)V

    return-object v0
.end method


# virtual methods
.method public compute([BI)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "outputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 58
    if-eqz p1, :cond_1

    .line 61
    if-lez p2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/prf/PrfImpl;->prfStreamer:Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;->computePrf([B)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .local v0, "prfStream":Ljava/io/InputStream;
    invoke-static {v0, p2}, Lcom/google/crypto/tink/subtle/prf/PrfImpl;->readBytesFromStream(Ljava/io/InputStream;I)[B

    move-result-object v1

    return-object v1

    .line 62
    .end local v0    # "prfStream":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Invalid outputLength specified."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Invalid input provided."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
