.class public final Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "EcdsaPrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/EcdsaPrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/EcdsaPrivateKey;",
        "Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/EcdsaPrivateKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/EcdsaPrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 478
    new-instance v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;-><init>()V

    .line 481
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    sput-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    .line 482
    const-class v1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 484
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->setPublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->mergePublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->clearPublicKey()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->clearKeyValue()V

    return-void
.end method

.method private clearKeyValue()V
    .locals 1

    .line 164
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 165
    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 123
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    .line 57
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1

    .line 487
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method private mergePublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/EcdsaPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 108
    invoke-static {v0}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->newBuilder(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    goto :goto_0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 113
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;
    .locals 1

    .line 242
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 219
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 225
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 183
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 190
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 230
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 237
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 207
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 214
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 170
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 177
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 195
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
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

    .line 202
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/EcdsaPrivateKey;",
            ">;"
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

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

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 153
    return-void
.end method

.method private setPublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/EcdsaPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 94
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
    iput p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

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

    .line 427
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 468
    :pswitch_0
    return-object v2

    .line 465
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 450
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 451
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/EcdsaPrivateKey;>;"
    if-nez v0, :cond_1

    .line 452
    const-class v1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    monitor-enter v1

    .line 453
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 454
    if-nez v0, :cond_0

    .line 455
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 458
    sput-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 460
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 462
    :cond_1
    :goto_0
    return-object v0

    .line 447
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/EcdsaPrivateKey;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0

    .line 435
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "version_"

    aput-object v3, v0, v2

    const-string v2, "publicKey_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "keyValue_"

    aput-object v2, v0, v1

    .line 440
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    .line 443
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 432
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/proto/EcdsaPrivateKey$1;)V

    return-object v0

    .line 429
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;-><init>()V

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

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/proto/EcdsaPublicKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    return v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
