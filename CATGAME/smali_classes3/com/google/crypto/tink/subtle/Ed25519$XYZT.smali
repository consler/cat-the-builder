.class Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XYZT"
.end annotation


# instance fields
.field final t:[J

.field final xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 174
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [J

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;[J)V

    .line 175
    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V
    .locals 0
    .param p1, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialXYZT"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>()V

    .line 184
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    .line 185
    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;[J)V
    .locals 0
    .param p1, "xyz"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .param p2, "t"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xyz",
            "t"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    .line 179
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    .line 180
    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p1, "x1"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    .line 168
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .locals 1
    .param p0, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->fromBytesNegateVarTime([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v0

    return-object v0
.end method

.method private static fromBytesNegateVarTime([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .locals 11
    .param p0, "s"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 203
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 204
    .local v1, "x":[J
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v2

    .line 205
    .local v2, "y":[J
    new-array v3, v0, [J

    .local v3, "z":[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    aput-wide v5, v3, v4

    .line 206
    new-array v4, v0, [J

    .line 207
    .local v4, "t":[J
    new-array v5, v0, [J

    .line 208
    .local v5, "u":[J
    new-array v6, v0, [J

    .line 209
    .local v6, "v":[J
    new-array v7, v0, [J

    .line 210
    .local v7, "vxx":[J
    new-array v8, v0, [J

    .line 211
    .local v8, "check":[J
    invoke-static {v5, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 212
    sget-object v9, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D:[J

    invoke-static {v6, v5, v9}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 213
    invoke-static {v5, v5, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 214
    invoke-static {v6, v6, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 216
    new-array v0, v0, [J

    .line 217
    .local v0, "v3":[J
    invoke-static {v0, v6}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 218
    invoke-static {v0, v0, v6}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 219
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 220
    invoke-static {v1, v1, v6}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 221
    invoke-static {v1, v1, v5}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 223
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->access$100([J[J)V

    .line 224
    invoke-static {v1, v1, v0}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 225
    invoke-static {v1, v1, v5}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 227
    invoke-static {v7, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 228
    invoke-static {v7, v7, v6}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 229
    invoke-static {v8, v7, v5}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 230
    invoke-static {v8}, Lcom/google/crypto/tink/subtle/Ed25519;->access$200([J)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 231
    invoke-static {v8, v7, v5}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 232
    invoke-static {v8}, Lcom/google/crypto/tink/subtle/Ed25519;->access$200([J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 236
    sget-object v9, Lcom/google/crypto/tink/subtle/Ed25519Constants;->SQRTM1:[J

    invoke-static {v1, v1, v9}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance v9, Ljava/security/GeneralSecurityException;

    const-string v10, "Cannot convert given bytes to extended projective coordinates. No square root exists for modulo 2^255-19"

    invoke-direct {v9, v10}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 239
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519;->access$200([J)Z

    move-result v9

    const/16 v10, 0x1f

    if-nez v9, :cond_3

    aget-byte v9, p0, v10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x7

    if-nez v9, :cond_2

    goto :goto_1

    .line 240
    :cond_2
    new-instance v9, Ljava/security/GeneralSecurityException;

    const-string v10, "Cannot convert given bytes to extended projective coordinates. Computed x is zero and encoded x\'s least significant bit is not zero"

    invoke-direct {v9, v10}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 243
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519;->access$000([J)I

    move-result v9

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x7

    if-ne v9, v10, :cond_4

    .line 244
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->access$300([J[J)V

    .line 247
    :cond_4
    invoke-static {v4, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 248
    new-instance v9, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    new-instance v10, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v10, v1, v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>([J[J[J)V

    invoke-direct {v9, v10, v4}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;[J)V

    return-object v9
.end method

.method private static fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .locals 3
    .param p0, "out"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p1, "in"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v0, v0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 192
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v0, v0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 193
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v0, v0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 194
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 195
    return-object p0
.end method
