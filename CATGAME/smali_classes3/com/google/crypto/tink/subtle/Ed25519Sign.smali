.class public final Lcom/google/crypto/tink/subtle/Ed25519Sign;
.super Ljava/lang/Object;
.source "Ed25519Sign.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;
    }
.end annotation


# static fields
.field public static final SECRET_KEY_LEN:I = 0x20


# instance fields
.field private final hashedPrivateKey:[B

.field private final publicKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .param p1, "privateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 57
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519;->getHashedScalar([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519Sign;->hashedPrivateKey:[B

    .line 58
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Ed25519;->scalarMultWithBaseToBytes([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519Sign;->publicKey:[B

    .line 59
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Given private key\'s length is not %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public sign([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519Sign;->publicKey:[B

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519Sign;->hashedPrivateKey:[B

    invoke-static {p1, v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->sign([B[B[B)[B

    move-result-object v0

    return-object v0
.end method
