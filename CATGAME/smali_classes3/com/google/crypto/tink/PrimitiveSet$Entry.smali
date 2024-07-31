.class public final Lcom/google/crypto/tink/PrimitiveSet$Entry;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/PrimitiveSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final identifier:[B

.field private final keyId:I

.field private final outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

.field private final primitive:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final status:Lcom/google/crypto/tink/proto/KeyStatusType;


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/proto/OutputPrefixType;I)V
    .locals 1
    .param p2, "identifier"    # [B
    .param p3, "status"    # Lcom/google/crypto/tink/proto/KeyStatusType;
    .param p4, "outputPrefixType"    # Lcom/google/crypto/tink/proto/OutputPrefixType;
    .param p5, "keyId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primitive",
            "identifier",
            "status",
            "outputPrefixType",
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/crypto/tink/proto/KeyStatusType;",
            "Lcom/google/crypto/tink/proto/OutputPrefixType;",
            "I)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    .local p1, "primitive":Ljava/lang/Object;, "TP;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->primitive:Ljava/lang/Object;

    .line 76
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->identifier:[B

    .line 77
    iput-object p3, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->status:Lcom/google/crypto/tink/proto/KeyStatusType;

    .line 78
    iput-object p4, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 79
    iput p5, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->keyId:I

    .line 80
    return-void
.end method


# virtual methods
.method public final getIdentifier()[B
    .locals 2

    .line 95
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->identifier:[B

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyId()I
    .locals 1

    .line 103
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->keyId:I

    return v0
.end method

.method public getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 1

    .line 91
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0
.end method

.method public getPrimitive()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->primitive:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;
    .locals 1

    .line 87
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->status:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object v0
.end method
