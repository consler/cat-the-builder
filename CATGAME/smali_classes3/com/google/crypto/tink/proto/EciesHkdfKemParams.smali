.class public final Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "EciesHkdfKemParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/EciesHkdfKemParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/EciesHkdfKemParams;",
        "Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/EciesHkdfKemParamsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURVE_TYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

.field public static final HKDF_HASH_TYPE_FIELD_NUMBER:I = 0x2

.field public static final HKDF_SALT_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/EciesHkdfKemParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private curveType_:I

.field private hkdfHashType_:I

.field private hkdfSalt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 513
    new-instance v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;-><init>()V

    .line 516
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    sput-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    .line 517
    const-class v1, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 519
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfSalt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->setCurveTypeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;Lcom/google/crypto/tink/proto/EllipticCurveType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/EllipticCurveType;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->setCurveType(Lcom/google/crypto/tink/proto/EllipticCurveType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->clearCurveType()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->setHkdfHashTypeValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;Lcom/google/crypto/tink/proto/HashType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HashType;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->setHkdfHashType(Lcom/google/crypto/tink/proto/HashType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->clearHkdfHashType()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->setHkdfSalt(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->clearHkdfSalt()V

    return-void
.end method

.method private clearCurveType()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->curveType_:I

    .line 81
    return-void
.end method

.method private clearHkdfHashType()V
    .locals 1

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfHashType_:I

    .line 143
    return-void
.end method

.method private clearHkdfSalt()V
    .locals 1

    .line 181
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->getHkdfSalt()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfSalt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 182
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .locals 1

    .line 522
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;
    .locals 1

    .line 259
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 236
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 242
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 200
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 207
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 247
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 254
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 224
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 231
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 187
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 194
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 212
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
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

    .line 219
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/EciesHkdfKemParams;",
            ">;"
        }
    .end annotation

    .line 528
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurveType(Lcom/google/crypto/tink/proto/EllipticCurveType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/EllipticCurveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EllipticCurveType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->curveType_:I

    .line 70
    return-void
.end method

.method private setCurveTypeValue(I)V
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

    .line 57
    iput p1, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->curveType_:I

    .line 58
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

    .line 130
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HashType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfHashType_:I

    .line 132
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

    .line 119
    iput p1, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfHashType_:I

    .line 120
    return-void
.end method

.method private setHkdfSalt(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    iput-object p1, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfSalt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 171
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

    .line 462
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 503
    :pswitch_0
    return-object v2

    .line 500
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 485
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 486
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/EciesHkdfKemParams;>;"
    if-nez v0, :cond_1

    .line 487
    const-class v1, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    monitor-enter v1

    .line 488
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 489
    if-nez v0, :cond_0

    .line 490
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 493
    sput-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 495
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 497
    :cond_1
    :goto_0
    return-object v0

    .line 482
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/EciesHkdfKemParams;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    return-object v0

    .line 470
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "curveType_"

    aput-object v3, v0, v2

    const-string v2, "hkdfHashType_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hkdfSalt_"

    aput-object v2, v0, v1

    .line 475
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    .line 478
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 467
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;-><init>(Lcom/google/crypto/tink/proto/EciesHkdfKemParams$1;)V

    return-object v0

    .line 464
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;-><init>()V

    return-object v0

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

.method public getCurveType()Lcom/google/crypto/tink/proto/EllipticCurveType;
    .locals 2

    .line 45
    iget v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->curveType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/EllipticCurveType;->forNumber(I)Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object v0

    .line 46
    .local v0, "result":Lcom/google/crypto/tink/proto/EllipticCurveType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/crypto/tink/proto/EllipticCurveType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/EllipticCurveType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getCurveTypeValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->curveType_:I

    return v0
.end method

.method public getHkdfHashType()Lcom/google/crypto/tink/proto/HashType;
    .locals 2

    .line 107
    iget v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfHashType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HashType;->forNumber(I)Lcom/google/crypto/tink/proto/HashType;

    move-result-object v0

    .line 108
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

    .line 95
    iget v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfHashType_:I

    return v0
.end method

.method public getHkdfSalt()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->hkdfSalt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method
