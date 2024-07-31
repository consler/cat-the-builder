.class public final Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesGcmSivKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesGcmSivKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesGcmSivKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

.field public static final KEY_SIZE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keySize_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 286
    new-instance v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;-><init>()V

    .line 289
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
    sput-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    .line 290
    const-class v1, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 292
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->setKeySize(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->clearKeySize()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->setVersion(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->clearVersion()V

    return-void
.end method

.method private clearKeySize()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->keySize_:I

    .line 45
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->version_:I

    .line 71
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
    .locals 1

    .line 295
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;
    .locals 1

    .line 148
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 125
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 131
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 89
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 96
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 136
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 143
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 113
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 120
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 76
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 83
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 101
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;
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

    .line 108
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;",
            ">;"
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

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

    .line 37
    iput p1, p0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->keySize_:I

    .line 38
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

    .line 63
    iput p1, p0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->version_:I

    .line 64
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

    .line 236
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 276
    :pswitch_0
    return-object v2

    .line 273
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 258
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 259
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;>;"
    if-nez v0, :cond_1

    .line 260
    const-class v1, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    monitor-enter v1

    .line 261
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 262
    if-nez v0, :cond_0

    .line 263
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 266
    sput-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 268
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 270
    :cond_1
    :goto_0
    return-object v0

    .line 255
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    return-object v0

    .line 244
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "version_"

    aput-object v3, v0, v2

    const-string v2, "keySize_"

    aput-object v2, v0, v1

    .line 248
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b"

    .line 251
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 241
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat$1;)V

    return-object v0

    .line 238
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;-><init>()V

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

    .line 29
    iget v0, p0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->keySize_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;->version_:I

    return v0
.end method
