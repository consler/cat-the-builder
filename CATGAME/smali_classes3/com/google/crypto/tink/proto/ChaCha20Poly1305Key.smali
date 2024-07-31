.class public final Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "ChaCha20Poly1305Key.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;",
        "Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 290
    new-instance v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;-><init>()V

    .line 293
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    sput-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    .line 294
    const-class v1, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 296
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->clearKeyValue()V

    return-void
.end method

.method private clearKeyValue()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->getDefaultInstance()Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 74
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->version_:I

    .line 47
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    .locals 1

    .line 299
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;
    .locals 1

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 128
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 134
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 92
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 99
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 139
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 146
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 116
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 123
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 79
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 86
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 104
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
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

    .line 111
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;",
            ">;"
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
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

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iput-object p1, p0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 67
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

    .line 39
    iput p1, p0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->version_:I

    .line 40
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

    .line 240
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 280
    :pswitch_0
    return-object v2

    .line 277
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 262
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 263
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;>;"
    if-nez v0, :cond_1

    .line 264
    const-class v1, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    monitor-enter v1

    .line 265
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 266
    if-nez v0, :cond_0

    .line 267
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 270
    sput-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 272
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 274
    :cond_1
    :goto_0
    return-object v0

    .line 259
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    return-object v0

    .line 248
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "version_"

    aput-object v3, v0, v2

    const-string v2, "keyValue_"

    aput-object v2, v0, v1

    .line 252
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n"

    .line 255
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 245
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;-><init>(Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$1;)V

    return-object v0

    .line 242
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;-><init>()V

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

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->version_:I

    return v0
.end method
