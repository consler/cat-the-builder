.class final Lcom/google/crypto/tink/subtle/Ed25519Constants;
.super Ljava/lang/Object;
.source "Ed25519Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    }
.end annotation


# static fields
.field static final B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

.field static final B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

.field static final D:[J

.field static final D2:[J

.field private static final D2_BI:Ljava/math/BigInteger;

.field private static final D_BI:Ljava/math/BigInteger;

.field private static final P_BI:Ljava/math/BigInteger;

.field static final SQRTM1:[J

.field private static final SQRTM1_BI:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 40
    nop

    .line 41
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v3, 0x13

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    .line 42
    nop

    .line 43
    const-wide/32 v2, -0x1db41

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/32 v3, 0x1db42

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    .line 44
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D2_BI:Ljava/math/BigInteger;

    .line 45
    nop

    .line 46
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519Constants;->SQRTM1_BI:Ljava/math/BigInteger;

    .line 103
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;-><init>(Lcom/google/crypto/tink/subtle/Ed25519Constants$1;)V

    .line 104
    .local v0, "b":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$102(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 105
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->recoverX(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$202(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 107
    sget-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D:[J

    .line 108
    sget-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D2_BI:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D2:[J

    .line 109
    sget-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->SQRTM1_BI:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->SQRTM1:[J

    .line 111
    move-object v1, v0

    .line 112
    .local v1, "bi":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-class v3, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sput-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x8

    if-ge v2, v3, :cond_2

    .line 114
    move-object v3, v1

    .line 115
    .local v3, "bij":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 116
    sget-object v6, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v6, v6, v2

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->getCachedXYT(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    move-result-object v7

    aput-object v7, v6, v5

    .line 117
    invoke-static {v3, v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->edwards(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;

    move-result-object v3

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 119
    .end local v5    # "j":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v4, :cond_1

    .line 120
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->edwards(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;

    move-result-object v1

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 113
    .end local v3    # "bij":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_2
    move-object v1, v0

    .line 124
    invoke-static {v0, v0}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->edwards(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;

    move-result-object v2

    .line 125
    .local v2, "b2":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    new-array v3, v4, [Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sput-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    .line 126
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v4, :cond_3

    .line 127
    sget-object v5, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->getCachedXYT(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    move-result-object v6

    aput-object v6, v5, v3

    .line 128
    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->edwards(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;

    move-result-object v1

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 130
    .end local v0    # "b":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .end local v1    # "bi":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .end local v2    # "b2":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .end local v3    # "i":I
    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static edwards(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .locals 5
    .param p0, "a"    # Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .param p1, "b"    # Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;-><init>(Lcom/google/crypto/tink/subtle/Ed25519Constants$1;)V

    .line 71
    .local v0, "o":Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    sget-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 72
    .local v1, "xxyy":Ljava/math/BigInteger;
    nop

    .line 73
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 74
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    .line 75
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$202(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 76
    nop

    .line 77
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 78
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    .line 79
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 76
    invoke-static {v0, v2}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$102(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 80
    return-object v0
.end method

.method private static getCachedXYT(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    .locals 5
    .param p0, "p"    # Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    .line 97
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v1

    .line 98
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D2_BI:Ljava/math/BigInteger;

    .line 99
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$200(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;->access$100(Lcom/google/crypto/tink/subtle/Ed25519Constants$Point;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Ed25519Constants;->toLittleEndian(Ljava/math/BigInteger;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>([J[J[J)V

    .line 96
    return-object v0
.end method

.method private static recoverX(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 55
    nop

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 57
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D_BI:Ljava/math/BigInteger;

    .line 58
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 59
    .local v1, "xx":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 60
    .local v2, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/crypto/tink/subtle/Ed25519Constants;->SQRTM1_BI:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/google/crypto/tink/subtle/Ed25519Constants;->P_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 66
    :cond_1
    return-object v2
.end method

.method private static toLittleEndian(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "n"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 84
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 85
    .local v1, "b":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 86
    .local v2, "nBytes":[B
    array-length v3, v2

    sub-int/2addr v0, v3

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_0

    .line 88
    aget-byte v3, v1, v0

    .line 89
    .local v3, "t":B
    array-length v4, v1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v1, v4

    aput-byte v4, v1, v0

    .line 90
    array-length v4, v1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-byte v3, v1, v4

    .line 87
    .end local v3    # "t":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
