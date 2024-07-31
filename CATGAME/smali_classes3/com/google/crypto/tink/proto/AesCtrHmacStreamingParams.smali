.class public final Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCtrHmacStreamingParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParamsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CIPHERTEXT_SEGMENT_SIZE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

.field public static final DERIVED_KEY_SIZE_FIELD_NUMBER:I = 0x2

.field public static final HKDF_HASH_TYPE_FIELD_NUMBER:I = 0x3

.field public static final HMAC_PARAMS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ciphertextSegmentSize_:I

.field private derivedKeySize_:I

.field private hkdfHashType_:I

.field private hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 567
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;-><init>()V

    .line 570
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    sput-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    .line 571
    const-class v1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 573
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->setCiphertextSegmentSize(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->clearHmacParams()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->clearCiphertextSegmentSize()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->setDerivedKeySize(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->clearDerivedKeySize()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->setHkdfHashTypeValue(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;Lcom/google/crypto/tink/proto/HashType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HashType;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->setHkdfHashType(Lcom/google/crypto/tink/proto/HashType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->clearHkdfHashType()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;Lcom/google/crypto/tink/proto/HmacParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HmacParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->setHmacParams(Lcom/google/crypto/tink/proto/HmacParams;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;Lcom/google/crypto/tink/proto/HmacParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HmacParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->mergeHmacParams(Lcom/google/crypto/tink/proto/HmacParams;)V

    return-void
.end method

.method private clearCiphertextSegmentSize()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->ciphertextSegmentSize_:I

    .line 40
    return-void
.end method

.method private clearDerivedKeySize()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->derivedKeySize_:I

    .line 78
    return-void
.end method

.method private clearHkdfHashType()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hkdfHashType_:I

    .line 140
    return-void
.end method

.method private clearHmacParams()V
    .locals 1

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    .line 206
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1

    .line 576
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method private mergeHmacParams(Lcom/google/crypto/tink/proto/HmacParams;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HmacParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    .line 191
    invoke-static {v0}, Lcom/google/crypto/tink/proto/HmacParams;->newBuilder(Lcom/google/crypto/tink/proto/HmacParams;)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacParams$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacParams;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    goto :goto_0

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    .line 196
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;
    .locals 1

    .line 283
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;",
            ">;"
        }
    .end annotation

    .line 582
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCiphertextSegmentSize(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 32
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->ciphertextSegmentSize_:I

    .line 33
    return-void
.end method

.method private setDerivedKeySize(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->derivedKeySize_:I

    .line 67
    return-void
.end method

.method private setHkdfHashType(Lcom/google/crypto/tink/proto/HashType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HashType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hkdfHashType_:I

    .line 129
    return-void
.end method

.method private setHkdfHashTypeValue(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hkdfHashType_:I

    .line 117
    return-void
.end method

.method private setHmacParams(Lcom/google/crypto/tink/proto/HmacParams;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HmacParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    .line 177
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 560
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 557
    :pswitch_0
    return-object v2

    .line 554
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 539
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 540
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;>;"
    if-nez v0, :cond_1

    .line 541
    const-class v1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    monitor-enter v1

    .line 542
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 543
    if-nez v0, :cond_0

    .line 544
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 547
    sput-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 549
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 551
    :cond_1
    :goto_0
    return-object v0

    .line 536
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    return-object v0

    .line 523
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ciphertextSegmentSize_"

    aput-object v3, v0, v2

    const-string v2, "derivedKeySize_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hkdfHashType_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hmacParams_"

    aput-object v2, v0, v1

    .line 529
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000c\u0004\t"

    .line 532
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 520
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$1;)V

    return-object v0

    .line 517
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCiphertextSegmentSize()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->ciphertextSegmentSize_:I

    return v0
.end method

.method public getDerivedKeySize()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->derivedKeySize_:I

    return v0
.end method

.method public getHkdfHashType()Lcom/google/crypto/tink/proto/HashType;
    .locals 2

    .line 104
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hkdfHashType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HashType;->forNumber(I)Lcom/google/crypto/tink/proto/HashType;

    move-result-object v0

    .line 105
    .local v0, "result":Lcom/google/crypto/tink/proto/HashType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HashType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getHkdfHashTypeValue()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hkdfHashType_:I

    return v0
.end method

.method public getHmacParams()Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/HmacParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasHmacParams()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->hmacParams_:Lcom/google/crypto/tink/proto/HmacParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
