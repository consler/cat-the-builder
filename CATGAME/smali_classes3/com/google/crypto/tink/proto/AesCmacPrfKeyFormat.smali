.class public final Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCmacPrfKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

.field public static final KEY_SIZE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private keySize_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 276
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;-><init>()V

    .line 279
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
    sput-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    .line 280
    const-class v1, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 282
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->setKeySize(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->clearKeySize()V

    return-void
.end method

.method private clearKeySize()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->keySize_:I

    .line 66
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->version_:I

    .line 40
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
    .locals 1

    .line 285
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;
    .locals 1

    .line 143
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 120
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 126
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 84
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 91
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 131
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 138
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 108
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 115
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 71
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 78
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 96
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;
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

    .line 103
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;",
            ">;"
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeySize(I)V
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

    .line 58
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->keySize_:I

    .line 59
    return-void
.end method

.method private setVersion(I)V
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
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->version_:I

    .line 33
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

    .line 226
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 266
    :pswitch_0
    return-object v2

    .line 263
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 248
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 249
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;>;"
    if-nez v0, :cond_1

    .line 250
    const-class v1, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    monitor-enter v1

    .line 251
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 252
    if-nez v0, :cond_0

    .line 253
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 256
    sput-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 258
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 260
    :cond_1
    :goto_0
    return-object v0

    .line 245
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    return-object v0

    .line 234
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "keySize_"

    aput-object v3, v0, v2

    const-string v2, "version_"

    aput-object v2, v0, v1

    .line 238
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b"

    .line 241
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 231
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat$1;)V

    return-object v0

    .line 228
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;-><init>()V

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

.method public getKeySize()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->keySize_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacPrfKeyFormat;->version_:I

    return v0
.end method
