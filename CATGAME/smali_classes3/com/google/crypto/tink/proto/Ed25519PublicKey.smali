.class public final Lcom/google/crypto/tink/proto/Ed25519PublicKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "Ed25519PublicKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/Ed25519PublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/Ed25519PublicKey;",
        "Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/Ed25519PublicKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/Ed25519PublicKey;",
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

    .line 346
    new-instance v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;-><init>()V

    .line 349
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/Ed25519PublicKey;
    sput-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    .line 350
    const-class v1, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 352
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/Ed25519PublicKey;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/Ed25519PublicKey;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/Ed25519PublicKey;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Ed25519PublicKey;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/Ed25519PublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/Ed25519PublicKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Ed25519PublicKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/Ed25519PublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->clearKeyValue()V

    return-void
.end method

.method private clearKeyValue()V
    .locals 1

    .line 101
    invoke-static {}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 102
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->version_:I

    .line 57
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/Ed25519PublicKey;
    .locals 1

    .line 355
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;
    .locals 1

    .line 179
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/Ed25519PublicKey;)Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/Ed25519PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 156
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 162
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 120
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 127
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 167
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 174
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 144
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 107
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 114
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 132
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Ed25519PublicKey;
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

    .line 139
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/Ed25519PublicKey;",
            ">;"
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

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

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iput-object p1, p0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 89
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

    .line 45
    iput p1, p0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->version_:I

    .line 46
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

    .line 296
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 339
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 336
    :pswitch_0
    return-object v2

    .line 333
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 318
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 319
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/Ed25519PublicKey;>;"
    if-nez v0, :cond_1

    .line 320
    const-class v1, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    monitor-enter v1

    .line 321
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 322
    if-nez v0, :cond_0

    .line 323
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 326
    sput-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 328
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 330
    :cond_1
    :goto_0
    return-object v0

    .line 315
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/Ed25519PublicKey;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    return-object v0

    .line 304
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "version_"

    aput-object v3, v0, v2

    const-string v2, "keyValue_"

    aput-object v2, v0, v1

    .line 308
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n"

    .line 311
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 301
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/Ed25519PublicKey$Builder;-><init>(Lcom/google/crypto/tink/proto/Ed25519PublicKey$1;)V

    return-object v0

    .line 298
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/Ed25519PublicKey;-><init>()V

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

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/crypto/tink/proto/Ed25519PublicKey;->version_:I

    return v0
.end method
