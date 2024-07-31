.class public final Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "RsaSsaPkcs1KeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;",
        "Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

.field public static final MODULUS_SIZE_IN_BITS_FIELD_NUMBER:I = 0x2

.field public static final PARAMS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_EXPONENT_FIELD_NUMBER:I = 0x3


# instance fields
.field private modulusSizeInBits_:I

.field private params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

.field private publicExponent_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 464
    new-instance v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;-><init>()V

    .line 467
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    sput-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    .line 468
    const-class v1, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 470
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->publicExponent_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 16
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->setParams(Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->mergeParams(Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->clearParams()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->setModulusSizeInBits(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->clearModulusSizeInBits()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->setPublicExponent(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->clearPublicExponent()V

    return-void
.end method

.method private clearModulusSizeInBits()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->modulusSizeInBits_:I

    .line 119
    return-void
.end method

.method private clearParams()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    .line 81
    return-void
.end method

.method private clearPublicExponent()V
    .locals 1

    .line 157
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->getPublicExponent()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->publicExponent_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 158
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    .locals 1

    .line 473
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    .line 66
    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;->newBuilder(Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    goto :goto_0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    .line 71
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;
    .locals 1

    .line 235
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 212
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 218
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 176
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 183
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 223
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 230
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 200
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 207
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 163
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 170
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 188
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;
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

    .line 195
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;",
            ">;"
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setModulusSizeInBits(I)V
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

    .line 107
    iput p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->modulusSizeInBits_:I

    .line 108
    return-void
.end method

.method private setParams(Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    .line 52
    return-void
.end method

.method private setPublicExponent(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
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

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->publicExponent_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 147
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

    .line 413
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 454
    :pswitch_0
    return-object v2

    .line 451
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 436
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 437
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;>;"
    if-nez v0, :cond_1

    .line 438
    const-class v1, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    monitor-enter v1

    .line 439
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 440
    if-nez v0, :cond_0

    .line 441
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 444
    sput-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 446
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 448
    :cond_1
    :goto_0
    return-object v0

    .line 433
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    return-object v0

    .line 421
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "params_"

    aput-object v3, v0, v2

    const-string v2, "modulusSizeInBits_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "publicExponent_"

    aput-object v2, v0, v1

    .line 426
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\n"

    .line 429
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 418
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat$1;)V

    return-object v0

    .line 415
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;-><init>()V

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

.method public getModulusSizeInBits()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->modulusSizeInBits_:I

    return v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPublicExponent()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->publicExponent_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public hasParams()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1KeyFormat;->params_:Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
